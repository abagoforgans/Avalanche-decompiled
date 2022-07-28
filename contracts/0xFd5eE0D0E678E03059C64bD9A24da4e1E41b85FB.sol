contract main {




// =====================  Runtime code  =====================


address instanceAddress;

function instance() payable {
    return instanceAddress
}

function _fallback() payable {
    revert
}

function create() payable {
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, instanceAddress, 0x5af43d82803e903d91602b57fd5bf3
    emit ProxyCreated(address(create.new_address));
    return address(create.new_address)
}

function deployMinimal(address arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 148] = address(arg1)
    mem[ceil32(arg2.length) + 168] = 0x5af43d82803e903d91602b57fd5bf30000000000000000000000000000000000
    create contract with 0 wei
                    code: 0, arg1, 0x5af43d82803e903d91602b57fd5bf3
    mem[ceil32(arg2.length) + 128] = address(create.new_address)
    emit ProxyCreated(0);
    if not arg2.length:
        return 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    call address(create.new_address) with:
         gas gas_remaining wei
        args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with Mask(32, -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 0) >> -(8 * ceil32(arg2.length) + -arg2.length + 4) + 256, 
                        32,
                        36,
                        0xfe50726f7879466163746f72792f636f6e7374727563746f722d63616c6c2d6661696c65,
                        mem[ceil32(arg2.length) + 232 len 28]
        else:
            return 0
    if not ext_call.success:
        revert with 0, 
                    32,
                    36,
                    0xfe50726f7879466163746f72792f636f6e7374727563746f722d63616c6c2d6661696c65,
                    mem[ceil32(arg2.length) + ceil32(return_data.size) + 233 len 28]
    return address(create.new_address)
}



}
