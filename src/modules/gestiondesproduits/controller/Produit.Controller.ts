import { AppDataSource } from "../../../configs/data-source"
import { Produit } from "../entity/Produit";
import { Response, Request } from "express";

const produitRepository = AppDataSource.getRepository(Produit);

export const createProduit = async (req: Request, res: Response) => {
    const produit = Produit.create(req.body);

    await produit.save();

    return res.status(201).json(JSON.stringify(produit, null, 2));
}

export const updateProduit = async (req: Request, res: Response) => {
    const { id } = req.params;

    try {
        const produit = await produitRepository.findOneBy({ id: parseInt(id) });

        if (!produit) {
            return res.status(400).json([]);
        }

        Object.assign(produit, req.body);

        await produit.save();

        return res.status(200).json(produit);
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}

export const getProduit = async (req: Request, res: Response) => {
    const { id } = req.params;

    try {

        const produit = await produitRepository.findOne({relations: ["categorie"] ,where: { id: parseInt(id) }});

        if (!produit) {
            return res.status(400).json([])
        }

        return res.status(200).json(produit);

    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}

export const getAllProduit = async (req: Request, res: Response) => {

    try {

        const allProduit = await produitRepository.find({relations: ["categorie"]});

        if (allProduit.length === 0) {
            return res.status(400).json([]);
        }

        return res.status(200).json(allProduit);

    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}

export const deleteProduit = async (req: Request, res: Response) => {
    const { id } = req.params;

    try {
        const produit = await produitRepository.findOneBy({ id: parseInt(id) });

        if (!produit) {
            return res.status(400).json("Le produit n'existe pas...");
        }

        await produit.remove();

        return res.json({ message: "Produit supprimé avec succès" });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}
