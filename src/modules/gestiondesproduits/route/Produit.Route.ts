import { createProduit, getProduit, getAllProduit, updateProduit, deleteProduit } from "../controller/Produit.Controller";
import express from "express"

const router = express.Router();

router.post("/", createProduit)

router.get("/:id", getProduit)

router.get("/", getAllProduit)

router.patch("/:id", updateProduit)

router.delete("/:id", deleteProduit)


export {
    router as ProduitRouter
}