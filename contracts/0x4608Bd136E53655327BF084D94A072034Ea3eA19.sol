contract main {




// =====================  Runtime code  =====================


#
#  - deployMetaSwap(address arg1, address[] arg2, uint8[] arg3, string arg4, string arg5, uint256 arg6, uint256 arg7, uint256 arg8, address arg9, address arg10)
#
address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function clone(address arg1) payable {
    require calldata.size - 4 >= 32
    create contract with 0 wei
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, arg1, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create.new_address):
        revert with 0, 'ERC1167: create failed'
    emit NewClone(address(create.new_address), arg1);
    return address(create.new_address)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deploy(address arg1, address[] arg2, uint8[] arg3, string arg4, string arg5, uint256 arg6, uint256 arg7, uint256 arg8, address arg9) payable {
    require calldata.size - 4 >= 288
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + 192 len arg4.length] = arg4[all]
    mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 192] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 192] = arg5.length
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 224 len arg5.length] = arg5[all]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + arg5.length + 224] = 0
    create contract with 0 wei
                    code: 0, arg1, 0x5af43d82803e903d91602b57fd5bf3
    if not address(create.new_address):
        revert with Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 
                    'ERC1167: create failed'
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224] = 0xcb265c0000000000000000000000000000000000000000000000000000000 * 24 * 3600
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 356] = arg6
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 388] = arg7
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 420] = arg8
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 452] = arg9
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 228] = 256
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 484] = arg2.length
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 516 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 260] = (32 * arg2.length) + 288
    mem[(64 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 516] = arg3.length
    mem[(64 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 548 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 292] = (32 * arg3.length) + (32 * arg2.length) + 320
    mem[(64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 548] = arg4.length
    mem[(64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 580 len ceil32(arg4.length)] = arg4[all], mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 192 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 324] = arg4.length + (32 * arg3.length) + (32 * arg2.length) + 352
        mem[arg4.length + (64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 580] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]
        mem[arg4.length + (64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 612 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)])] = mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 224 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)])]
        if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)] % 32:
            require ext_code.size(address(create.new_address))
            call address(create.new_address) with:
               funct Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256
                 gas gas_remaining wei
                args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg2.length) + 516 len (32 * arg2.length) + (32 * arg3.length) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)] + arg4.length + -floor32(arg2.length) + 96]), (32 * arg2.length) + 288, (32 * arg3.length) + (32 * arg2.length) + 320, arg4.length + (32 * arg3.length) + (32 * arg2.length) + 352, arg6, arg7, arg8, address(arg9)
        else:
            mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]) + arg4.length + (64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 612] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]) + arg4.length + (64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)] % 32) + 644 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)] % 32]
            require ext_code.size(address(create.new_address))
            call address(create.new_address) with:
               funct Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256
                 gas gas_remaining wei
                args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg2.length) + 516 len (32 * arg2.length) + (32 * arg3.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]) + arg4.length + -floor32(arg2.length) + 128]), (32 * arg2.length) + 288, (32 * arg3.length) + (32 * arg2.length) + 320, arg4.length + (32 * arg3.length) + (32 * arg2.length) + 352, arg6, arg7, arg8, address(arg9)
    else:
        mem[floor32(arg4.length) + (64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 580] = mem[floor32(arg4.length) + (64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(arg4.length % 32) + 612 len arg4.length % 32]
        mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 324] = floor32(arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 384
        mem[floor32(arg4.length) + (64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 612] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]
        mem[floor32(arg4.length) + (64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 644 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)])] = mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + 224 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)])]
        if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)] % 32:
            require ext_code.size(address(create.new_address))
            call address(create.new_address) with:
               funct Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256
                 gas gas_remaining wei
                args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg2.length) + 516 len (32 * arg2.length) + (32 * arg3.length) + Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)] + floor32(arg4.length) + -floor32(arg2.length) + 128]), (32 * arg2.length) + 288, (32 * arg3.length) + (32 * arg2.length) + 320, floor32(arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 384, arg6, arg7, arg8, address(arg9)
        else:
            mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + (64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + 644] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + (64 * arg3.length) + (64 * arg2.length) + ceil32(arg4.length) + ceil32(arg5.length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)] % 32) + 676 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)] % 32]
            require ext_code.size(address(create.new_address))
            call address(create.new_address) with:
               funct Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256
                 gas gas_remaining wei
                args Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg2.length) + 516 len (32 * arg2.length) + (32 * arg3.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[(32 * arg2.length) + (32 * arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]) + floor32(arg4.length) + -floor32(arg2.length) + 160]), (32 * arg2.length) + 288, (32 * arg3.length) + (32 * arg2.length) + 320, floor32(arg4.length) + (32 * arg3.length) + (32 * arg2.length) + 384, arg6, arg7, arg8, address(arg9)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 320 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    emit 0x838512b7: Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, uint128(create.new_address) << 96, 64, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + (32 * arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg2.length) + 320 len (32 * arg2.length) - floor32(arg2.length)], msg.sender
    return Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 
           uint128(create.new_address) << 96
}



}
