import { createImage, updateImage, deleteImage } from "../controller/Image.Controller";
import express from "express"

const router = express.Router();

router.post("/:produitId", createImage)

router.patch("/:id", updateImage)

router.delete("/:id", deleteImage)


export {
    router as ImageRouter
}