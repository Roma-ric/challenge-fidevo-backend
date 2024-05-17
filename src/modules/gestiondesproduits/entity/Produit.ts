import { Entity, BaseEntity, Column, PrimaryGeneratedColumn, OneToMany, JoinColumn, OneToOne } from "typeorm"
import { Image } from "./Image";
import { Categorie } from "./Categorie";

@Entity('Produit')
export class Produit extends BaseEntity{

    @PrimaryGeneratedColumn()
    id: number

    @OneToOne(() => Categorie)
    @JoinColumn({ name: 'categorie_id' })
    categorie: Categorie;

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