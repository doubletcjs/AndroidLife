import org.apache.commons.httpclient.methods.GetMethod
import org.apache.commons.httpclient.HttpClient
import java.io.File

fun main() {
    var client = HttpClient()
    var method = GetMethod("http://img1.mm131.com/pic/946/1.jpg")
    client.executeMethod(method)

    var res = method.responseBody
    method.releaseConnection()

    var file = File("1.jpg")
    file.writeBytes(res)
}