import { HttpContextContract } from '@ioc:Adonis/Core/HttpContext'
import User from 'App/Models/User'

export default class AuthController {

  public async login(ctx: HttpContextContract) {
    const body: any = ctx.request.body()
    const user: any = await User.query().where('email', body.email).andWhere('password', body.password).firstOrFail()
    return user
  }

  public async register(ctx: HttpContextContract) {
    const body: any = ctx.request.body()

    try {
      await User.create(body)
      return body
     } catch (error) {
      throw {
        code: 4,
        message: "Ocorreu um erro ao cadastrar",
      };
     }
  }
}
