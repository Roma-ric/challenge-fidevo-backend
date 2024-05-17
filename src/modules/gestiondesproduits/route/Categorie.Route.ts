import { createCategorie, getCategorie, getAllCategorie, updateCategorie, deleteCategorie } from "../controller/Categorie.Controller";
import express from "express"

const router = express.Router();

router.post("/", createCategorie)

router.get("/:id", getCategorie)

router.get("/", getAllCategorie)

router.patch("/:id", updateCategorie)

router.delete("/:id", deleteCategorie)


export {
    router as CategorieRouter
}