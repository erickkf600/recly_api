import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import Shedule from 'App/Models/Shedule'

export default class ShedulesController {

  public async show() {
    return await Shedule.query()
  }
  public async register(ctx: HttpContextContract) {
    const body: any = ctx.request.body()

    try {
      await Shedule.create(body)
      return true
     } catch (error) {
      throw {
        code: 4,
        message: "Ocorreu um erro ao cadastrar",
      };
     }
  }
  public async update(ctx: HttpContextContract) {
    const id: number = ctx.params.id;
    const body: any = ctx.request.body()

    const shedule: any = await Shedule.findOrFail(id)

    shedule.type = body.type || shedule.type
    shedule.weigth = body.weigth || shedule.weigth
    shedule.date = body.date || shedule.date
    shedule.city = body.city || shedule.city
    shedule.uf = body.uf || shedule.uf
    shedule.address = body.address || shedule.address
    shedule.number = body.number || shedule.number

    await shedule.save()
    return shedule;

  }
}

