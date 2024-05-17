import { AppDataSource } from "../../../configs/data-source"
import { Categorie } from "../entity/Categorie";
import { Response, Request } from "express";

const categorieRepository = AppDataSource.getRepository(Categorie);

export const createCategorie = async (req: Request, res: Response) => {
    const categorie = Categorie.create(req.body);

    await categorie.save();

    return res.status(201).json(JSON.stringify(categorie, null, 2));
}

export const updateCategorie = async (req: Request, res: Response) => {
    const { id } = req.params;

    try {
        const categorie = await categorieRepository.findOneBy({ id: parseInt(id) });

        if (!categorie) {
            return res.status(400).json([]);
        }

        Object.assign(categorie, req.body);

        await categorie.save();

        return res.status(200).json(categorie);
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}

export const getCategorie = async (req: Request, res: Response) => {
    const { id } = req.params;

    try {

        const categorie = await categorieRepository.findOne({relations: ["produits"] ,where: { id: parseInt(id) }});

        if (!categorie) {
            return res.status(400).json([])
        }

        return res.status(200).json(categorie);

    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}

export const getAllCategorie = async (req: Request, res: Response) => {

    try {

        const allCategorie = await categorieRepository.find({relations: ["produits"]}) ;

        if (allCategorie.length === 0) {
            return res.status(400).json([]);
        }

        return res.status(200).json(allCategorie);

    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}

export const deleteCategorie = async (req: Request, res: Response) => {
    const { id } = req.params;

    try {
        const categorie = await categorieRepository.findOneBy({ id: parseInt(id) });

        if (!categorie) {
            return res.status(400).json("Le categorie n'existe pas...");
        }

        await categorie.remove();

        return res.json({ message: "Categorie supprimé avec succès" });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}
