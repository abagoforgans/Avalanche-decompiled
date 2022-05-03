contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_a3f697ba(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(ceil32(arg2.length)) + 101] = address(arg1)
    require ext_code.size(0xbbada894933398c1fca03bdd8b872bb444a483f2)
    delegate 0xbbada894933398c1fca03bdd8b872bb444a483f2.clone(address arg1) with:
         gas gas_remaining wei
        args address(arg1)
    mem[ceil32(ceil32(arg2.length)) + 97] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if not arg2.length:
        emit ProxyCreated(address(arg1), delegate.return_data[12 len 20]);
        return delegate.return_data[12 len 20]
    mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 97 len ceil32(arg2.length)] = arg2[all], delegate.return_data[arg2.length + -ceil32(ceil32(arg2.length)) + 31 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + arg2.length + 97] = 0
    call address(delegate.return_data[0]).mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + ceil32(return_data.size) + 101 len arg2.length - 4]
    if not ext_call.success:
        revert with 0, 'ProxyFactory::create: proxy initialization failed'
    emit ProxyCreated(address(arg1), address(delegate.return_data[0]));
    return address(delegate.return_data[0])
}



}
