import BaseSchema from '@ioc:Adonis/Lucid/Schema'

export default class Cards extends BaseSchema {
  protected tableName = 'shedules'

  public async up () {
    this.schema.createTable(this.tableName, (table) => {
      table.increments('id')
      table.string("type", 11).notNullable()
      table.string("weigth", 30).notNullable()
      table.string("date", 30).notNullable()
      table.string("city", 30).notNullable()
      table.string("uf", 30).notNullable()
      table.string("address", 30).notNullable()
      table.string("number", 30).notNullable()
      table.timestamp('created_at', { useTz: true }).nullable().defaultTo(this.now())
      table.timestamp('updated_at', { useTz: true }).nullable()
      table.collate('utf8_unicode_ci')
    })
  }

  public async down () {
    this.schema.dropTable(this.tableName)
  }
}
