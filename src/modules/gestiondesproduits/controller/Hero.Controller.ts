import { AppDataSource } from "../../../configs/data-source"
import { Hero } from "../entity/Hero";
import { Response, Request } from "express";

const heroRepository = AppDataSource.getRepository(Hero);

export const createHero = async (req: Request, res: Response) => {
    const hero = Hero.create(req.body);

    await hero.save();

    return res.status(201).json(JSON.stringify(hero, null, 2));
}

export const updateHero = async (req: Request, res: Response) => {
    const { id } = req.params;

    try {
        const hero = await heroRepository.findOneBy({ id: parseInt(id) });

        if (!hero) {
            return res.status(400).json([]);
        }

        Object.assign(hero, req.body);

        await hero.save();

        return res.status(200).json(hero);
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}

export const getHero = async (req: Request, res: Response) => {
    const { id } = req.params;

    try {

        const hero = await heroRepository.findOne({relations: ["image"] ,where: { id: parseInt(id) }});

        if (!hero) {
            return res.status(400).json([])
        }

        return res.status(200).json(hero);

    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}

export const getAllHero = async (req: Request, res: Response) => {

    try {

        const allHero = await heroRepository.find({relations: ["image"]});

        if (allHero.length === 0) {
            return res.status(400).json([]);
        }

        return res.status(200).json(allHero);

    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}

export const deleteHero = async (req: Request, res: Response) => {
    const { id } = req.params;

    try {
        const hero = await heroRepository.findOneBy({ id: parseInt(id) });

        if (!hero) {
            return res.status(400).json("le hero n'existe pas...");
        }

        await hero.remove();

        return res.json({ message: "Hero supprimé avec succès" });
    } catch (error) {
        console.error(error);
        return res.status(500).json({ message: "Erreur interne du serveur" });
    }
}
