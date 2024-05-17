import { AppDataSource } from "../src/configs/data-source"
import path from "path";
import "reflect-metadata"

// Express
import express from "express";
const app = express();

// Router
import { ProduitRouter } from "./modules/gestiondesproduits/route/Produit.Route";
import { CategorieRouter } from "./modules/gestiondesproduits/route/Categorie.Route";
import { HeroRouter } from "./modules/gestiondesproduits/route/Hero.Route";
import { ImageRouter } from "./modules/gestiondesproduits/route/Image.Route";

AppDataSource.initialize()
    .then(() => {
        console.log("Data Source has been initialized!")

        app.use(express.json());

        // Endpoints start
        app.get("/", (req, res) => {
            res.json("Building ROMAS Gestion API");
        });

        app.use('/upload', express.static(path.join(__dirname, 'upload')));
        app.use('/produits', ProduitRouter);
        app.use('/heros', HeroRouter);
        app.use('/categories', CategorieRouter);
        app.use('/images', ImageRouter);
        // Endpoints end

        app.listen(3000, () => {
            console.log("App is listening on port " + 3000)
        })

    })
    .catch((err) => {
        console.error("Error during Data Source initialization", err)
    })