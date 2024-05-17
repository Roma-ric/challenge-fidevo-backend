import { Entity, BaseEntity, Column, PrimaryGeneratedColumn, OneToMany, JoinColumn } from "typeorm"
import { Image } from "./Image";

@Entity('Produit')
export class Produit extends BaseEntity{

    @PrimaryGeneratedColumn()
    id: number

    @Column()
    nom: string

    @Column()
    description: string

    @Column()
    imageUrl: string

    @OneToMany(() => Image, image => image.produit)
    images: Image[];

    @Column()
    nouveau_prix: number

    @Column()
    ancien_prix: number

}