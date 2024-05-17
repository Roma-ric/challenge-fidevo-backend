import { Entity, BaseEntity, Column, PrimaryGeneratedColumn, JoinColumn, ManyToOne, OneToOne, OneToMany } from "typeorm"
import { Image } from "./Image";
import { Produit } from "./Produit";

@Entity('Categorie')
export class Categorie extends BaseEntity{

    @PrimaryGeneratedColumn()
    id: number

    @Column()
    nom: string

    @Column()
    imageUrl: string
    
    @OneToMany(() => Produit, produit => produit.categorie)
    produits: Produit[];

    @OneToOne(() => Image)
    @JoinColumn({ name: 'image_id' })
    image: Image;
}
