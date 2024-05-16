import { AppDataSource } from "../../../configs/data-source";
import { upload } from '../../../configs/multer';
import { Image } from "../entity/Image";
import { Response, Request } from "express";
import { Produit } from "../entity/Produit";
import * as fs from 'fs';
import * as path from 'path';

const imageRepository = AppDataSource.getRepository(Image);
const produitRepository = AppDataSource.getRepository(Produit);

export const createImage = async (req: Request, res: Response) => {
    upload(req, res, async (err: any) => {
        if (err) {
            return res.status(500).json({ message: 'Error uploading file', error: err });
        }
        try {
            const { produitId } = req.params;

            const fichier = req.file?.filename;

            const produit = await produitRepository.findOneBy({ id: parseInt(produitId) });
            if (!produit) {
                return res.json([]);
            }

            const image = Image.create({
                nom: fichier,
                produit: produit
            });

            await imageRepository.save(image);

            return res.status(201).json(image);
        } catch (error) {
            console.error(error);
            return res.status(500).json({ message: "Erreur interne du serveur" });
        }
    });
};

export const updateImage = async (req: Request, res: Response) => {
    upload(req, res, async (err: any) => {
        if (err) {
            return res.status(500).json({ message: 'Error uploading file', error: err });
        }
        const { id } = req.params;

        const newImageFilename = req.file?.filename;

        try {
            const image = await imageRepository.findOneBy({ id: parseInt(id) });
            if (!image) {
                return res.json([]);
            }

            const oldImagePath = path.join(__dirname, '../../../../upload', image.nom);
            if (fs.existsSync(oldImagePath)) {
                fs.unlinkSync(oldImagePath);
            }

            Object.assign(image, {
                nom: newImageFilename
            });

            await imageRepository.save(image);

            return res.status(200).json(image);
        } catch (error) {
            console.error(error);
            return res.status(500).json({ message: "Erreur interne du serveur" });
        }
    });
}

export const deleteImage = async (req: Request, res: Response) => {
    const { id } = req.params;

    try {
        const image = await imageRepository.findOneBy({ id: parseInt(id) });

        if (!image) {
            return res.status(400).json("L'image n'existe pas...");
        }

        const imagePath = path.join(__dirname, '../../../../upload', image.nom);
        if (fs.existsSync(imagePath)) {
            fs.unlinkSync(imagePath);
        }

        await imageRepository.remove(image);

        return res.json({ message: "Image supprimée avec succès" });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}
