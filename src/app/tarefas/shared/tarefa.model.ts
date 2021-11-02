export class Tarefa {
    constructor(
        // com a '?' os atributos se tornam opcionais
        public id?: number,
        public nome?: string,
        public concluida?: boolean
    ){}

    
}