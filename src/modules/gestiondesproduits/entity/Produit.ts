import { Entity, BaseEntity, Column, PrimaryGeneratedColumn, OneToMany, JoinColumn, OneToOne, ManyToOne } from "typeorm"
import { Image } from "./Image";
import { Categorie } from "./Categorie";

@Entity('Produit')
export class Produit extends BaseEntity{

    @PrimaryGeneratedColumn()
    id: number

    @Column()
    nom: string

    @ManyToOne(() => Categorie, categorie => categorie.produits)
    @JoinColumn({ name: 'categorie_id' })
    categorie: Categorie;

    @Column()
    description: string

    @Column({
        length: 1000
    })
    imageUrl: string

    @OneToMany(() => Image, image => image.produit)
    images: Image[];

    @Column()
    nouveau_prix: number

    @Column()
    ancien_prix: number

}