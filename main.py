# 这是一个示例 Python 脚本。
import flask
from gevent import pywsgi

# 按 Shift+F10 执行或将其替换为您的代码。
# 按 双击 Shift 在所有地方搜索类、文件、工具窗口、操作和设置。

app = flask.Flask(__name__)


@app.route("/index", methods=['GET'])
def index():
    return 'hello'


# 按间距中的绿色按钮以运行脚本。
if __name__ == '__main__':
    server = pywsgi.WSGIServer(('0.0.0.0', 726), app)
    server.serve_forever()

# 访问 https://www.jetbrains.com/help/pycharm/ 获取 PyCharm 帮助
