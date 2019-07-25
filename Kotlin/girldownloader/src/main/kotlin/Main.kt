import org.apache.commons.httpclient.HttpClient
import org.apache.commons.httpclient.methods.GetMethod
import java.io.File

fun main() {
    var client = HttpClient()
    var method = GetMethod("http://api.cocoachina.com/uploads//image/20190724/1563957001656559.jpg")
    client.executeMethod(method)

    var res = method.responseBody
    method.releaseConnection()

    var file = File("1.jpg")
    file.writeBytes(res)
}