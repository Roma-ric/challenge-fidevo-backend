import { createHero, getHero, getAllHero, updateHero, deleteHero } from "../controller/Hero.Controller";
import express from "express"

const router = express.Router();

router.post("/", createHero)

router.get("/:id", getHero)

router.get("/", getAllHero)

router.patch("/:id", updateHero)

router.delete("/:id", deleteHero)


export {
    router as HeroRouter
}