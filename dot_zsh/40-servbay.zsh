# =============================================================================
# ServBay 开发环境配置
#
# 此配置由 ServBay 应用自动管理
# 提供: PHP, Node.js, Python, Go, Java, Rust, Ruby, .NET 等开发环境
# 文档: https://support.servbay.com
# =============================================================================

# ServBay PATH 配置
# 包含所有开发工具的路径,按优先级排序
export PATH="\
/Applications/ServBay/script/alias:\
/Applications/ServBay/bin:\
/Applications/ServBay/sbin:\
/Applications/ServBay/script:\
/Applications/ServBay/package/python/current/Python.framework/Versions/Current/bin:\
/Applications/ServBay/package/node/current/bin:\
/Applications/ServBay/package/go/current/bin:\
/Applications/ServBay/package/openjdk/current/bin:\
/Applications/ServBay/package/rust/current/bin:\
/Applications/ServBay/package/ruby/current/bin:\
/Applications/ServBay/package/dotnetsdk/current:\
/Applications/ServBay/package/dotnetsdk/current/tools:\
$HOME/.dotnet/tools:\
/Applications/ServBay/package/mono/current:\
$PATH"

# ServBay 环境检查(可选)
# if [[ ! -d "/Applications/ServBay" ]]; then
#     echo "⚠️  Warning: ServBay not found at /Applications/ServBay"
# fi
