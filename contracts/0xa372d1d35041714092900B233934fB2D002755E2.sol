contract main {




// =====================  Runtime code  =====================


#
#  - sub_8474766d(?)
#
uint256 stor0;
address sub_f27cda37Address;

function sub_f27cda37(?) {
    return sub_f27cda37Address
}

function migrateTo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_f27cda37Address)
    staticcall sub_f27cda37Address.owner() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(sub_f27cda37Address)
        staticcall sub_f27cda37Address.getDev() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[12 len 20] == msg.sender
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x4ddaf8f2(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        require calldata.size - 4 >= 32
        require cd[4] == address(cd[4])
        require ext_code.size(sub_f27cda37Address)
        staticcall sub_f27cda37Address.owner() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(sub_f27cda37Address)
            staticcall sub_f27cda37Address.getDev() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            require ext_call.return_data[12 len 20] == msg.sender
        call address(cd[4]) with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if uint32(call.func_hash) >> 224 != unknown_0x8474766d(?????):
        require unknown_0xf27cda37(?????) == uint32(call.func_hash) >> 224
        require not msg.value
        return sub_f27cda37Address
    require calldata.size - 4 >= 224
    require cd[4] <= test266151307()
    require calldata.size + -cd[4] - 4 >= 576
    require cd[36] <= test266151307()
    require calldata.size + -cd[36] - 4 >= 160
    require calldata.size - 68 >= 128
    require cd[196] <= test266151307()
    require calldata.size + -cd[196] - 4 >= 256
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(sub_f27cda37Address)
    staticcall sub_f27cda37Address.getMinCreatorStakedBalance() with:
            gas gas_remaining wei
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ('cd', 4)[5]:
        revert with 0, '1'
    require ('cd', 4)[6] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
    mem[ceil32(return_data.size) + 132] = 32
    mem[ceil32(return_data.size) + 164] = cd[(cd[4] + ('cd', 4)[6] + 4)]
    mem[ceil32(return_data.size) + 196 len cd[(cd[4] + ('cd', 4)[6] + 4)]] = call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[6] + 4)] + ceil32(return_data.size) + 196] = 0
    require ext_code.size(sub_f27cda37Address)
    staticcall sub_f27cda37Address.0x5ce6897e with:
            gas gas_remaining wei
           args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]])
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        revert with 0, '1'
    require ('cd', 4).length == address(('cd', 4).length)
    mem[(2 * ceil32(return_data.size)) + 160] = address(('cd', 4).length)
    mem[(2 * ceil32(return_data.size)) + 180] = address(msg.sender)
    mem[(2 * ceil32(return_data.size)) + 200] = ('cd', 4)[5]
    mem[(2 * ceil32(return_data.size)) + 232] = ('cd', 4)[7]
    mem[(2 * ceil32(return_data.size)) + 128] = 104
    require ('cd', 4)[6] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
    mem[(2 * ceil32(return_data.size)) + 268] = sha3(address(('cd', 4).length), msg.sender, ('cd', 4)[5], ('cd', 4)[7])
    mem[(2 * ceil32(return_data.size)) + 300] = 96
    mem[(2 * ceil32(return_data.size)) + 364] = cd[(cd[4] + ('cd', 4)[6] + 4)]
    mem[(2 * ceil32(return_data.size)) + 396 len cd[(cd[4] + ('cd', 4)[6] + 4)]] = call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]
    mem[cd[(cd[4] + ('cd', 4)[6] + 4)] + (2 * ceil32(return_data.size)) + 396] = 0
    mem[(2 * ceil32(return_data.size)) + 332] = 1
    require ext_code.size(sub_f27cda37Address)
    staticcall sub_f27cda37Address.0x9f7c9ba8 with:
            gas gas_remaining wei
           args sha3(address(('cd', 4).length), msg.sender, ('cd', 4)[5], ('cd', 4)[7]), Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), 1
    mem[(2 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 268] = 32
        mem[(4 * ceil32(return_data.size)) + 300] = 1
        mem[(4 * ceil32(return_data.size)) + 332] = 0x3100000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 264
           len (5 * ceil32(return_data.size)) + 100
    require ('cd', 36).length == bool(('cd', 36).length)
    if not ('cd', 36).length:
        require ('cd', 36)[2] < calldata.size + -cd[36] - 35
        require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
        require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
        if cd[(cd[36] + ('cd', 36)[2] + 4)]:
            if 72 * 24 * 3600 > !block.timestamp:
                revert with 0, 17
            if block.timestamp + (72 * 24 * 3600) > ('cd', 4)[3]:
                mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 268] = 32
                mem[(4 * ceil32(return_data.size)) + 300] = 1
                mem[(4 * ceil32(return_data.size)) + 332] = 0x3400000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 264
                   len (5 * ceil32(return_data.size)) + 100
            if ('cd', 4)[4] < ('cd', 4)[3]:
                revert with 0, 17
            if 6900 >= ('cd', 4)[4] - ('cd', 4)[3]:
                mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 268] = 32
                mem[(4 * ceil32(return_data.size)) + 300] = 1
                mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 264
                   len (5 * ceil32(return_data.size)) + 100
            if ('cd', 4)[0] <= 0:
                mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 268] = 32
                mem[(4 * ceil32(return_data.size)) + 300] = 1
                mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 264
                   len (5 * ceil32(return_data.size)) + 100
            if ('cd', 4)[2] <= 0:
                mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 268] = 32
                mem[(4 * ceil32(return_data.size)) + 300] = 1
                mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 264
                   len (5 * ceil32(return_data.size)) + 100
            if ('cd', 4)[1] <= 0:
                mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 268] = 32
                mem[(4 * ceil32(return_data.size)) + 300] = 1
                mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 264
                   len (5 * ceil32(return_data.size)) + 100
            if ('cd', 4)[1] < ('cd', 4)[2]:
                mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 268] = 32
                mem[(4 * ceil32(return_data.size)) + 300] = 1
                mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 264
                   len (5 * ceil32(return_data.size)) + 100
            require ('cd', 36)[3] == address(('cd', 36)[3])
            if not address(('cd', 36)[3]):
                require ('cd', 4).length == address(('cd', 4).length)
                mem[(4 * ceil32(return_data.size)) + 268] = sub_f27cda37Address
                require ext_code.size(0x13d609c1b682f74bd3968c19f8967b7277879f4d)
                delegate 0x13d609c1b682f74bd3968c19f8967b7277879f4d.usdtToEthFee(address rg1) with:
                     gas gas_remaining wei
                    args mem[(4 * ceil32(return_data.size)) + 268 len (5 * ceil32(return_data.size)) + 32]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if msg.value < delegate.return_data[0]:
                    mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 268] = 32
                    mem[(4 * ceil32(return_data.size)) + 300] = 1
                    mem[(4 * ceil32(return_data.size)) + 332] = 0x3700000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 264
                       len (7 * ceil32(return_data.size)) + 100
                if delegate.return_data[0] <= 0:
                    mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 268] = 32
                    mem[(4 * ceil32(return_data.size)) + 300] = 1
                    mem[(4 * ceil32(return_data.size)) + 332] = 0x3700000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 264
                       len (7 * ceil32(return_data.size)) + 100
                mem[(4 * ceil32(return_data.size)) + 264] = 3
                mem[(4 * ceil32(return_data.size)) + 296 len 96] = call.data[calldata.size len 96]
                require cd[132] == uint8(cd[132])
                require ext_code.size(address(('cd', 4).length))
                staticcall address(('cd', 4).length).decimals() with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ('cd', 36)[3] == address(('cd', 36)[3])
                if not address(('cd', 36)[3]):
                    mem[(6 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
                    mem[(6 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
                    mem[(6 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
                    mem[(6 * ceil32(return_data.size)) + 460] = cd[68]
                    mem[(6 * ceil32(return_data.size)) + 492] = uint8(cd[132])
                    mem[(6 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
                    mem[(6 * ceil32(return_data.size)) + 556] = 18
                    require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
                    delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
                         gas gas_remaining wei
                        args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, 18, mem[(6 * ceil32(return_data.size)) + 588 len 9 * ceil32(return_data.size)]
                    if not delegate.return_code:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(6 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (7 * ceil32(return_data.size)) + 392
                    require return_data.size >= 32
                    _196 = mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
                    require mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
                    require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (6 * ceil32(return_data.size)) + return_data.size + 392
                    _205 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
                    if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
                        revert with 0, 65
                    if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
                    mem[(7 * ceil32(return_data.size)) + 392] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
                    require return_data.size >= _196 + (32 * _205) + 32
                    mem[(7 * ceil32(return_data.size)) + 424 len 32 * _205] = mem[(6 * ceil32(return_data.size)) + _196 + 424 len 32 * _205]
                    require ext_code.size(sub_f27cda37Address)
                    staticcall sub_f27cda37Address.getDev() with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _654 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _672 = mem[_654]
                    require mem[_654] == mem[_654 + 12 len 20]
                    mem[mem[64] len 17747] = code.data[6752 len 17747]
                    mem[mem[64] + 17747] = this.address
                    mem[mem[64] + 17779] = sub_f27cda37Address
                    mem[mem[64] + 17811] = address(_672)
                    create contract with 0 wei
                                    code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_672)
                    if not create.new_address:
                        revert with ext_call.return_data[0 len return_data.size]
                    if 2 >= _205:
                        revert with 0, 50
                    _735 = mem[(7 * ceil32(return_data.size)) + 488]
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(create.new_address)
                    mem[mem[64] + 68] = _735
                    require ext_code.size(address(('cd', 4).length))
                    call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining wei
                        args msg.sender, address(create.new_address), _735
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _781 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_781] == bool(mem[_781])
                    if not mem[_781]:
                        revert with 0, '8'
                    call address(create.new_address) with:
                       value delegate.return_data[0] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _847 = mem[64]
                    mem[64] = mem[64] + 96
                    if 1 >= _205:
                        revert with 0, 50
                    mem[_847] = mem[(7 * ceil32(return_data.size)) + 456]
                    if 0 >= _205:
                        revert with 0, 50
                    mem[_847 + 32] = mem[(7 * ceil32(return_data.size)) + 424]
                    mem[_847 + 64] = delegate.return_data[0]
                    _939 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_939] = msg.sender
                    require ('cd', 4).length == address(('cd', 4).length)
                    mem[_939 + 32] = address(('cd', 4).length)
                    _961 = mem[64]
                    mem[64] = mem[64] + 256
                    mem[_961] = ('cd', 4)[0]
                    mem[_961 + 32] = mem[_847]
                    mem[_961 + 64] = mem[_847 + 32]
                    mem[_961 + 96] = ('cd', 4)[2]
                    mem[_961 + 128] = ('cd', 4)[1]
                    mem[_961 + 160] = ('cd', 4)[3]
                    mem[_961 + 192] = ('cd', 4)[4]
                    mem[_961 + 224] = delegate.return_data[0]
                    mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
                    idx = 0
                    s = _939
                    t = mem[64] + 4
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 68 len 256] = mem[_961 len 256]
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 320]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 36).length == bool(('cd', 36).length)
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    require ('cd', 36)[1] == uint8(('cd', 36)[1])
                    require ('cd', 36)[2] < calldata.size + -cd[36] - 35
                    require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
                    require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
                    require ('cd', 36)[3] == address(('cd', 36)[3])
                    idx = 0
                    s = mem[64] + 196
                    t = cd[36] + ('cd', 36)[2] + 36
                    while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
                        require cd[t] == address(cd[t])
                        mem[s] = address(cd[t])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).0x5b91703a with:
                         gas gas_remaining wei
                        args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 36).length == bool(('cd', 36).length)
                    if not ('cd', 36).length:
                        require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                        require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                        require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                        require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                        require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                        require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                        require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                        require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                        require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                        mem[mem[64] + 4] = ('cd', 196).length
                        mem[mem[64] + 36] = ('cd', 196)[0]
                        mem[mem[64] + 68] = ('cd', 196)[1]
                        mem[mem[64] + 100] = ('cd', 196)[2]
                        mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                        mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                        mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                        mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                        require ext_code.size(address(create.new_address))
                        call address(create.new_address).0xb7153b0f with:
                             gas gas_remaining wei
                            args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                        idx = 0
                        s = cd[4] + 292
                        t = mem[64] + 4
                        while idx < 4:
                            require cd[s] == uint8(cd[s])
                            mem[t] = uint8(cd[s])
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                        mem[mem[64] + 292] = 0
                        require ext_code.size(address(create.new_address))
                        call address(create.new_address).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                        require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                        require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                        mem[mem[64] + 4] = address(create.new_address)
                        mem[mem[64] + 36] = ('cd', 196).length
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                        mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                        mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                        mem[mem[64] + 100] = 1
                        mem[mem[64] + 132] = 0
                        require ext_code.size(sub_f27cda37Address)
                        call sub_f27cda37Address.0x2a23097e with:
                             gas gas_remaining wei
                            args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1535 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1567 = mem[_1535]
                        require ext_code.size(address(create.new_address))
                        call address(create.new_address).setPresaleId(uint256 rg1) with:
                             gas gas_remaining wei
                            args mem[_1535]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                        require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                        require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                        require ext_code.size(sub_f27cda37Address)
                        call sub_f27cda37Address.0xce9c9635 with:
                             gas gas_remaining wei
                            args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require ('cd', 36).length == bool(('cd', 36).length)
                        if not ('cd', 36).length:
                            require ('cd', 4).length == address(('cd', 4).length)
                            emit CertifiedPresaleCreated(_1567, msg.sender, address(('cd', 4).length));
                        else:
                            require ('cd', 36)[0] == bool(('cd', 36)[0])
                            require ('cd', 4).length == address(('cd', 4).length)
                            if not ('cd', 36)[0]:
                                emit CertifiedPresaleCreated(_1567, msg.sender, address(('cd', 4).length));
                            else:
                                emit CertifiedAutoPresaleCreated(_1567, msg.sender, address(('cd', 4).length), cd[164]);
                        stor0 = 1
                        return _1567
                    require cd[132] == uint8(cd[132])
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
                         gas gas_remaining wei
                        args cd[68], cd[100], cd[132] << 248, cd[164]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                    require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                    require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                    mem[mem[64] + 4] = ('cd', 196).length
                    mem[mem[64] + 36] = ('cd', 196)[0]
                    mem[mem[64] + 68] = ('cd', 196)[1]
                    mem[mem[64] + 100] = ('cd', 196)[2]
                    mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).0xb7153b0f with:
                         gas gas_remaining wei
                        args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                    idx = 0
                    s = cd[4] + 292
                    t = mem[64] + 4
                    while idx < 4:
                        require cd[s] == uint8(cd[s])
                        mem[t] = uint8(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                    mem[mem[64] + 292] = 0
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + 4] = address(create.new_address)
                    mem[mem[64] + 36] = ('cd', 196).length
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                    mem[mem[64] + 100] = 1
                    mem[mem[64] + 132] = 0
                    require ext_code.size(sub_f27cda37Address)
                    call sub_f27cda37Address.0x2a23097e with:
                         gas gas_remaining wei
                        args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1536 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1568 = mem[_1536]
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).setPresaleId(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1536]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                    require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                    require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                    require ext_code.size(sub_f27cda37Address)
                    call sub_f27cda37Address.0xce9c9635 with:
                         gas gas_remaining wei
                        args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 36).length == bool(('cd', 36).length)
                    if not ('cd', 36).length:
                        require ('cd', 4).length == address(('cd', 4).length)
                        emit CertifiedPresaleCreated(_1568, msg.sender, address(('cd', 4).length));
                    else:
                        require ('cd', 36)[0] == bool(('cd', 36)[0])
                        require ('cd', 4).length == address(('cd', 4).length)
                        if not ('cd', 36)[0]:
                            emit CertifiedPresaleCreated(_1568, msg.sender, address(('cd', 4).length));
                        else:
                            emit CertifiedAutoPresaleCreated(_1568, msg.sender, address(('cd', 4).length), cd[164]);
                    stor0 = 1
                    return _1568
                require ('cd', 36)[3] == address(('cd', 36)[3])
                mem[(6 * ceil32(return_data.size)) + 392] = 0x313ce56700000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(('cd', 36)[3]))
                staticcall address(('cd', 36)[3]).decimals() with:
                        gas gas_remaining wei
                       args mem[(6 * ceil32(return_data.size)) + 396 len 8 * ceil32(return_data.size)]
                mem[(6 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                mem[(8 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
                mem[(8 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
                mem[(8 * ceil32(return_data.size)) + 460] = cd[68]
                mem[(8 * ceil32(return_data.size)) + 492] = uint8(cd[132])
                mem[(8 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
                mem[(8 * ceil32(return_data.size)) + 556] = uint8(ext_call.return_data[0])
                require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
                delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
                     gas gas_remaining wei
                    args mem[(8 * ceil32(return_data.size)) + 396 len (13 * ceil32(return_data.size)) + 192]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (10 * ceil32(return_data.size)) + 392
                require return_data.size >= 32
                _256 = mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
                require mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
                require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (8 * ceil32(return_data.size)) + return_data.size + 392
                _265 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
                if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
                    revert with 0, 65
                if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
                mem[(10 * ceil32(return_data.size)) + 392] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
                require return_data.size >= _256 + (32 * _265) + 32
                mem[(10 * ceil32(return_data.size)) + 424 len 32 * _265] = mem[(8 * ceil32(return_data.size)) + _256 + 424 len 32 * _265]
                require ext_code.size(sub_f27cda37Address)
                staticcall sub_f27cda37Address.getDev() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _655 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _673 = mem[_655]
                require mem[_655] == mem[_655 + 12 len 20]
                mem[mem[64] len 17747] = code.data[6752 len 17747]
                mem[mem[64] + 17747] = this.address
                mem[mem[64] + 17779] = sub_f27cda37Address
                mem[mem[64] + 17811] = address(_673)
                create contract with 0 wei
                                code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_673)
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                if 2 >= _265:
                    revert with 0, 50
                _738 = mem[(10 * ceil32(return_data.size)) + 488]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(create.new_address)
                mem[mem[64] + 68] = _738
                require ext_code.size(address(('cd', 4).length))
                call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address), _738
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _782 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_782] == bool(mem[_782])
                if not mem[_782]:
                    revert with 0, '8'
                call address(create.new_address) with:
                   value delegate.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _850 = mem[64]
                mem[64] = mem[64] + 96
                if 1 >= _265:
                    revert with 0, 50
                mem[_850] = mem[(10 * ceil32(return_data.size)) + 456]
                if 0 >= _265:
                    revert with 0, 50
                mem[_850 + 32] = mem[(10 * ceil32(return_data.size)) + 424]
                mem[_850 + 64] = delegate.return_data[0]
                _940 = mem[64]
                mem[64] = mem[64] + 64
                mem[_940] = msg.sender
                require ('cd', 4).length == address(('cd', 4).length)
                mem[_940 + 32] = address(('cd', 4).length)
                _964 = mem[64]
                mem[64] = mem[64] + 256
                mem[_964] = ('cd', 4)[0]
                mem[_964 + 32] = mem[_850]
                mem[_964 + 64] = mem[_850 + 32]
                mem[_964 + 96] = ('cd', 4)[2]
                mem[_964 + 128] = ('cd', 4)[1]
                mem[_964 + 160] = ('cd', 4)[3]
                mem[_964 + 192] = ('cd', 4)[4]
                mem[_964 + 224] = delegate.return_data[0]
                mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
                idx = 0
                s = _940
                t = mem[64] + 4
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68 len 256] = mem[_964 len 256]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 36)[1] == uint8(('cd', 36)[1])
                require ('cd', 36)[2] < calldata.size + -cd[36] - 35
                require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
                require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
                require ('cd', 36)[3] == address(('cd', 36)[3])
                idx = 0
                s = mem[64] + 196
                t = cd[36] + ('cd', 36)[2] + 36
                while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0x5b91703a with:
                     gas gas_remaining wei
                    args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                    require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                    require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                    mem[mem[64] + 4] = ('cd', 196).length
                    mem[mem[64] + 36] = ('cd', 196)[0]
                    mem[mem[64] + 68] = ('cd', 196)[1]
                    mem[mem[64] + 100] = ('cd', 196)[2]
                    mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).0xb7153b0f with:
                         gas gas_remaining wei
                        args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                    idx = 0
                    s = cd[4] + 292
                    t = mem[64] + 4
                    while idx < 4:
                        require cd[s] == uint8(cd[s])
                        mem[t] = uint8(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                    mem[mem[64] + 292] = 0
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + 4] = address(create.new_address)
                    mem[mem[64] + 36] = ('cd', 196).length
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                    mem[mem[64] + 100] = 1
                    mem[mem[64] + 132] = 0
                    require ext_code.size(sub_f27cda37Address)
                    call sub_f27cda37Address.0x2a23097e with:
                         gas gas_remaining wei
                        args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1537 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1569 = mem[_1537]
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).setPresaleId(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1537]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                    require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                    require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                    require ext_code.size(sub_f27cda37Address)
                    call sub_f27cda37Address.0xce9c9635 with:
                         gas gas_remaining wei
                        args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 36).length == bool(('cd', 36).length)
                    if not ('cd', 36).length:
                        require ('cd', 4).length == address(('cd', 4).length)
                        emit CertifiedPresaleCreated(_1569, msg.sender, address(('cd', 4).length));
                    else:
                        require ('cd', 36)[0] == bool(('cd', 36)[0])
                        require ('cd', 4).length == address(('cd', 4).length)
                        if not ('cd', 36)[0]:
                            emit CertifiedPresaleCreated(_1569, msg.sender, address(('cd', 4).length));
                        else:
                            emit CertifiedAutoPresaleCreated(_1569, msg.sender, address(('cd', 4).length), cd[164]);
                    stor0 = 1
                    return _1569
                require cd[132] == uint8(cd[132])
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args cd[68], cd[100], cd[132] << 248, cd[164]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + 4] = ('cd', 196).length
                mem[mem[64] + 36] = ('cd', 196)[0]
                mem[mem[64] + 68] = ('cd', 196)[1]
                mem[mem[64] + 100] = ('cd', 196)[2]
                mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xb7153b0f with:
                     gas gas_remaining wei
                    args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                idx = 0
                s = cd[4] + 292
                t = mem[64] + 4
                while idx < 4:
                    require cd[s] == uint8(cd[s])
                    mem[t] = uint8(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                mem[mem[64] + 292] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 4] = address(create.new_address)
                mem[mem[64] + 36] = ('cd', 196).length
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0x2a23097e with:
                     gas gas_remaining wei
                    args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1538 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1570 = mem[_1538]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setPresaleId(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_1538]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0xce9c9635 with:
                     gas gas_remaining wei
                    args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 4).length == address(('cd', 4).length)
                    emit CertifiedPresaleCreated(_1570, msg.sender, address(('cd', 4).length));
                else:
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    require ('cd', 4).length == address(('cd', 4).length)
                    if not ('cd', 36)[0]:
                        emit CertifiedPresaleCreated(_1570, msg.sender, address(('cd', 4).length));
                    else:
                        emit CertifiedAutoPresaleCreated(_1570, msg.sender, address(('cd', 4).length), cd[164]);
                stor0 = 1
                return _1570
            require ('cd', 36)[3] == address(('cd', 36)[3])
            mem[(4 * ceil32(return_data.size)) + 268] = address(('cd', 36)[3])
            require ext_code.size(sub_f27cda37Address)
            staticcall sub_f27cda37Address.isValidStablecoin(address rg1) with:
                    gas gas_remaining wei
                   args mem[(4 * ceil32(return_data.size)) + 268 len (5 * ceil32(return_data.size)) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 268] = 32
                mem[(4 * ceil32(return_data.size)) + 300] = 1
                mem[(4 * ceil32(return_data.size)) + 332] = 0x3600000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 264
                   len (7 * ceil32(return_data.size)) + 100
            require ('cd', 4).length == address(('cd', 4).length)
            mem[(4 * ceil32(return_data.size)) + 268] = sub_f27cda37Address
            require ext_code.size(0x13d609c1b682f74bd3968c19f8967b7277879f4d)
            delegate 0x13d609c1b682f74bd3968c19f8967b7277879f4d.usdtToEthFee(address rg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 268 len (7 * ceil32(return_data.size)) + 32]
            mem[(4 * ceil32(return_data.size)) + 264] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if msg.value < delegate.return_data[0]:
                mem[(8 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 268] = 32
                mem[(8 * ceil32(return_data.size)) + 300] = 1
                mem[(8 * ceil32(return_data.size)) + 332] = 0x3700000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (8 * ceil32(return_data.size)) + 264
                   len (13 * ceil32(return_data.size)) + 100
            if delegate.return_data[0] <= 0:
                mem[(8 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 268] = 32
                mem[(8 * ceil32(return_data.size)) + 300] = 1
                mem[(8 * ceil32(return_data.size)) + 332] = 0x3700000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (8 * ceil32(return_data.size)) + 264
                   len (13 * ceil32(return_data.size)) + 100
            mem[(8 * ceil32(return_data.size)) + 264] = 3
            mem[(8 * ceil32(return_data.size)) + 296 len 96] = call.data[calldata.size len 96]
            require cd[132] == uint8(cd[132])
            require ext_code.size(address(('cd', 4).length))
            staticcall address(('cd', 4).length).decimals() with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ('cd', 36)[3] == address(('cd', 36)[3])
            if not address(('cd', 36)[3]):
                mem[(10 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
                mem[(10 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
                mem[(10 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
                mem[(10 * ceil32(return_data.size)) + 460] = cd[68]
                mem[(10 * ceil32(return_data.size)) + 492] = uint8(cd[132])
                mem[(10 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
                mem[(10 * ceil32(return_data.size)) + 556] = 18
                require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
                delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
                     gas gas_remaining wei
                    args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, 18, mem[(10 * ceil32(return_data.size)) + 588 len 17 * ceil32(return_data.size)]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(10 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (11 * ceil32(return_data.size)) + 392
                require return_data.size >= 32
                _270 = mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
                require mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (10 * ceil32(return_data.size)) + return_data.size + 392
                _280 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
                    revert with 0, 65
                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
                mem[(11 * ceil32(return_data.size)) + 392] = _280
                require return_data.size >= _270 + (32 * _280) + 32
                mem[(11 * ceil32(return_data.size)) + 424 len 32 * _280] = mem[(10 * ceil32(return_data.size)) + _270 + 424 len 32 * _280]
                require ext_code.size(sub_f27cda37Address)
                staticcall sub_f27cda37Address.getDev() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _656 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _674 = mem[_656]
                require mem[_656] == mem[_656 + 12 len 20]
                mem[mem[64] len 17747] = code.data[6752 len 17747]
                mem[mem[64] + 17747] = this.address
                mem[mem[64] + 17779] = sub_f27cda37Address
                mem[mem[64] + 17811] = address(_674)
                create contract with 0 wei
                                code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_674)
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                if 2 >= _280:
                    revert with 0, 50
                _741 = mem[(11 * ceil32(return_data.size)) + 488]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(create.new_address)
                mem[mem[64] + 68] = _741
                require ext_code.size(address(('cd', 4).length))
                call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address), _741
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _783 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_783] == bool(mem[_783])
                if not mem[_783]:
                    revert with 0, '8'
                call address(create.new_address) with:
                   value delegate.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _853 = mem[64]
                mem[64] = mem[64] + 96
                if 1 >= _280:
                    revert with 0, 50
                mem[_853] = mem[(11 * ceil32(return_data.size)) + 456]
                if 0 >= _280:
                    revert with 0, 50
                mem[_853 + 32] = mem[(11 * ceil32(return_data.size)) + 424]
                mem[_853 + 64] = delegate.return_data[0]
                _941 = mem[64]
                mem[64] = mem[64] + 64
                mem[_941] = msg.sender
                require ('cd', 4).length == address(('cd', 4).length)
                mem[_941 + 32] = address(('cd', 4).length)
                _967 = mem[64]
                mem[64] = mem[64] + 256
                mem[_967] = ('cd', 4)[0]
                mem[_967 + 32] = mem[_853]
                mem[_967 + 64] = mem[_853 + 32]
                mem[_967 + 96] = ('cd', 4)[2]
                mem[_967 + 128] = ('cd', 4)[1]
                mem[_967 + 160] = ('cd', 4)[3]
                mem[_967 + 192] = ('cd', 4)[4]
                mem[_967 + 224] = delegate.return_data[0]
                mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
                idx = 0
                s = _941
                t = mem[64] + 4
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68 len 256] = mem[_967 len 256]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 36)[1] == uint8(('cd', 36)[1])
                require ('cd', 36)[2] < calldata.size + -cd[36] - 35
                require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
                require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
                require ('cd', 36)[3] == address(('cd', 36)[3])
                idx = 0
                s = mem[64] + 196
                t = cd[36] + ('cd', 36)[2] + 36
                while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0x5b91703a with:
                     gas gas_remaining wei
                    args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                    require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                    require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                    mem[mem[64] + 4] = ('cd', 196).length
                    mem[mem[64] + 36] = ('cd', 196)[0]
                    mem[mem[64] + 68] = ('cd', 196)[1]
                    mem[mem[64] + 100] = ('cd', 196)[2]
                    mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).0xb7153b0f with:
                         gas gas_remaining wei
                        args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                    idx = 0
                    s = cd[4] + 292
                    t = mem[64] + 4
                    while idx < 4:
                        require cd[s] == uint8(cd[s])
                        mem[t] = uint8(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                    mem[mem[64] + 292] = 0
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + 4] = address(create.new_address)
                    mem[mem[64] + 36] = ('cd', 196).length
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                    mem[mem[64] + 100] = 1
                    mem[mem[64] + 132] = 0
                    require ext_code.size(sub_f27cda37Address)
                    call sub_f27cda37Address.0x2a23097e with:
                         gas gas_remaining wei
                        args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1539 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1571 = mem[_1539]
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).setPresaleId(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1539]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                    require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                    require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                    require ext_code.size(sub_f27cda37Address)
                    call sub_f27cda37Address.0xce9c9635 with:
                         gas gas_remaining wei
                        args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 36).length == bool(('cd', 36).length)
                    if not ('cd', 36).length:
                        require ('cd', 4).length == address(('cd', 4).length)
                        emit CertifiedPresaleCreated(_1571, msg.sender, address(('cd', 4).length));
                    else:
                        require ('cd', 36)[0] == bool(('cd', 36)[0])
                        require ('cd', 4).length == address(('cd', 4).length)
                        if not ('cd', 36)[0]:
                            emit CertifiedPresaleCreated(_1571, msg.sender, address(('cd', 4).length));
                        else:
                            emit CertifiedAutoPresaleCreated(_1571, msg.sender, address(('cd', 4).length), cd[164]);
                    stor0 = 1
                    return _1571
                require cd[132] == uint8(cd[132])
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args cd[68], cd[100], cd[132] << 248, cd[164]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + 4] = ('cd', 196).length
                mem[mem[64] + 36] = ('cd', 196)[0]
                mem[mem[64] + 68] = ('cd', 196)[1]
                mem[mem[64] + 100] = ('cd', 196)[2]
                mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xb7153b0f with:
                     gas gas_remaining wei
                    args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                idx = 0
                s = cd[4] + 292
                t = mem[64] + 4
                while idx < 4:
                    require cd[s] == uint8(cd[s])
                    mem[t] = uint8(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                mem[mem[64] + 292] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 4] = address(create.new_address)
                mem[mem[64] + 36] = ('cd', 196).length
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0x2a23097e with:
                     gas gas_remaining wei
                    args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1540 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1572 = mem[_1540]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setPresaleId(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_1540]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0xce9c9635 with:
                     gas gas_remaining wei
                    args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 4).length == address(('cd', 4).length)
                    emit CertifiedPresaleCreated(_1572, msg.sender, address(('cd', 4).length));
                else:
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    require ('cd', 4).length == address(('cd', 4).length)
                    if not ('cd', 36)[0]:
                        emit CertifiedPresaleCreated(_1572, msg.sender, address(('cd', 4).length));
                    else:
                        emit CertifiedAutoPresaleCreated(_1572, msg.sender, address(('cd', 4).length), cd[164]);
                stor0 = 1
                return _1572
            require ('cd', 36)[3] == address(('cd', 36)[3])
            mem[(10 * ceil32(return_data.size)) + 392] = 0x313ce56700000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(('cd', 36)[3]))
            staticcall address(('cd', 36)[3]).decimals() with:
                    gas gas_remaining wei
                   args mem[(10 * ceil32(return_data.size)) + 396 len 16 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            mem[(12 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
            mem[(12 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
            mem[(12 * ceil32(return_data.size)) + 460] = cd[68]
            mem[(12 * ceil32(return_data.size)) + 492] = uint8(cd[132])
            mem[(12 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 556] = uint8(ext_call.return_data[0])
            require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
            delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
                 gas gas_remaining wei
                args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(12 * ceil32(return_data.size)) + 588 len 20 * ceil32(return_data.size)]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 392
            require return_data.size >= 32
            _365 = mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
            require mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (12 * ceil32(return_data.size)) + return_data.size + 392
            _383 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
                revert with 0, 65
            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
                revert with 0, 65
            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
            mem[(13 * ceil32(return_data.size)) + 392] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
            require return_data.size >= _365 + (32 * _383) + 32
            mem[(13 * ceil32(return_data.size)) + 424 len 32 * _383] = mem[(12 * ceil32(return_data.size)) + _365 + 424 len 32 * _383]
            require ext_code.size(sub_f27cda37Address)
            staticcall sub_f27cda37Address.getDev() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _657 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _675 = mem[_657]
            require mem[_657] == mem[_657 + 12 len 20]
            mem[mem[64] len 17747] = code.data[6752 len 17747]
            mem[mem[64] + 17747] = this.address
            mem[mem[64] + 17779] = sub_f27cda37Address
            mem[mem[64] + 17811] = address(_675)
            create contract with 0 wei
                            code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_675)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            if 2 >= _383:
                revert with 0, 50
            _744 = mem[(13 * ceil32(return_data.size)) + 488]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(create.new_address)
            mem[mem[64] + 68] = _744
            require ext_code.size(address(('cd', 4).length))
            call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address), _744
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _784 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_784] == bool(mem[_784])
            if not mem[_784]:
                revert with 0, '8'
            call address(create.new_address) with:
               value delegate.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _856 = mem[64]
            mem[64] = mem[64] + 96
            if 1 >= _383:
                revert with 0, 50
            mem[_856] = mem[(13 * ceil32(return_data.size)) + 456]
            if 0 >= _383:
                revert with 0, 50
            mem[_856 + 32] = mem[(13 * ceil32(return_data.size)) + 424]
            mem[_856 + 64] = delegate.return_data[0]
            _942 = mem[64]
            mem[64] = mem[64] + 64
            mem[_942] = msg.sender
            require ('cd', 4).length == address(('cd', 4).length)
            mem[_942 + 32] = address(('cd', 4).length)
            _970 = mem[64]
            mem[64] = mem[64] + 256
            mem[_970] = ('cd', 4)[0]
            mem[_970 + 32] = mem[_856]
            mem[_970 + 64] = mem[_856 + 32]
            mem[_970 + 96] = ('cd', 4)[2]
            mem[_970 + 128] = ('cd', 4)[1]
            mem[_970 + 160] = ('cd', 4)[3]
            mem[_970 + 192] = ('cd', 4)[4]
            mem[_970 + 224] = delegate.return_data[0]
            mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
            idx = 0
            s = _942
            t = mem[64] + 4
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68 len 256] = mem[_970 len 256]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            require ('cd', 36)[1] == uint8(('cd', 36)[1])
            require ('cd', 36)[2] < calldata.size + -cd[36] - 35
            require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
            require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
            require ('cd', 36)[3] == address(('cd', 36)[3])
            idx = 0
            s = mem[64] + 196
            t = cd[36] + ('cd', 36)[2] + 36
            while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x5b91703a with:
                 gas gas_remaining wei
                args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + 4] = ('cd', 196).length
                mem[mem[64] + 36] = ('cd', 196)[0]
                mem[mem[64] + 68] = ('cd', 196)[1]
                mem[mem[64] + 100] = ('cd', 196)[2]
                mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xb7153b0f with:
                     gas gas_remaining wei
                    args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                idx = 0
                s = cd[4] + 292
                t = mem[64] + 4
                while idx < 4:
                    require cd[s] == uint8(cd[s])
                    mem[t] = uint8(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                mem[mem[64] + 292] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 4] = address(create.new_address)
                mem[mem[64] + 36] = ('cd', 196).length
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0x2a23097e with:
                     gas gas_remaining wei
                    args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1541 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1573 = mem[_1541]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setPresaleId(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_1541]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0xce9c9635 with:
                     gas gas_remaining wei
                    args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 4).length == address(('cd', 4).length)
                    emit CertifiedPresaleCreated(_1573, msg.sender, address(('cd', 4).length));
                else:
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    require ('cd', 4).length == address(('cd', 4).length)
                    if not ('cd', 36)[0]:
                        emit CertifiedPresaleCreated(_1573, msg.sender, address(('cd', 4).length));
                    else:
                        emit CertifiedAutoPresaleCreated(_1573, msg.sender, address(('cd', 4).length), cd[164]);
                stor0 = 1
                return _1573
            require cd[132] == uint8(cd[132])
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args cd[68], cd[100], cd[132] << 248, cd[164]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[4] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            require ('cd', 196)[6] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + 4] = ('cd', 196).length
            mem[mem[64] + 36] = ('cd', 196)[0]
            mem[mem[64] + 68] = ('cd', 196)[1]
            mem[mem[64] + 100] = ('cd', 196)[2]
            mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xb7153b0f with:
                 gas gas_remaining wei
                args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
            idx = 0
            s = cd[4] + 292
            t = mem[64] + 4
            while idx < 4:
                require cd[s] == uint8(cd[s])
                mem[t] = uint8(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
            mem[mem[64] + 292] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 4] = address(create.new_address)
            mem[mem[64] + 36] = ('cd', 196).length
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 0
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0x2a23097e with:
                 gas gas_remaining wei
                args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1542 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1574 = mem[_1542]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setPresaleId(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_1542]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 4)[6] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0xce9c9635 with:
                 gas gas_remaining wei
                args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 4).length == address(('cd', 4).length)
                emit CertifiedPresaleCreated(_1574, msg.sender, address(('cd', 4).length));
            else:
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 4).length == address(('cd', 4).length)
                if not ('cd', 36)[0]:
                    emit CertifiedPresaleCreated(_1574, msg.sender, address(('cd', 4).length));
                else:
                    emit CertifiedAutoPresaleCreated(_1574, msg.sender, address(('cd', 4).length), cd[164]);
            stor0 = 1
            return _1574
        mem[(4 * ceil32(return_data.size)) + 264] = 0x2962863c00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_f27cda37Address)
        staticcall sub_f27cda37Address.getRegistrationTime() with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 268 len 5 * ceil32(return_data.size)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if block.timestamp > !ext_call.return_data[0]:
            revert with 0, 17
        if 72 * 24 * 3600 > !(block.timestamp + ext_call.return_data[0]):
            revert with 0, 17
        if block.timestamp + ext_call.return_data[0] + (72 * 24 * 3600) > ('cd', 4)[3]:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3300000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (7 * ceil32(return_data.size)) + 100
        if ('cd', 4)[4] < ('cd', 4)[3]:
            revert with 0, 17
        if 6900 >= ('cd', 4)[4] - ('cd', 4)[3]:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (7 * ceil32(return_data.size)) + 100
        if ('cd', 4)[0] <= 0:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (7 * ceil32(return_data.size)) + 100
        if ('cd', 4)[2] <= 0:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (7 * ceil32(return_data.size)) + 100
        if ('cd', 4)[1] <= 0:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (7 * ceil32(return_data.size)) + 100
        if ('cd', 4)[1] < ('cd', 4)[2]:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (7 * ceil32(return_data.size)) + 100
        require ('cd', 36)[3] == address(('cd', 36)[3])
        if not address(('cd', 36)[3]):
            require ('cd', 4).length == address(('cd', 4).length)
            mem[(4 * ceil32(return_data.size)) + 268] = sub_f27cda37Address
            require ext_code.size(0x13d609c1b682f74bd3968c19f8967b7277879f4d)
            delegate 0x13d609c1b682f74bd3968c19f8967b7277879f4d.usdtToEthFee(address rg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 268 len (7 * ceil32(return_data.size)) + 32]
            mem[(4 * ceil32(return_data.size)) + 264] = delegate.return_data[0]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if msg.value < delegate.return_data[0]:
                mem[(8 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 268] = 32
                mem[(8 * ceil32(return_data.size)) + 300] = 1
                mem[(8 * ceil32(return_data.size)) + 332] = 0x3700000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (8 * ceil32(return_data.size)) + 264
                   len (13 * ceil32(return_data.size)) + 100
            if delegate.return_data[0] <= 0:
                mem[(8 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 268] = 32
                mem[(8 * ceil32(return_data.size)) + 300] = 1
                mem[(8 * ceil32(return_data.size)) + 332] = 0x3700000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (8 * ceil32(return_data.size)) + 264
                   len (13 * ceil32(return_data.size)) + 100
            mem[(8 * ceil32(return_data.size)) + 264] = 3
            mem[(8 * ceil32(return_data.size)) + 296 len 96] = call.data[calldata.size len 96]
            require cd[132] == uint8(cd[132])
            require ext_code.size(address(('cd', 4).length))
            staticcall address(('cd', 4).length).decimals() with:
                    gas gas_remaining wei
            mem[(8 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ('cd', 36)[3] == address(('cd', 36)[3])
            if not address(('cd', 36)[3]):
                mem[(10 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
                mem[(10 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
                mem[(10 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
                mem[(10 * ceil32(return_data.size)) + 460] = cd[68]
                mem[(10 * ceil32(return_data.size)) + 492] = uint8(cd[132])
                mem[(10 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
                mem[(10 * ceil32(return_data.size)) + 556] = 18
                require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
                delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
                     gas gas_remaining wei
                    args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, 18, mem[(10 * ceil32(return_data.size)) + 588 len 17 * ceil32(return_data.size)]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(10 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (11 * ceil32(return_data.size)) + 392
                require return_data.size >= 32
                _230 = mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
                require mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
                require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (10 * ceil32(return_data.size)) + return_data.size + 392
                _242 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
                if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
                    revert with 0, 65
                if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
                mem[(11 * ceil32(return_data.size)) + 392] = _242
                require return_data.size >= _230 + (32 * _242) + 32
                mem[(11 * ceil32(return_data.size)) + 424 len 32 * _242] = mem[(10 * ceil32(return_data.size)) + _230 + 424 len 32 * _242]
                require ext_code.size(sub_f27cda37Address)
                staticcall sub_f27cda37Address.getDev() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _658 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _676 = mem[_658]
                require mem[_658] == mem[_658 + 12 len 20]
                mem[mem[64] len 17747] = code.data[6752 len 17747]
                mem[mem[64] + 17747] = this.address
                mem[mem[64] + 17779] = sub_f27cda37Address
                mem[mem[64] + 17811] = address(_676)
                create contract with 0 wei
                                code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_676)
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                if 2 >= _242:
                    revert with 0, 50
                _747 = mem[(11 * ceil32(return_data.size)) + 488]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(create.new_address)
                mem[mem[64] + 68] = _747
                require ext_code.size(address(('cd', 4).length))
                call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address), _747
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _785 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_785] == bool(mem[_785])
                if not mem[_785]:
                    revert with 0, '8'
                call address(create.new_address) with:
                   value delegate.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _859 = mem[64]
                mem[64] = mem[64] + 96
                if 1 >= _242:
                    revert with 0, 50
                mem[_859] = mem[(11 * ceil32(return_data.size)) + 456]
                if 0 >= _242:
                    revert with 0, 50
                mem[_859 + 32] = mem[(11 * ceil32(return_data.size)) + 424]
                mem[_859 + 64] = delegate.return_data[0]
                _943 = mem[64]
                mem[64] = mem[64] + 64
                mem[_943] = msg.sender
                require ('cd', 4).length == address(('cd', 4).length)
                mem[_943 + 32] = address(('cd', 4).length)
                _973 = mem[64]
                mem[64] = mem[64] + 256
                mem[_973] = ('cd', 4)[0]
                mem[_973 + 32] = mem[_859]
                mem[_973 + 64] = mem[_859 + 32]
                mem[_973 + 96] = ('cd', 4)[2]
                mem[_973 + 128] = ('cd', 4)[1]
                mem[_973 + 160] = ('cd', 4)[3]
                mem[_973 + 192] = ('cd', 4)[4]
                mem[_973 + 224] = delegate.return_data[0]
                mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
                idx = 0
                s = _943
                t = mem[64] + 4
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68 len 256] = mem[_973 len 256]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 36)[1] == uint8(('cd', 36)[1])
                require ('cd', 36)[2] < calldata.size + -cd[36] - 35
                require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
                require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
                require ('cd', 36)[3] == address(('cd', 36)[3])
                idx = 0
                s = mem[64] + 196
                t = cd[36] + ('cd', 36)[2] + 36
                while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0x5b91703a with:
                     gas gas_remaining wei
                    args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                    require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                    require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                    mem[mem[64] + 4] = ('cd', 196).length
                    mem[mem[64] + 36] = ('cd', 196)[0]
                    mem[mem[64] + 68] = ('cd', 196)[1]
                    mem[mem[64] + 100] = ('cd', 196)[2]
                    mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).0xb7153b0f with:
                         gas gas_remaining wei
                        args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                    idx = 0
                    s = cd[4] + 292
                    t = mem[64] + 4
                    while idx < 4:
                        require cd[s] == uint8(cd[s])
                        mem[t] = uint8(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                    mem[mem[64] + 292] = 0
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + 4] = address(create.new_address)
                    mem[mem[64] + 36] = ('cd', 196).length
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                    mem[mem[64] + 100] = 1
                    mem[mem[64] + 132] = 0
                    require ext_code.size(sub_f27cda37Address)
                    call sub_f27cda37Address.0x2a23097e with:
                         gas gas_remaining wei
                        args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1543 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1575 = mem[_1543]
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).setPresaleId(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1543]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                    require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                    require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                    require ext_code.size(sub_f27cda37Address)
                    call sub_f27cda37Address.0xce9c9635 with:
                         gas gas_remaining wei
                        args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 36).length == bool(('cd', 36).length)
                    if not ('cd', 36).length:
                        require ('cd', 4).length == address(('cd', 4).length)
                        emit CertifiedPresaleCreated(_1575, msg.sender, address(('cd', 4).length));
                    else:
                        require ('cd', 36)[0] == bool(('cd', 36)[0])
                        require ('cd', 4).length == address(('cd', 4).length)
                        if not ('cd', 36)[0]:
                            emit CertifiedPresaleCreated(_1575, msg.sender, address(('cd', 4).length));
                        else:
                            emit CertifiedAutoPresaleCreated(_1575, msg.sender, address(('cd', 4).length), cd[164]);
                    stor0 = 1
                    return _1575
                require cd[132] == uint8(cd[132])
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args cd[68], cd[100], cd[132] << 248, cd[164]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + 4] = ('cd', 196).length
                mem[mem[64] + 36] = ('cd', 196)[0]
                mem[mem[64] + 68] = ('cd', 196)[1]
                mem[mem[64] + 100] = ('cd', 196)[2]
                mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xb7153b0f with:
                     gas gas_remaining wei
                    args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                idx = 0
                s = cd[4] + 292
                t = mem[64] + 4
                while idx < 4:
                    require cd[s] == uint8(cd[s])
                    mem[t] = uint8(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                mem[mem[64] + 292] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 4] = address(create.new_address)
                mem[mem[64] + 36] = ('cd', 196).length
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0x2a23097e with:
                     gas gas_remaining wei
                    args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1544 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1576 = mem[_1544]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setPresaleId(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_1544]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0xce9c9635 with:
                     gas gas_remaining wei
                    args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 4).length == address(('cd', 4).length)
                    emit CertifiedPresaleCreated(_1576, msg.sender, address(('cd', 4).length));
                else:
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    require ('cd', 4).length == address(('cd', 4).length)
                    if not ('cd', 36)[0]:
                        emit CertifiedPresaleCreated(_1576, msg.sender, address(('cd', 4).length));
                    else:
                        emit CertifiedAutoPresaleCreated(_1576, msg.sender, address(('cd', 4).length), cd[164]);
                stor0 = 1
                return _1576
            require ('cd', 36)[3] == address(('cd', 36)[3])
            mem[(10 * ceil32(return_data.size)) + 392] = 0x313ce56700000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(('cd', 36)[3]))
            staticcall address(('cd', 36)[3]).decimals() with:
                    gas gas_remaining wei
                   args mem[(10 * ceil32(return_data.size)) + 396 len 16 * ceil32(return_data.size)]
            mem[(10 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            mem[(12 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
            mem[(12 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
            mem[(12 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
            mem[(12 * ceil32(return_data.size)) + 460] = cd[68]
            mem[(12 * ceil32(return_data.size)) + 492] = uint8(cd[132])
            mem[(12 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
            mem[(12 * ceil32(return_data.size)) + 556] = uint8(ext_call.return_data[0])
            require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
            delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
                 gas gas_remaining wei
                args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(12 * ceil32(return_data.size)) + 588 len 20 * ceil32(return_data.size)]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(12 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (13 * ceil32(return_data.size)) + 392
            require return_data.size >= 32
            _306 = mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
            require mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
            require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (12 * ceil32(return_data.size)) + return_data.size + 392
            _321 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
            if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
                revert with 0, 65
            if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
                revert with 0, 65
            mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
            mem[(13 * ceil32(return_data.size)) + 392] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
            require return_data.size >= _306 + (32 * _321) + 32
            mem[(13 * ceil32(return_data.size)) + 424 len 32 * _321] = mem[(12 * ceil32(return_data.size)) + _306 + 424 len 32 * _321]
            require ext_code.size(sub_f27cda37Address)
            staticcall sub_f27cda37Address.getDev() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _659 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _677 = mem[_659]
            require mem[_659] == mem[_659 + 12 len 20]
            mem[mem[64] len 17747] = code.data[6752 len 17747]
            mem[mem[64] + 17747] = this.address
            mem[mem[64] + 17779] = sub_f27cda37Address
            mem[mem[64] + 17811] = address(_677)
            create contract with 0 wei
                            code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_677)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            if 2 >= _321:
                revert with 0, 50
            _750 = mem[(13 * ceil32(return_data.size)) + 488]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(create.new_address)
            mem[mem[64] + 68] = _750
            require ext_code.size(address(('cd', 4).length))
            call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address), _750
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _786 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_786] == bool(mem[_786])
            if not mem[_786]:
                revert with 0, '8'
            call address(create.new_address) with:
               value delegate.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _862 = mem[64]
            mem[64] = mem[64] + 96
            if 1 >= _321:
                revert with 0, 50
            mem[_862] = mem[(13 * ceil32(return_data.size)) + 456]
            if 0 >= _321:
                revert with 0, 50
            mem[_862 + 32] = mem[(13 * ceil32(return_data.size)) + 424]
            mem[_862 + 64] = delegate.return_data[0]
            _944 = mem[64]
            mem[64] = mem[64] + 64
            mem[_944] = msg.sender
            require ('cd', 4).length == address(('cd', 4).length)
            mem[_944 + 32] = address(('cd', 4).length)
            _976 = mem[64]
            mem[64] = mem[64] + 256
            mem[_976] = ('cd', 4)[0]
            mem[_976 + 32] = mem[_862]
            mem[_976 + 64] = mem[_862 + 32]
            mem[_976 + 96] = ('cd', 4)[2]
            mem[_976 + 128] = ('cd', 4)[1]
            mem[_976 + 160] = ('cd', 4)[3]
            mem[_976 + 192] = ('cd', 4)[4]
            mem[_976 + 224] = delegate.return_data[0]
            mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
            idx = 0
            s = _944
            t = mem[64] + 4
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68 len 256] = mem[_976 len 256]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            require ('cd', 36)[1] == uint8(('cd', 36)[1])
            require ('cd', 36)[2] < calldata.size + -cd[36] - 35
            require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
            require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
            require ('cd', 36)[3] == address(('cd', 36)[3])
            idx = 0
            s = mem[64] + 196
            t = cd[36] + ('cd', 36)[2] + 36
            while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x5b91703a with:
                 gas gas_remaining wei
                args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + 4] = ('cd', 196).length
                mem[mem[64] + 36] = ('cd', 196)[0]
                mem[mem[64] + 68] = ('cd', 196)[1]
                mem[mem[64] + 100] = ('cd', 196)[2]
                mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xb7153b0f with:
                     gas gas_remaining wei
                    args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                idx = 0
                s = cd[4] + 292
                t = mem[64] + 4
                while idx < 4:
                    require cd[s] == uint8(cd[s])
                    mem[t] = uint8(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                mem[mem[64] + 292] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 4] = address(create.new_address)
                mem[mem[64] + 36] = ('cd', 196).length
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0x2a23097e with:
                     gas gas_remaining wei
                    args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1545 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1577 = mem[_1545]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setPresaleId(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_1545]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0xce9c9635 with:
                     gas gas_remaining wei
                    args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 4).length == address(('cd', 4).length)
                    emit CertifiedPresaleCreated(_1577, msg.sender, address(('cd', 4).length));
                else:
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    require ('cd', 4).length == address(('cd', 4).length)
                    if not ('cd', 36)[0]:
                        emit CertifiedPresaleCreated(_1577, msg.sender, address(('cd', 4).length));
                    else:
                        emit CertifiedAutoPresaleCreated(_1577, msg.sender, address(('cd', 4).length), cd[164]);
                stor0 = 1
                return _1577
            require cd[132] == uint8(cd[132])
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args cd[68], cd[100], cd[132] << 248, cd[164]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[4] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            require ('cd', 196)[6] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + 4] = ('cd', 196).length
            mem[mem[64] + 36] = ('cd', 196)[0]
            mem[mem[64] + 68] = ('cd', 196)[1]
            mem[mem[64] + 100] = ('cd', 196)[2]
            mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xb7153b0f with:
                 gas gas_remaining wei
                args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
            idx = 0
            s = cd[4] + 292
            t = mem[64] + 4
            while idx < 4:
                require cd[s] == uint8(cd[s])
                mem[t] = uint8(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
            mem[mem[64] + 292] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 4] = address(create.new_address)
            mem[mem[64] + 36] = ('cd', 196).length
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 0
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0x2a23097e with:
                 gas gas_remaining wei
                args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1546 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1578 = mem[_1546]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setPresaleId(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_1546]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 4)[6] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0xce9c9635 with:
                 gas gas_remaining wei
                args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 4).length == address(('cd', 4).length)
                emit CertifiedPresaleCreated(_1578, msg.sender, address(('cd', 4).length));
            else:
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 4).length == address(('cd', 4).length)
                if not ('cd', 36)[0]:
                    emit CertifiedPresaleCreated(_1578, msg.sender, address(('cd', 4).length));
                else:
                    emit CertifiedAutoPresaleCreated(_1578, msg.sender, address(('cd', 4).length), cd[164]);
            stor0 = 1
            return _1578
        require ('cd', 36)[3] == address(('cd', 36)[3])
        mem[(4 * ceil32(return_data.size)) + 268] = address(('cd', 36)[3])
        require ext_code.size(sub_f27cda37Address)
        staticcall sub_f27cda37Address.isValidStablecoin(address rg1) with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 268 len (7 * ceil32(return_data.size)) + 32]
        mem[(4 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            mem[(8 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 268] = 32
            mem[(8 * ceil32(return_data.size)) + 300] = 1
            mem[(8 * ceil32(return_data.size)) + 332] = 0x3600000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (8 * ceil32(return_data.size)) + 264
               len (13 * ceil32(return_data.size)) + 100
        require ('cd', 4).length == address(('cd', 4).length)
        mem[(8 * ceil32(return_data.size)) + 268] = sub_f27cda37Address
        require ext_code.size(0x13d609c1b682f74bd3968c19f8967b7277879f4d)
        delegate 0x13d609c1b682f74bd3968c19f8967b7277879f4d.usdtToEthFee(address rg1) with:
             gas gas_remaining wei
            args mem[(8 * ceil32(return_data.size)) + 268 len (13 * ceil32(return_data.size)) + 32]
        mem[(8 * ceil32(return_data.size)) + 264] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value < delegate.return_data[0]:
            revert with 0, '7', mem[(9 * ceil32(return_data.size)) + 364 len 5 * ceil32(return_data.size)]
        if delegate.return_data[0] <= 0:
            revert with 0, '7', mem[(9 * ceil32(return_data.size)) + 364 len 5 * ceil32(return_data.size)]
        mem[(9 * ceil32(return_data.size)) + 264] = 3
        mem[(9 * ceil32(return_data.size)) + 296 len 96] = call.data[calldata.size len 96]
        require cd[132] == uint8(cd[132])
        require ext_code.size(address(('cd', 4).length))
        staticcall address(('cd', 4).length).decimals() with:
                gas gas_remaining wei
        mem[(9 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ('cd', 36)[3] == address(('cd', 36)[3])
        if not address(('cd', 36)[3]):
            mem[(10 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
            mem[(10 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
            mem[(10 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
            mem[(10 * ceil32(return_data.size)) + 460] = cd[68]
            mem[(10 * ceil32(return_data.size)) + 492] = uint8(cd[132])
            mem[(10 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
            mem[(10 * ceil32(return_data.size)) + 556] = 18
            require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
            delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
                 gas gas_remaining wei
                args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, 18
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(10 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (11 * ceil32(return_data.size)) + 392
            require return_data.size >= 32
            _328 = mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
            require mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (10 * ceil32(return_data.size)) + return_data.size + 392
            _340 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
                revert with 0, 65
            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
                revert with 0, 65
            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
            mem[(11 * ceil32(return_data.size)) + 392] = _340
            require return_data.size >= _328 + (32 * _340) + 32
            mem[(11 * ceil32(return_data.size)) + 424 len 32 * _340] = mem[(10 * ceil32(return_data.size)) + _328 + 424 len 32 * _340]
            require ext_code.size(sub_f27cda37Address)
            staticcall sub_f27cda37Address.getDev() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _660 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _678 = mem[_660]
            require mem[_660] == mem[_660 + 12 len 20]
            mem[mem[64] len 17747] = code.data[6752 len 17747]
            mem[mem[64] + 17747] = this.address
            mem[mem[64] + 17779] = sub_f27cda37Address
            mem[mem[64] + 17811] = address(_678)
            create contract with 0 wei
                            code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_678)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            if 2 >= _340:
                revert with 0, 50
            _753 = mem[(11 * ceil32(return_data.size)) + 488]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(create.new_address)
            mem[mem[64] + 68] = _753
            require ext_code.size(address(('cd', 4).length))
            call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address), _753
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _787 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_787] == bool(mem[_787])
            if not mem[_787]:
                revert with 0, '8'
            call address(create.new_address) with:
               value delegate.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _865 = mem[64]
            mem[64] = mem[64] + 96
            if 1 >= _340:
                revert with 0, 50
            mem[_865] = mem[(11 * ceil32(return_data.size)) + 456]
            if 0 >= _340:
                revert with 0, 50
            mem[_865 + 32] = mem[(11 * ceil32(return_data.size)) + 424]
            mem[_865 + 64] = delegate.return_data[0]
            _945 = mem[64]
            mem[64] = mem[64] + 64
            mem[_945] = msg.sender
            require ('cd', 4).length == address(('cd', 4).length)
            mem[_945 + 32] = address(('cd', 4).length)
            _979 = mem[64]
            mem[64] = mem[64] + 256
            mem[_979] = ('cd', 4)[0]
            mem[_979 + 32] = mem[_865]
            mem[_979 + 64] = mem[_865 + 32]
            mem[_979 + 96] = ('cd', 4)[2]
            mem[_979 + 128] = ('cd', 4)[1]
            mem[_979 + 160] = ('cd', 4)[3]
            mem[_979 + 192] = ('cd', 4)[4]
            mem[_979 + 224] = delegate.return_data[0]
            mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
            idx = 0
            s = _945
            t = mem[64] + 4
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68 len 256] = mem[_979 len 256]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            require ('cd', 36)[1] == uint8(('cd', 36)[1])
            require ('cd', 36)[2] < calldata.size + -cd[36] - 35
            require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
            require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
            require ('cd', 36)[3] == address(('cd', 36)[3])
            idx = 0
            s = mem[64] + 196
            t = cd[36] + ('cd', 36)[2] + 36
            while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x5b91703a with:
                 gas gas_remaining wei
                args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + 4] = ('cd', 196).length
                mem[mem[64] + 36] = ('cd', 196)[0]
                mem[mem[64] + 68] = ('cd', 196)[1]
                mem[mem[64] + 100] = ('cd', 196)[2]
                mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xb7153b0f with:
                     gas gas_remaining wei
                    args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                idx = 0
                s = cd[4] + 292
                t = mem[64] + 4
                while idx < 4:
                    require cd[s] == uint8(cd[s])
                    mem[t] = uint8(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                mem[mem[64] + 292] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 4] = address(create.new_address)
                mem[mem[64] + 36] = ('cd', 196).length
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0x2a23097e with:
                     gas gas_remaining wei
                    args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1547 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1579 = mem[_1547]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setPresaleId(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_1547]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0xce9c9635 with:
                     gas gas_remaining wei
                    args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 4).length == address(('cd', 4).length)
                    emit CertifiedPresaleCreated(_1579, msg.sender, address(('cd', 4).length));
                else:
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    require ('cd', 4).length == address(('cd', 4).length)
                    if not ('cd', 36)[0]:
                        emit CertifiedPresaleCreated(_1579, msg.sender, address(('cd', 4).length));
                    else:
                        emit CertifiedAutoPresaleCreated(_1579, msg.sender, address(('cd', 4).length), cd[164]);
                stor0 = 1
                return _1579
            require cd[132] == uint8(cd[132])
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args cd[68], cd[100], cd[132] << 248, cd[164]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[4] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            require ('cd', 196)[6] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + 4] = ('cd', 196).length
            mem[mem[64] + 36] = ('cd', 196)[0]
            mem[mem[64] + 68] = ('cd', 196)[1]
            mem[mem[64] + 100] = ('cd', 196)[2]
            mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xb7153b0f with:
                 gas gas_remaining wei
                args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
            idx = 0
            s = cd[4] + 292
            t = mem[64] + 4
            while idx < 4:
                require cd[s] == uint8(cd[s])
                mem[t] = uint8(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
            mem[mem[64] + 292] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 4] = address(create.new_address)
            mem[mem[64] + 36] = ('cd', 196).length
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 0
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0x2a23097e with:
                 gas gas_remaining wei
                args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1548 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1580 = mem[_1548]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setPresaleId(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_1548]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 4)[6] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0xce9c9635 with:
                 gas gas_remaining wei
                args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 4).length == address(('cd', 4).length)
                emit CertifiedPresaleCreated(_1580, msg.sender, address(('cd', 4).length));
            else:
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 4).length == address(('cd', 4).length)
                if not ('cd', 36)[0]:
                    emit CertifiedPresaleCreated(_1580, msg.sender, address(('cd', 4).length));
                else:
                    emit CertifiedAutoPresaleCreated(_1580, msg.sender, address(('cd', 4).length), cd[164]);
            stor0 = 1
            return _1580
        require ('cd', 36)[3] == address(('cd', 36)[3])
        require ext_code.size(address(('cd', 36)[3]))
        staticcall address(('cd', 36)[3]).decimals() with:
                gas gas_remaining wei
        mem[(10 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[(12 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
        mem[(12 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
        mem[(12 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
        mem[(12 * ceil32(return_data.size)) + 460] = cd[68]
        mem[(12 * ceil32(return_data.size)) + 492] = uint8(cd[132])
        mem[(12 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
        mem[(12 * ceil32(return_data.size)) + 556] = uint8(ext_call.return_data[0])
        require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
        delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
             gas gas_remaining wei
            args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(12 * ceil32(return_data.size)) + 588 len 5 * ceil32(return_data.size)]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(12 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (13 * ceil32(return_data.size)) + 392
        require return_data.size >= 32
        _449 = mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
        require mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (12 * ceil32(return_data.size)) + return_data.size + 392
        _465 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
        if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
            revert with 0, 65
        if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
            revert with 0, 65
        mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
        mem[(13 * ceil32(return_data.size)) + 392] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
        require return_data.size >= _449 + (32 * _465) + 32
        mem[(13 * ceil32(return_data.size)) + 424 len 32 * _465] = mem[(12 * ceil32(return_data.size)) + _449 + 424 len 32 * _465]
        require ext_code.size(sub_f27cda37Address)
        staticcall sub_f27cda37Address.getDev() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _661 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _679 = mem[_661]
        require mem[_661] == mem[_661 + 12 len 20]
        mem[mem[64] len 17747] = code.data[6752 len 17747]
        mem[mem[64] + 17747] = this.address
        mem[mem[64] + 17779] = sub_f27cda37Address
        mem[mem[64] + 17811] = address(_679)
        create contract with 0 wei
                        code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_679)
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if 2 >= _465:
            revert with 0, 50
        _756 = mem[(13 * ceil32(return_data.size)) + 488]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(create.new_address)
        mem[mem[64] + 68] = _756
        require ext_code.size(address(('cd', 4).length))
        call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(create.new_address), _756
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _788 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_788] == bool(mem[_788])
        if not mem[_788]:
            revert with 0, '8'
        call address(create.new_address) with:
           value delegate.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _868 = mem[64]
        mem[64] = mem[64] + 96
        if 1 >= _465:
            revert with 0, 50
        mem[_868] = mem[(13 * ceil32(return_data.size)) + 456]
        if 0 >= _465:
            revert with 0, 50
        mem[_868 + 32] = mem[(13 * ceil32(return_data.size)) + 424]
        mem[_868 + 64] = delegate.return_data[0]
        _946 = mem[64]
        mem[64] = mem[64] + 64
        mem[_946] = msg.sender
        require ('cd', 4).length == address(('cd', 4).length)
        mem[_946 + 32] = address(('cd', 4).length)
        _982 = mem[64]
        mem[64] = mem[64] + 256
        mem[_982] = ('cd', 4)[0]
        mem[_982 + 32] = mem[_868]
        mem[_982 + 64] = mem[_868 + 32]
        mem[_982 + 96] = ('cd', 4)[2]
        mem[_982 + 128] = ('cd', 4)[1]
        mem[_982 + 160] = ('cd', 4)[3]
        mem[_982 + 192] = ('cd', 4)[4]
        mem[_982 + 224] = delegate.return_data[0]
        mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
        idx = 0
        s = _946
        t = mem[64] + 4
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68 len 256] = mem[_982 len 256]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        require ('cd', 36)[0] == bool(('cd', 36)[0])
        require ('cd', 36)[1] == uint8(('cd', 36)[1])
        require ('cd', 36)[2] < calldata.size + -cd[36] - 35
        require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
        require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
        require ('cd', 36)[3] == address(('cd', 36)[3])
        idx = 0
        s = mem[64] + 196
        t = cd[36] + ('cd', 36)[2] + 36
        while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x5b91703a with:
             gas gas_remaining wei
            args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        if not ('cd', 36).length:
            require ('cd', 196)[4] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            require ('cd', 196)[6] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + 4] = ('cd', 196).length
            mem[mem[64] + 36] = ('cd', 196)[0]
            mem[mem[64] + 68] = ('cd', 196)[1]
            mem[mem[64] + 100] = ('cd', 196)[2]
            mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xb7153b0f with:
                 gas gas_remaining wei
                args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
            idx = 0
            s = cd[4] + 292
            t = mem[64] + 4
            while idx < 4:
                require cd[s] == uint8(cd[s])
                mem[t] = uint8(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
            mem[mem[64] + 292] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 4] = address(create.new_address)
            mem[mem[64] + 36] = ('cd', 196).length
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 0
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0x2a23097e with:
                 gas gas_remaining wei
                args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1549 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1581 = mem[_1549]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setPresaleId(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_1549]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 4)[6] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0xce9c9635 with:
                 gas gas_remaining wei
                args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 4).length == address(('cd', 4).length)
                emit CertifiedPresaleCreated(_1581, msg.sender, address(('cd', 4).length));
            else:
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 4).length == address(('cd', 4).length)
                if not ('cd', 36)[0]:
                    emit CertifiedPresaleCreated(_1581, msg.sender, address(('cd', 4).length));
                else:
                    emit CertifiedAutoPresaleCreated(_1581, msg.sender, address(('cd', 4).length), cd[164]);
            stor0 = 1
            return _1581
        require cd[132] == uint8(cd[132])
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args cd[68], cd[100], cd[132] << 248, cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 196)[4] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
        require ('cd', 196)[5] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
        require ('cd', 196)[6] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
        mem[mem[64] + 4] = ('cd', 196).length
        mem[mem[64] + 36] = ('cd', 196)[0]
        mem[mem[64] + 68] = ('cd', 196)[1]
        mem[mem[64] + 100] = ('cd', 196)[2]
        mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xb7153b0f with:
             gas gas_remaining wei
            args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
        idx = 0
        s = cd[4] + 292
        t = mem[64] + 4
        while idx < 4:
            require cd[s] == uint8(cd[s])
            mem[t] = uint8(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
        mem[mem[64] + 292] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 196)[5] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + 4] = address(create.new_address)
        mem[mem[64] + 36] = ('cd', 196).length
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 0
        require ext_code.size(sub_f27cda37Address)
        call sub_f27cda37Address.0x2a23097e with:
             gas gas_remaining wei
            args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1550 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1582 = mem[_1550]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setPresaleId(uint256 rg1) with:
             gas gas_remaining wei
            args mem[_1550]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 4)[6] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
        require ext_code.size(sub_f27cda37Address)
        call sub_f27cda37Address.0xce9c9635 with:
             gas gas_remaining wei
            args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        if not ('cd', 36).length:
            require ('cd', 4).length == address(('cd', 4).length)
            emit CertifiedPresaleCreated(_1582, msg.sender, address(('cd', 4).length));
        else:
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            require ('cd', 4).length == address(('cd', 4).length)
            if not ('cd', 36)[0]:
                emit CertifiedPresaleCreated(_1582, msg.sender, address(('cd', 4).length));
            else:
                emit CertifiedAutoPresaleCreated(_1582, msg.sender, address(('cd', 4).length), cd[164]);
        stor0 = 1
        return _1582
    if ('cd', 4)[4] >= cd[164]:
        mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 268] = 32
        mem[(4 * ceil32(return_data.size)) + 300] = 1
        mem[(4 * ceil32(return_data.size)) + 332] = 0x3200000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 264
           len (5 * ceil32(return_data.size)) + 100
    require cd[132] == uint8(cd[132])
    if uint8(cd[132]) <= 0:
        mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 268] = 32
        mem[(4 * ceil32(return_data.size)) + 300] = 1
        mem[(4 * ceil32(return_data.size)) + 332] = 0x3200000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 264
           len (5 * ceil32(return_data.size)) + 100
    if not cd[68]:
        mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 268] = 32
        mem[(4 * ceil32(return_data.size)) + 300] = 1
        mem[(4 * ceil32(return_data.size)) + 332] = 0x3200000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 264
           len (5 * ceil32(return_data.size)) + 100
    if cd[100] <= 29:
        mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 268] = 32
        mem[(4 * ceil32(return_data.size)) + 300] = 1
        mem[(4 * ceil32(return_data.size)) + 332] = 0x3200000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 264
           len (5 * ceil32(return_data.size)) + 100
    require ('cd', 36)[2] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
    if cd[(cd[36] + ('cd', 36)[2] + 4)]:
        if 72 * 24 * 3600 > !block.timestamp:
            revert with 0, 17
        if block.timestamp + (72 * 24 * 3600) > ('cd', 4)[3]:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3400000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (5 * ceil32(return_data.size)) + 100
        if ('cd', 4)[4] < ('cd', 4)[3]:
            revert with 0, 17
        if 6900 >= ('cd', 4)[4] - ('cd', 4)[3]:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (5 * ceil32(return_data.size)) + 100
        if ('cd', 4)[0] <= 0:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (5 * ceil32(return_data.size)) + 100
        if ('cd', 4)[2] <= 0:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (5 * ceil32(return_data.size)) + 100
        if ('cd', 4)[1] <= 0:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (5 * ceil32(return_data.size)) + 100
        if ('cd', 4)[1] < ('cd', 4)[2]:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (5 * ceil32(return_data.size)) + 100
        require ('cd', 36)[3] == address(('cd', 36)[3])
        if not address(('cd', 36)[3]):
            require ('cd', 4).length == address(('cd', 4).length)
            mem[(4 * ceil32(return_data.size)) + 268] = sub_f27cda37Address
            require ext_code.size(0x13d609c1b682f74bd3968c19f8967b7277879f4d)
            delegate 0x13d609c1b682f74bd3968c19f8967b7277879f4d.usdtToEthFee(address rg1) with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 268 len (5 * ceil32(return_data.size)) + 32]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if msg.value < delegate.return_data[0]:
                mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 268] = 32
                mem[(4 * ceil32(return_data.size)) + 300] = 1
                mem[(4 * ceil32(return_data.size)) + 332] = 0x3700000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 264
                   len (7 * ceil32(return_data.size)) + 100
            if delegate.return_data[0] <= 0:
                mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 268] = 32
                mem[(4 * ceil32(return_data.size)) + 300] = 1
                mem[(4 * ceil32(return_data.size)) + 332] = 0x3700000000000000000000000000000000000000000000000000000000000000
                revert with memory
                  from (4 * ceil32(return_data.size)) + 264
                   len (7 * ceil32(return_data.size)) + 100
            mem[(4 * ceil32(return_data.size)) + 264] = 3
            mem[(4 * ceil32(return_data.size)) + 296 len 96] = call.data[calldata.size len 96]
            require cd[132] == uint8(cd[132])
            require ext_code.size(address(('cd', 4).length))
            staticcall address(('cd', 4).length).decimals() with:
                    gas gas_remaining wei
            mem[(4 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            require ('cd', 36)[3] == address(('cd', 36)[3])
            if not address(('cd', 36)[3]):
                mem[(6 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
                mem[(6 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
                mem[(6 * ceil32(return_data.size)) + 460] = cd[68]
                mem[(6 * ceil32(return_data.size)) + 492] = uint8(cd[132])
                mem[(6 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
                mem[(6 * ceil32(return_data.size)) + 556] = 18
                require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
                delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
                     gas gas_remaining wei
                    args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, 18, mem[(6 * ceil32(return_data.size)) + 588 len 9 * ceil32(return_data.size)]
                if not delegate.return_code:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(6 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (7 * ceil32(return_data.size)) + 392
                require return_data.size >= 32
                _252 = mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
                require mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
                require (6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (6 * ceil32(return_data.size)) + return_data.size + 392
                _263 = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
                if mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
                    revert with 0, 65
                if (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
                    revert with 0, 65
                mem[64] = (7 * ceil32(return_data.size)) + ceil32(32 * mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
                mem[(7 * ceil32(return_data.size)) + 392] = mem[(6 * ceil32(return_data.size)) + mem[(6 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
                require return_data.size >= _252 + (32 * _263) + 32
                mem[(7 * ceil32(return_data.size)) + 424 len 32 * _263] = mem[(6 * ceil32(return_data.size)) + _252 + 424 len 32 * _263]
                require ext_code.size(sub_f27cda37Address)
                staticcall sub_f27cda37Address.getDev() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _662 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _680 = mem[_662]
                require mem[_662] == mem[_662 + 12 len 20]
                mem[mem[64] len 17747] = code.data[6752 len 17747]
                mem[mem[64] + 17747] = this.address
                mem[mem[64] + 17779] = sub_f27cda37Address
                mem[mem[64] + 17811] = address(_680)
                create contract with 0 wei
                                code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_680)
                if not create.new_address:
                    revert with ext_call.return_data[0 len return_data.size]
                if 2 >= _263:
                    revert with 0, 50
                _759 = mem[(7 * ceil32(return_data.size)) + 488]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(create.new_address)
                mem[mem[64] + 68] = _759
                require ext_code.size(address(('cd', 4).length))
                call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args msg.sender, address(create.new_address), _759
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _789 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_789] == bool(mem[_789])
                if not mem[_789]:
                    revert with 0, '8'
                call address(create.new_address) with:
                   value delegate.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _871 = mem[64]
                mem[64] = mem[64] + 96
                if 1 >= _263:
                    revert with 0, 50
                mem[_871] = mem[(7 * ceil32(return_data.size)) + 456]
                if 0 >= _263:
                    revert with 0, 50
                mem[_871 + 32] = mem[(7 * ceil32(return_data.size)) + 424]
                mem[_871 + 64] = delegate.return_data[0]
                _947 = mem[64]
                mem[64] = mem[64] + 64
                mem[_947] = msg.sender
                require ('cd', 4).length == address(('cd', 4).length)
                mem[_947 + 32] = address(('cd', 4).length)
                _985 = mem[64]
                mem[64] = mem[64] + 256
                mem[_985] = ('cd', 4)[0]
                mem[_985 + 32] = mem[_871]
                mem[_985 + 64] = mem[_871 + 32]
                mem[_985 + 96] = ('cd', 4)[2]
                mem[_985 + 128] = ('cd', 4)[1]
                mem[_985 + 160] = ('cd', 4)[3]
                mem[_985 + 192] = ('cd', 4)[4]
                mem[_985 + 224] = delegate.return_data[0]
                mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
                idx = 0
                s = _947
                t = mem[64] + 4
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 68 len 256] = mem[_985 len 256]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 320]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 36)[1] == uint8(('cd', 36)[1])
                require ('cd', 36)[2] < calldata.size + -cd[36] - 35
                require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
                require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
                require ('cd', 36)[3] == address(('cd', 36)[3])
                idx = 0
                s = mem[64] + 196
                t = cd[36] + ('cd', 36)[2] + 36
                while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
                    require cd[t] == address(cd[t])
                    mem[s] = address(cd[t])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0x5b91703a with:
                     gas gas_remaining wei
                    args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                    require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                    require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                    mem[mem[64] + 4] = ('cd', 196).length
                    mem[mem[64] + 36] = ('cd', 196)[0]
                    mem[mem[64] + 68] = ('cd', 196)[1]
                    mem[mem[64] + 100] = ('cd', 196)[2]
                    mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).0xb7153b0f with:
                         gas gas_remaining wei
                        args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                    idx = 0
                    s = cd[4] + 292
                    t = mem[64] + 4
                    while idx < 4:
                        require cd[s] == uint8(cd[s])
                        mem[t] = uint8(cd[s])
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                    mem[mem[64] + 292] = 0
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                    require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                    require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + 4] = address(create.new_address)
                    mem[mem[64] + 36] = ('cd', 196).length
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                    mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                    mem[mem[64] + 100] = 1
                    mem[mem[64] + 132] = 0
                    require ext_code.size(sub_f27cda37Address)
                    call sub_f27cda37Address.0x2a23097e with:
                         gas gas_remaining wei
                        args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1551 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1583 = mem[_1551]
                    require ext_code.size(address(create.new_address))
                    call address(create.new_address).setPresaleId(uint256 rg1) with:
                         gas gas_remaining wei
                        args mem[_1551]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                    require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                    require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                    require ext_code.size(sub_f27cda37Address)
                    call sub_f27cda37Address.0xce9c9635 with:
                         gas gas_remaining wei
                        args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ('cd', 36).length == bool(('cd', 36).length)
                    if not ('cd', 36).length:
                        require ('cd', 4).length == address(('cd', 4).length)
                        emit CertifiedPresaleCreated(_1583, msg.sender, address(('cd', 4).length));
                    else:
                        require ('cd', 36)[0] == bool(('cd', 36)[0])
                        require ('cd', 4).length == address(('cd', 4).length)
                        if not ('cd', 36)[0]:
                            emit CertifiedPresaleCreated(_1583, msg.sender, address(('cd', 4).length));
                        else:
                            emit CertifiedAutoPresaleCreated(_1583, msg.sender, address(('cd', 4).length), cd[164]);
                    stor0 = 1
                    return _1583
                require cd[132] == uint8(cd[132])
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
                     gas gas_remaining wei
                    args cd[68], cd[100], cd[132] << 248, cd[164]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + 4] = ('cd', 196).length
                mem[mem[64] + 36] = ('cd', 196)[0]
                mem[mem[64] + 68] = ('cd', 196)[1]
                mem[mem[64] + 100] = ('cd', 196)[2]
                mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xb7153b0f with:
                     gas gas_remaining wei
                    args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                idx = 0
                s = cd[4] + 292
                t = mem[64] + 4
                while idx < 4:
                    require cd[s] == uint8(cd[s])
                    mem[t] = uint8(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                mem[mem[64] + 292] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 4] = address(create.new_address)
                mem[mem[64] + 36] = ('cd', 196).length
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0x2a23097e with:
                     gas gas_remaining wei
                    args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1552 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1584 = mem[_1552]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setPresaleId(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_1552]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0xce9c9635 with:
                     gas gas_remaining wei
                    args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 4).length == address(('cd', 4).length)
                    emit CertifiedPresaleCreated(_1584, msg.sender, address(('cd', 4).length));
                else:
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    require ('cd', 4).length == address(('cd', 4).length)
                    if not ('cd', 36)[0]:
                        emit CertifiedPresaleCreated(_1584, msg.sender, address(('cd', 4).length));
                    else:
                        emit CertifiedAutoPresaleCreated(_1584, msg.sender, address(('cd', 4).length), cd[164]);
                stor0 = 1
                return _1584
            require ('cd', 36)[3] == address(('cd', 36)[3])
            mem[(6 * ceil32(return_data.size)) + 392] = 0x313ce56700000000000000000000000000000000000000000000000000000000
            require ext_code.size(address(('cd', 36)[3]))
            staticcall address(('cd', 36)[3]).decimals() with:
                    gas gas_remaining wei
                   args mem[(6 * ceil32(return_data.size)) + 396 len 8 * ceil32(return_data.size)]
            mem[(6 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            mem[(8 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
            mem[(8 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
            mem[(8 * ceil32(return_data.size)) + 460] = cd[68]
            mem[(8 * ceil32(return_data.size)) + 492] = uint8(cd[132])
            mem[(8 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
            mem[(8 * ceil32(return_data.size)) + 556] = uint8(ext_call.return_data[0])
            require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
            delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + 396 len (13 * ceil32(return_data.size)) + 192]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (10 * ceil32(return_data.size)) + 392
            require return_data.size >= 32
            _337 = mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
            require mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
            require (8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (8 * ceil32(return_data.size)) + return_data.size + 392
            _352 = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
            if mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
                revert with 0, 65
            if (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
                revert with 0, 65
            mem[64] = (10 * ceil32(return_data.size)) + ceil32(32 * mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
            mem[(10 * ceil32(return_data.size)) + 392] = mem[(8 * ceil32(return_data.size)) + mem[(8 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
            require return_data.size >= _337 + (32 * _352) + 32
            mem[(10 * ceil32(return_data.size)) + 424 len 32 * _352] = mem[(8 * ceil32(return_data.size)) + _337 + 424 len 32 * _352]
            require ext_code.size(sub_f27cda37Address)
            staticcall sub_f27cda37Address.getDev() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _663 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _681 = mem[_663]
            require mem[_663] == mem[_663 + 12 len 20]
            mem[mem[64] len 17747] = code.data[6752 len 17747]
            mem[mem[64] + 17747] = this.address
            mem[mem[64] + 17779] = sub_f27cda37Address
            mem[mem[64] + 17811] = address(_681)
            create contract with 0 wei
                            code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_681)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            if 2 >= _352:
                revert with 0, 50
            _762 = mem[(10 * ceil32(return_data.size)) + 488]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(create.new_address)
            mem[mem[64] + 68] = _762
            require ext_code.size(address(('cd', 4).length))
            call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address), _762
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _790 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_790] == bool(mem[_790])
            if not mem[_790]:
                revert with 0, '8'
            call address(create.new_address) with:
               value delegate.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _874 = mem[64]
            mem[64] = mem[64] + 96
            if 1 >= _352:
                revert with 0, 50
            mem[_874] = mem[(10 * ceil32(return_data.size)) + 456]
            if 0 >= _352:
                revert with 0, 50
            mem[_874 + 32] = mem[(10 * ceil32(return_data.size)) + 424]
            mem[_874 + 64] = delegate.return_data[0]
            _948 = mem[64]
            mem[64] = mem[64] + 64
            mem[_948] = msg.sender
            require ('cd', 4).length == address(('cd', 4).length)
            mem[_948 + 32] = address(('cd', 4).length)
            _988 = mem[64]
            mem[64] = mem[64] + 256
            mem[_988] = ('cd', 4)[0]
            mem[_988 + 32] = mem[_874]
            mem[_988 + 64] = mem[_874 + 32]
            mem[_988 + 96] = ('cd', 4)[2]
            mem[_988 + 128] = ('cd', 4)[1]
            mem[_988 + 160] = ('cd', 4)[3]
            mem[_988 + 192] = ('cd', 4)[4]
            mem[_988 + 224] = delegate.return_data[0]
            mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
            idx = 0
            s = _948
            t = mem[64] + 4
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68 len 256] = mem[_988 len 256]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            require ('cd', 36)[1] == uint8(('cd', 36)[1])
            require ('cd', 36)[2] < calldata.size + -cd[36] - 35
            require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
            require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
            require ('cd', 36)[3] == address(('cd', 36)[3])
            idx = 0
            s = mem[64] + 196
            t = cd[36] + ('cd', 36)[2] + 36
            while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x5b91703a with:
                 gas gas_remaining wei
                args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + 4] = ('cd', 196).length
                mem[mem[64] + 36] = ('cd', 196)[0]
                mem[mem[64] + 68] = ('cd', 196)[1]
                mem[mem[64] + 100] = ('cd', 196)[2]
                mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xb7153b0f with:
                     gas gas_remaining wei
                    args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                idx = 0
                s = cd[4] + 292
                t = mem[64] + 4
                while idx < 4:
                    require cd[s] == uint8(cd[s])
                    mem[t] = uint8(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                mem[mem[64] + 292] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 4] = address(create.new_address)
                mem[mem[64] + 36] = ('cd', 196).length
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0x2a23097e with:
                     gas gas_remaining wei
                    args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1553 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1585 = mem[_1553]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setPresaleId(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_1553]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0xce9c9635 with:
                     gas gas_remaining wei
                    args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 4).length == address(('cd', 4).length)
                    emit CertifiedPresaleCreated(_1585, msg.sender, address(('cd', 4).length));
                else:
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    require ('cd', 4).length == address(('cd', 4).length)
                    if not ('cd', 36)[0]:
                        emit CertifiedPresaleCreated(_1585, msg.sender, address(('cd', 4).length));
                    else:
                        emit CertifiedAutoPresaleCreated(_1585, msg.sender, address(('cd', 4).length), cd[164]);
                stor0 = 1
                return _1585
            require cd[132] == uint8(cd[132])
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args cd[68], cd[100], cd[132] << 248, cd[164]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[4] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            require ('cd', 196)[6] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + 4] = ('cd', 196).length
            mem[mem[64] + 36] = ('cd', 196)[0]
            mem[mem[64] + 68] = ('cd', 196)[1]
            mem[mem[64] + 100] = ('cd', 196)[2]
            mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xb7153b0f with:
                 gas gas_remaining wei
                args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
            idx = 0
            s = cd[4] + 292
            t = mem[64] + 4
            while idx < 4:
                require cd[s] == uint8(cd[s])
                mem[t] = uint8(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
            mem[mem[64] + 292] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 4] = address(create.new_address)
            mem[mem[64] + 36] = ('cd', 196).length
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 0
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0x2a23097e with:
                 gas gas_remaining wei
                args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1554 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1586 = mem[_1554]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setPresaleId(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_1554]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 4)[6] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0xce9c9635 with:
                 gas gas_remaining wei
                args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 4).length == address(('cd', 4).length)
                emit CertifiedPresaleCreated(_1586, msg.sender, address(('cd', 4).length));
            else:
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 4).length == address(('cd', 4).length)
                if not ('cd', 36)[0]:
                    emit CertifiedPresaleCreated(_1586, msg.sender, address(('cd', 4).length));
                else:
                    emit CertifiedAutoPresaleCreated(_1586, msg.sender, address(('cd', 4).length), cd[164]);
            stor0 = 1
            return _1586
        require ('cd', 36)[3] == address(('cd', 36)[3])
        mem[(4 * ceil32(return_data.size)) + 268] = address(('cd', 36)[3])
        require ext_code.size(sub_f27cda37Address)
        staticcall sub_f27cda37Address.isValidStablecoin(address rg1) with:
                gas gas_remaining wei
               args mem[(4 * ceil32(return_data.size)) + 268 len (5 * ceil32(return_data.size)) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 268] = 32
            mem[(4 * ceil32(return_data.size)) + 300] = 1
            mem[(4 * ceil32(return_data.size)) + 332] = 0x3600000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (4 * ceil32(return_data.size)) + 264
               len (7 * ceil32(return_data.size)) + 100
        require ('cd', 4).length == address(('cd', 4).length)
        mem[(4 * ceil32(return_data.size)) + 268] = sub_f27cda37Address
        require ext_code.size(0x13d609c1b682f74bd3968c19f8967b7277879f4d)
        delegate 0x13d609c1b682f74bd3968c19f8967b7277879f4d.usdtToEthFee(address rg1) with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 268 len (7 * ceil32(return_data.size)) + 32]
        mem[(4 * ceil32(return_data.size)) + 264] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value < delegate.return_data[0]:
            mem[(8 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 268] = 32
            mem[(8 * ceil32(return_data.size)) + 300] = 1
            mem[(8 * ceil32(return_data.size)) + 332] = 0x3700000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (8 * ceil32(return_data.size)) + 264
               len (13 * ceil32(return_data.size)) + 100
        if delegate.return_data[0] <= 0:
            mem[(8 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 268] = 32
            mem[(8 * ceil32(return_data.size)) + 300] = 1
            mem[(8 * ceil32(return_data.size)) + 332] = 0x3700000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (8 * ceil32(return_data.size)) + 264
               len (13 * ceil32(return_data.size)) + 100
        mem[(8 * ceil32(return_data.size)) + 264] = 3
        mem[(8 * ceil32(return_data.size)) + 296 len 96] = call.data[calldata.size len 96]
        require cd[132] == uint8(cd[132])
        require ext_code.size(address(('cd', 4).length))
        staticcall address(('cd', 4).length).decimals() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ('cd', 36)[3] == address(('cd', 36)[3])
        if not address(('cd', 36)[3]):
            mem[(10 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
            mem[(10 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
            mem[(10 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
            mem[(10 * ceil32(return_data.size)) + 460] = cd[68]
            mem[(10 * ceil32(return_data.size)) + 492] = uint8(cd[132])
            mem[(10 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
            mem[(10 * ceil32(return_data.size)) + 556] = 18
            require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
            delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
                 gas gas_remaining wei
                args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, 18, mem[(10 * ceil32(return_data.size)) + 588 len 17 * ceil32(return_data.size)]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(10 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (11 * ceil32(return_data.size)) + 392
            require return_data.size >= 32
            _360 = mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
            require mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (10 * ceil32(return_data.size)) + return_data.size + 392
            _376 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
                revert with 0, 65
            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
                revert with 0, 65
            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
            mem[(11 * ceil32(return_data.size)) + 392] = _376
            require return_data.size >= _360 + (32 * _376) + 32
            mem[(11 * ceil32(return_data.size)) + 424 len 32 * _376] = mem[(10 * ceil32(return_data.size)) + _360 + 424 len 32 * _376]
            require ext_code.size(sub_f27cda37Address)
            staticcall sub_f27cda37Address.getDev() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _664 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _682 = mem[_664]
            require mem[_664] == mem[_664 + 12 len 20]
            mem[mem[64] len 17747] = code.data[6752 len 17747]
            mem[mem[64] + 17747] = this.address
            mem[mem[64] + 17779] = sub_f27cda37Address
            mem[mem[64] + 17811] = address(_682)
            create contract with 0 wei
                            code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_682)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            if 2 >= _376:
                revert with 0, 50
            _765 = mem[(11 * ceil32(return_data.size)) + 488]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(create.new_address)
            mem[mem[64] + 68] = _765
            require ext_code.size(address(('cd', 4).length))
            call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address), _765
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _791 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_791] == bool(mem[_791])
            if not mem[_791]:
                revert with 0, '8'
            call address(create.new_address) with:
               value delegate.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _877 = mem[64]
            mem[64] = mem[64] + 96
            if 1 >= _376:
                revert with 0, 50
            mem[_877] = mem[(11 * ceil32(return_data.size)) + 456]
            if 0 >= _376:
                revert with 0, 50
            mem[_877 + 32] = mem[(11 * ceil32(return_data.size)) + 424]
            mem[_877 + 64] = delegate.return_data[0]
            _949 = mem[64]
            mem[64] = mem[64] + 64
            mem[_949] = msg.sender
            require ('cd', 4).length == address(('cd', 4).length)
            mem[_949 + 32] = address(('cd', 4).length)
            _991 = mem[64]
            mem[64] = mem[64] + 256
            mem[_991] = ('cd', 4)[0]
            mem[_991 + 32] = mem[_877]
            mem[_991 + 64] = mem[_877 + 32]
            mem[_991 + 96] = ('cd', 4)[2]
            mem[_991 + 128] = ('cd', 4)[1]
            mem[_991 + 160] = ('cd', 4)[3]
            mem[_991 + 192] = ('cd', 4)[4]
            mem[_991 + 224] = delegate.return_data[0]
            mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
            idx = 0
            s = _949
            t = mem[64] + 4
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68 len 256] = mem[_991 len 256]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            require ('cd', 36)[1] == uint8(('cd', 36)[1])
            require ('cd', 36)[2] < calldata.size + -cd[36] - 35
            require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
            require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
            require ('cd', 36)[3] == address(('cd', 36)[3])
            idx = 0
            s = mem[64] + 196
            t = cd[36] + ('cd', 36)[2] + 36
            while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x5b91703a with:
                 gas gas_remaining wei
                args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + 4] = ('cd', 196).length
                mem[mem[64] + 36] = ('cd', 196)[0]
                mem[mem[64] + 68] = ('cd', 196)[1]
                mem[mem[64] + 100] = ('cd', 196)[2]
                mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xb7153b0f with:
                     gas gas_remaining wei
                    args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                idx = 0
                s = cd[4] + 292
                t = mem[64] + 4
                while idx < 4:
                    require cd[s] == uint8(cd[s])
                    mem[t] = uint8(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                mem[mem[64] + 292] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 4] = address(create.new_address)
                mem[mem[64] + 36] = ('cd', 196).length
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0x2a23097e with:
                     gas gas_remaining wei
                    args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1555 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1587 = mem[_1555]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setPresaleId(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_1555]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0xce9c9635 with:
                     gas gas_remaining wei
                    args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 4).length == address(('cd', 4).length)
                    emit CertifiedPresaleCreated(_1587, msg.sender, address(('cd', 4).length));
                else:
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    require ('cd', 4).length == address(('cd', 4).length)
                    if not ('cd', 36)[0]:
                        emit CertifiedPresaleCreated(_1587, msg.sender, address(('cd', 4).length));
                    else:
                        emit CertifiedAutoPresaleCreated(_1587, msg.sender, address(('cd', 4).length), cd[164]);
                stor0 = 1
                return _1587
            require cd[132] == uint8(cd[132])
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args cd[68], cd[100], cd[132] << 248, cd[164]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[4] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            require ('cd', 196)[6] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + 4] = ('cd', 196).length
            mem[mem[64] + 36] = ('cd', 196)[0]
            mem[mem[64] + 68] = ('cd', 196)[1]
            mem[mem[64] + 100] = ('cd', 196)[2]
            mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xb7153b0f with:
                 gas gas_remaining wei
                args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
            idx = 0
            s = cd[4] + 292
            t = mem[64] + 4
            while idx < 4:
                require cd[s] == uint8(cd[s])
                mem[t] = uint8(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
            mem[mem[64] + 292] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 4] = address(create.new_address)
            mem[mem[64] + 36] = ('cd', 196).length
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 0
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0x2a23097e with:
                 gas gas_remaining wei
                args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1556 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1588 = mem[_1556]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setPresaleId(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_1556]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 4)[6] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0xce9c9635 with:
                 gas gas_remaining wei
                args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 4).length == address(('cd', 4).length)
                emit CertifiedPresaleCreated(_1588, msg.sender, address(('cd', 4).length));
            else:
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 4).length == address(('cd', 4).length)
                if not ('cd', 36)[0]:
                    emit CertifiedPresaleCreated(_1588, msg.sender, address(('cd', 4).length));
                else:
                    emit CertifiedAutoPresaleCreated(_1588, msg.sender, address(('cd', 4).length), cd[164]);
            stor0 = 1
            return _1588
        require ('cd', 36)[3] == address(('cd', 36)[3])
        mem[(10 * ceil32(return_data.size)) + 392] = 0x313ce56700000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(('cd', 36)[3]))
        staticcall address(('cd', 36)[3]).decimals() with:
                gas gas_remaining wei
               args mem[(10 * ceil32(return_data.size)) + 396 len 16 * ceil32(return_data.size)]
        mem[(10 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[(12 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
        mem[(12 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
        mem[(12 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
        mem[(12 * ceil32(return_data.size)) + 460] = cd[68]
        mem[(12 * ceil32(return_data.size)) + 492] = uint8(cd[132])
        mem[(12 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
        mem[(12 * ceil32(return_data.size)) + 556] = uint8(ext_call.return_data[0])
        require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
        delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
             gas gas_remaining wei
            args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(12 * ceil32(return_data.size)) + 588 len 20 * ceil32(return_data.size)]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(12 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (13 * ceil32(return_data.size)) + 392
        require return_data.size >= 32
        _494 = mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
        require mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (12 * ceil32(return_data.size)) + return_data.size + 392
        _514 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
        if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
            revert with 0, 65
        if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
            revert with 0, 65
        mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
        mem[(13 * ceil32(return_data.size)) + 392] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
        require return_data.size >= _494 + (32 * _514) + 32
        mem[(13 * ceil32(return_data.size)) + 424 len 32 * _514] = mem[(12 * ceil32(return_data.size)) + _494 + 424 len 32 * _514]
        require ext_code.size(sub_f27cda37Address)
        staticcall sub_f27cda37Address.getDev() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _665 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _683 = mem[_665]
        require mem[_665] == mem[_665 + 12 len 20]
        mem[mem[64] len 17747] = code.data[6752 len 17747]
        mem[mem[64] + 17747] = this.address
        mem[mem[64] + 17779] = sub_f27cda37Address
        mem[mem[64] + 17811] = address(_683)
        create contract with 0 wei
                        code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_683)
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if 2 >= _514:
            revert with 0, 50
        _768 = mem[(13 * ceil32(return_data.size)) + 488]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(create.new_address)
        mem[mem[64] + 68] = _768
        require ext_code.size(address(('cd', 4).length))
        call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(create.new_address), _768
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _792 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_792] == bool(mem[_792])
        if not mem[_792]:
            revert with 0, '8'
        call address(create.new_address) with:
           value delegate.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _880 = mem[64]
        mem[64] = mem[64] + 96
        if 1 >= _514:
            revert with 0, 50
        mem[_880] = mem[(13 * ceil32(return_data.size)) + 456]
        if 0 >= _514:
            revert with 0, 50
        mem[_880 + 32] = mem[(13 * ceil32(return_data.size)) + 424]
        mem[_880 + 64] = delegate.return_data[0]
        _950 = mem[64]
        mem[64] = mem[64] + 64
        mem[_950] = msg.sender
        require ('cd', 4).length == address(('cd', 4).length)
        mem[_950 + 32] = address(('cd', 4).length)
        _994 = mem[64]
        mem[64] = mem[64] + 256
        mem[_994] = ('cd', 4)[0]
        mem[_994 + 32] = mem[_880]
        mem[_994 + 64] = mem[_880 + 32]
        mem[_994 + 96] = ('cd', 4)[2]
        mem[_994 + 128] = ('cd', 4)[1]
        mem[_994 + 160] = ('cd', 4)[3]
        mem[_994 + 192] = ('cd', 4)[4]
        mem[_994 + 224] = delegate.return_data[0]
        mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
        idx = 0
        s = _950
        t = mem[64] + 4
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68 len 256] = mem[_994 len 256]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        require ('cd', 36)[0] == bool(('cd', 36)[0])
        require ('cd', 36)[1] == uint8(('cd', 36)[1])
        require ('cd', 36)[2] < calldata.size + -cd[36] - 35
        require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
        require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
        require ('cd', 36)[3] == address(('cd', 36)[3])
        idx = 0
        s = mem[64] + 196
        t = cd[36] + ('cd', 36)[2] + 36
        while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x5b91703a with:
             gas gas_remaining wei
            args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        if not ('cd', 36).length:
            require ('cd', 196)[4] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            require ('cd', 196)[6] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + 4] = ('cd', 196).length
            mem[mem[64] + 36] = ('cd', 196)[0]
            mem[mem[64] + 68] = ('cd', 196)[1]
            mem[mem[64] + 100] = ('cd', 196)[2]
            mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xb7153b0f with:
                 gas gas_remaining wei
                args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
            idx = 0
            s = cd[4] + 292
            t = mem[64] + 4
            while idx < 4:
                require cd[s] == uint8(cd[s])
                mem[t] = uint8(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
            mem[mem[64] + 292] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 4] = address(create.new_address)
            mem[mem[64] + 36] = ('cd', 196).length
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 0
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0x2a23097e with:
                 gas gas_remaining wei
                args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1557 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1589 = mem[_1557]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setPresaleId(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_1557]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 4)[6] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0xce9c9635 with:
                 gas gas_remaining wei
                args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 4).length == address(('cd', 4).length)
                emit CertifiedPresaleCreated(_1589, msg.sender, address(('cd', 4).length));
            else:
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 4).length == address(('cd', 4).length)
                if not ('cd', 36)[0]:
                    emit CertifiedPresaleCreated(_1589, msg.sender, address(('cd', 4).length));
                else:
                    emit CertifiedAutoPresaleCreated(_1589, msg.sender, address(('cd', 4).length), cd[164]);
            stor0 = 1
            return _1589
        require cd[132] == uint8(cd[132])
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args cd[68], cd[100], cd[132] << 248, cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 196)[4] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
        require ('cd', 196)[5] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
        require ('cd', 196)[6] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
        mem[mem[64] + 4] = ('cd', 196).length
        mem[mem[64] + 36] = ('cd', 196)[0]
        mem[mem[64] + 68] = ('cd', 196)[1]
        mem[mem[64] + 100] = ('cd', 196)[2]
        mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xb7153b0f with:
             gas gas_remaining wei
            args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
        idx = 0
        s = cd[4] + 292
        t = mem[64] + 4
        while idx < 4:
            require cd[s] == uint8(cd[s])
            mem[t] = uint8(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
        mem[mem[64] + 292] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 196)[5] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + 4] = address(create.new_address)
        mem[mem[64] + 36] = ('cd', 196).length
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 0
        require ext_code.size(sub_f27cda37Address)
        call sub_f27cda37Address.0x2a23097e with:
             gas gas_remaining wei
            args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1558 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1590 = mem[_1558]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setPresaleId(uint256 rg1) with:
             gas gas_remaining wei
            args mem[_1558]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 4)[6] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
        require ext_code.size(sub_f27cda37Address)
        call sub_f27cda37Address.0xce9c9635 with:
             gas gas_remaining wei
            args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        if not ('cd', 36).length:
            require ('cd', 4).length == address(('cd', 4).length)
            emit CertifiedPresaleCreated(_1590, msg.sender, address(('cd', 4).length));
        else:
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            require ('cd', 4).length == address(('cd', 4).length)
            if not ('cd', 36)[0]:
                emit CertifiedPresaleCreated(_1590, msg.sender, address(('cd', 4).length));
            else:
                emit CertifiedAutoPresaleCreated(_1590, msg.sender, address(('cd', 4).length), cd[164]);
        stor0 = 1
        return _1590
    mem[(4 * ceil32(return_data.size)) + 264] = 0x2962863c00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_f27cda37Address)
    staticcall sub_f27cda37Address.getRegistrationTime() with:
            gas gas_remaining wei
           args mem[(4 * ceil32(return_data.size)) + 268 len 5 * ceil32(return_data.size)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp > !ext_call.return_data[0]:
        revert with 0, 17
    if 72 * 24 * 3600 > !(block.timestamp + ext_call.return_data[0]):
        revert with 0, 17
    if block.timestamp + ext_call.return_data[0] + (72 * 24 * 3600) > ('cd', 4)[3]:
        mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 268] = 32
        mem[(4 * ceil32(return_data.size)) + 300] = 1
        mem[(4 * ceil32(return_data.size)) + 332] = 0x3300000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 264
           len (7 * ceil32(return_data.size)) + 100
    if ('cd', 4)[4] < ('cd', 4)[3]:
        revert with 0, 17
    if 6900 >= ('cd', 4)[4] - ('cd', 4)[3]:
        mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 268] = 32
        mem[(4 * ceil32(return_data.size)) + 300] = 1
        mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 264
           len (7 * ceil32(return_data.size)) + 100
    if ('cd', 4)[0] <= 0:
        mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 268] = 32
        mem[(4 * ceil32(return_data.size)) + 300] = 1
        mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 264
           len (7 * ceil32(return_data.size)) + 100
    if ('cd', 4)[2] <= 0:
        mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 268] = 32
        mem[(4 * ceil32(return_data.size)) + 300] = 1
        mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 264
           len (7 * ceil32(return_data.size)) + 100
    if ('cd', 4)[1] <= 0:
        mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 268] = 32
        mem[(4 * ceil32(return_data.size)) + 300] = 1
        mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 264
           len (7 * ceil32(return_data.size)) + 100
    if ('cd', 4)[1] < ('cd', 4)[2]:
        mem[(4 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 268] = 32
        mem[(4 * ceil32(return_data.size)) + 300] = 1
        mem[(4 * ceil32(return_data.size)) + 332] = 0x3500000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (4 * ceil32(return_data.size)) + 264
           len (7 * ceil32(return_data.size)) + 100
    require ('cd', 36)[3] == address(('cd', 36)[3])
    if not address(('cd', 36)[3]):
        require ('cd', 4).length == address(('cd', 4).length)
        mem[(4 * ceil32(return_data.size)) + 268] = sub_f27cda37Address
        require ext_code.size(0x13d609c1b682f74bd3968c19f8967b7277879f4d)
        delegate 0x13d609c1b682f74bd3968c19f8967b7277879f4d.usdtToEthFee(address rg1) with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 268 len (7 * ceil32(return_data.size)) + 32]
        mem[(4 * ceil32(return_data.size)) + 264] = delegate.return_data[0]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value < delegate.return_data[0]:
            mem[(8 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 268] = 32
            mem[(8 * ceil32(return_data.size)) + 300] = 1
            mem[(8 * ceil32(return_data.size)) + 332] = 0x3700000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (8 * ceil32(return_data.size)) + 264
               len (13 * ceil32(return_data.size)) + 100
        if delegate.return_data[0] <= 0:
            mem[(8 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 268] = 32
            mem[(8 * ceil32(return_data.size)) + 300] = 1
            mem[(8 * ceil32(return_data.size)) + 332] = 0x3700000000000000000000000000000000000000000000000000000000000000
            revert with memory
              from (8 * ceil32(return_data.size)) + 264
               len (13 * ceil32(return_data.size)) + 100
        mem[(8 * ceil32(return_data.size)) + 264] = 3
        mem[(8 * ceil32(return_data.size)) + 296 len 96] = call.data[calldata.size len 96]
        require cd[132] == uint8(cd[132])
        require ext_code.size(address(('cd', 4).length))
        staticcall address(('cd', 4).length).decimals() with:
                gas gas_remaining wei
        mem[(8 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        require ('cd', 36)[3] == address(('cd', 36)[3])
        if not address(('cd', 36)[3]):
            mem[(10 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
            mem[(10 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
            mem[(10 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
            mem[(10 * ceil32(return_data.size)) + 460] = cd[68]
            mem[(10 * ceil32(return_data.size)) + 492] = uint8(cd[132])
            mem[(10 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
            mem[(10 * ceil32(return_data.size)) + 556] = 18
            require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
            delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
                 gas gas_remaining wei
                args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, 18, mem[(10 * ceil32(return_data.size)) + 588 len 17 * ceil32(return_data.size)]
            if not delegate.return_code:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(10 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (11 * ceil32(return_data.size)) + 392
            require return_data.size >= 32
            _305 = mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
            require mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
            require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (10 * ceil32(return_data.size)) + return_data.size + 392
            _317 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
            if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
                revert with 0, 65
            if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
                revert with 0, 65
            mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
            mem[(11 * ceil32(return_data.size)) + 392] = _317
            require return_data.size >= _305 + (32 * _317) + 32
            mem[(11 * ceil32(return_data.size)) + 424 len 32 * _317] = mem[(10 * ceil32(return_data.size)) + _305 + 424 len 32 * _317]
            require ext_code.size(sub_f27cda37Address)
            staticcall sub_f27cda37Address.getDev() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _666 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _684 = mem[_666]
            require mem[_666] == mem[_666 + 12 len 20]
            mem[mem[64] len 17747] = code.data[6752 len 17747]
            mem[mem[64] + 17747] = this.address
            mem[mem[64] + 17779] = sub_f27cda37Address
            mem[mem[64] + 17811] = address(_684)
            create contract with 0 wei
                            code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_684)
            if not create.new_address:
                revert with ext_call.return_data[0 len return_data.size]
            if 2 >= _317:
                revert with 0, 50
            _771 = mem[(11 * ceil32(return_data.size)) + 488]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = address(create.new_address)
            mem[mem[64] + 68] = _771
            require ext_code.size(address(('cd', 4).length))
            call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
                 gas gas_remaining wei
                args msg.sender, address(create.new_address), _771
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _793 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_793] == bool(mem[_793])
            if not mem[_793]:
                revert with 0, '8'
            call address(create.new_address) with:
               value delegate.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _883 = mem[64]
            mem[64] = mem[64] + 96
            if 1 >= _317:
                revert with 0, 50
            mem[_883] = mem[(11 * ceil32(return_data.size)) + 456]
            if 0 >= _317:
                revert with 0, 50
            mem[_883 + 32] = mem[(11 * ceil32(return_data.size)) + 424]
            mem[_883 + 64] = delegate.return_data[0]
            _951 = mem[64]
            mem[64] = mem[64] + 64
            mem[_951] = msg.sender
            require ('cd', 4).length == address(('cd', 4).length)
            mem[_951 + 32] = address(('cd', 4).length)
            _997 = mem[64]
            mem[64] = mem[64] + 256
            mem[_997] = ('cd', 4)[0]
            mem[_997 + 32] = mem[_883]
            mem[_997 + 64] = mem[_883 + 32]
            mem[_997 + 96] = ('cd', 4)[2]
            mem[_997 + 128] = ('cd', 4)[1]
            mem[_997 + 160] = ('cd', 4)[3]
            mem[_997 + 192] = ('cd', 4)[4]
            mem[_997 + 224] = delegate.return_data[0]
            mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
            idx = 0
            s = _951
            t = mem[64] + 4
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 68 len 256] = mem[_997 len 256]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 320]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            require ('cd', 36)[1] == uint8(('cd', 36)[1])
            require ('cd', 36)[2] < calldata.size + -cd[36] - 35
            require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
            require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
            require ('cd', 36)[3] == address(('cd', 36)[3])
            idx = 0
            s = mem[64] + 196
            t = cd[36] + ('cd', 36)[2] + 36
            while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0x5b91703a with:
                 gas gas_remaining wei
                args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 196)[4] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                require ('cd', 196)[6] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + 4] = ('cd', 196).length
                mem[mem[64] + 36] = ('cd', 196)[0]
                mem[mem[64] + 68] = ('cd', 196)[1]
                mem[mem[64] + 100] = ('cd', 196)[2]
                mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
                mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).0xb7153b0f with:
                     gas gas_remaining wei
                    args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
                idx = 0
                s = cd[4] + 292
                t = mem[64] + 4
                while idx < 4:
                    require cd[s] == uint8(cd[s])
                    mem[t] = uint8(cd[s])
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
                mem[mem[64] + 292] = 0
                require ext_code.size(address(create.new_address))
                call address(create.new_address).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 196)[5] < calldata.size + -cd[196] - 35
                require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
                require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 4] = address(create.new_address)
                mem[mem[64] + 36] = ('cd', 196).length
                mem[mem[64] + 68] = 160
                mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
                mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 0
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0x2a23097e with:
                     gas gas_remaining wei
                    args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1559 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1591 = mem[_1559]
                require ext_code.size(address(create.new_address))
                call address(create.new_address).setPresaleId(uint256 rg1) with:
                     gas gas_remaining wei
                    args mem[_1559]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 4)[6] < calldata.size + -cd[4] - 35
                require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
                require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
                require ext_code.size(sub_f27cda37Address)
                call sub_f27cda37Address.0xce9c9635 with:
                     gas gas_remaining wei
                    args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ('cd', 36).length == bool(('cd', 36).length)
                if not ('cd', 36).length:
                    require ('cd', 4).length == address(('cd', 4).length)
                    emit CertifiedPresaleCreated(_1591, msg.sender, address(('cd', 4).length));
                else:
                    require ('cd', 36)[0] == bool(('cd', 36)[0])
                    require ('cd', 4).length == address(('cd', 4).length)
                    if not ('cd', 36)[0]:
                        emit CertifiedPresaleCreated(_1591, msg.sender, address(('cd', 4).length));
                    else:
                        emit CertifiedAutoPresaleCreated(_1591, msg.sender, address(('cd', 4).length), cd[164]);
                stor0 = 1
                return _1591
            require cd[132] == uint8(cd[132])
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
                 gas gas_remaining wei
                args cd[68], cd[100], cd[132] << 248, cd[164]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[4] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            require ('cd', 196)[6] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + 4] = ('cd', 196).length
            mem[mem[64] + 36] = ('cd', 196)[0]
            mem[mem[64] + 68] = ('cd', 196)[1]
            mem[mem[64] + 100] = ('cd', 196)[2]
            mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xb7153b0f with:
                 gas gas_remaining wei
                args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
            idx = 0
            s = cd[4] + 292
            t = mem[64] + 4
            while idx < 4:
                require cd[s] == uint8(cd[s])
                mem[t] = uint8(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
            mem[mem[64] + 292] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 4] = address(create.new_address)
            mem[mem[64] + 36] = ('cd', 196).length
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 0
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0x2a23097e with:
                 gas gas_remaining wei
                args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1560 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1592 = mem[_1560]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setPresaleId(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_1560]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 4)[6] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0xce9c9635 with:
                 gas gas_remaining wei
                args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 4).length == address(('cd', 4).length)
                emit CertifiedPresaleCreated(_1592, msg.sender, address(('cd', 4).length));
            else:
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 4).length == address(('cd', 4).length)
                if not ('cd', 36)[0]:
                    emit CertifiedPresaleCreated(_1592, msg.sender, address(('cd', 4).length));
                else:
                    emit CertifiedAutoPresaleCreated(_1592, msg.sender, address(('cd', 4).length), cd[164]);
            stor0 = 1
            return _1592
        require ('cd', 36)[3] == address(('cd', 36)[3])
        mem[(10 * ceil32(return_data.size)) + 392] = 0x313ce56700000000000000000000000000000000000000000000000000000000
        require ext_code.size(address(('cd', 36)[3]))
        staticcall address(('cd', 36)[3]).decimals() with:
                gas gas_remaining wei
               args mem[(10 * ceil32(return_data.size)) + 396 len 16 * ceil32(return_data.size)]
        mem[(10 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        mem[(12 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
        mem[(12 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
        mem[(12 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
        mem[(12 * ceil32(return_data.size)) + 460] = cd[68]
        mem[(12 * ceil32(return_data.size)) + 492] = uint8(cd[132])
        mem[(12 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
        mem[(12 * ceil32(return_data.size)) + 556] = uint8(ext_call.return_data[0])
        require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
        delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
             gas gas_remaining wei
            args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(12 * ceil32(return_data.size)) + 588 len 20 * ceil32(return_data.size)]
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(12 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (13 * ceil32(return_data.size)) + 392
        require return_data.size >= 32
        _414 = mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
        require mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
        require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (12 * ceil32(return_data.size)) + return_data.size + 392
        _431 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
        if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
            revert with 0, 65
        if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
            revert with 0, 65
        mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
        mem[(13 * ceil32(return_data.size)) + 392] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
        require return_data.size >= _414 + (32 * _431) + 32
        mem[(13 * ceil32(return_data.size)) + 424 len 32 * _431] = mem[(12 * ceil32(return_data.size)) + _414 + 424 len 32 * _431]
        require ext_code.size(sub_f27cda37Address)
        staticcall sub_f27cda37Address.getDev() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _667 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _685 = mem[_667]
        require mem[_667] == mem[_667 + 12 len 20]
        mem[mem[64] len 17747] = code.data[6752 len 17747]
        mem[mem[64] + 17747] = this.address
        mem[mem[64] + 17779] = sub_f27cda37Address
        mem[mem[64] + 17811] = address(_685)
        create contract with 0 wei
                        code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_685)
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if 2 >= _431:
            revert with 0, 50
        _774 = mem[(13 * ceil32(return_data.size)) + 488]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(create.new_address)
        mem[mem[64] + 68] = _774
        require ext_code.size(address(('cd', 4).length))
        call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(create.new_address), _774
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _794 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_794] == bool(mem[_794])
        if not mem[_794]:
            revert with 0, '8'
        call address(create.new_address) with:
           value delegate.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _886 = mem[64]
        mem[64] = mem[64] + 96
        if 1 >= _431:
            revert with 0, 50
        mem[_886] = mem[(13 * ceil32(return_data.size)) + 456]
        if 0 >= _431:
            revert with 0, 50
        mem[_886 + 32] = mem[(13 * ceil32(return_data.size)) + 424]
        mem[_886 + 64] = delegate.return_data[0]
        _952 = mem[64]
        mem[64] = mem[64] + 64
        mem[_952] = msg.sender
        require ('cd', 4).length == address(('cd', 4).length)
        mem[_952 + 32] = address(('cd', 4).length)
        _1000 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1000] = ('cd', 4)[0]
        mem[_1000 + 32] = mem[_886]
        mem[_1000 + 64] = mem[_886 + 32]
        mem[_1000 + 96] = ('cd', 4)[2]
        mem[_1000 + 128] = ('cd', 4)[1]
        mem[_1000 + 160] = ('cd', 4)[3]
        mem[_1000 + 192] = ('cd', 4)[4]
        mem[_1000 + 224] = delegate.return_data[0]
        mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
        idx = 0
        s = _952
        t = mem[64] + 4
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68 len 256] = mem[_1000 len 256]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        require ('cd', 36)[0] == bool(('cd', 36)[0])
        require ('cd', 36)[1] == uint8(('cd', 36)[1])
        require ('cd', 36)[2] < calldata.size + -cd[36] - 35
        require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
        require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
        require ('cd', 36)[3] == address(('cd', 36)[3])
        idx = 0
        s = mem[64] + 196
        t = cd[36] + ('cd', 36)[2] + 36
        while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x5b91703a with:
             gas gas_remaining wei
            args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        if not ('cd', 36).length:
            require ('cd', 196)[4] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            require ('cd', 196)[6] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + 4] = ('cd', 196).length
            mem[mem[64] + 36] = ('cd', 196)[0]
            mem[mem[64] + 68] = ('cd', 196)[1]
            mem[mem[64] + 100] = ('cd', 196)[2]
            mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xb7153b0f with:
                 gas gas_remaining wei
                args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
            idx = 0
            s = cd[4] + 292
            t = mem[64] + 4
            while idx < 4:
                require cd[s] == uint8(cd[s])
                mem[t] = uint8(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
            mem[mem[64] + 292] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 4] = address(create.new_address)
            mem[mem[64] + 36] = ('cd', 196).length
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 0
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0x2a23097e with:
                 gas gas_remaining wei
                args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1561 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1593 = mem[_1561]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setPresaleId(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_1561]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 4)[6] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0xce9c9635 with:
                 gas gas_remaining wei
                args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 4).length == address(('cd', 4).length)
                emit CertifiedPresaleCreated(_1593, msg.sender, address(('cd', 4).length));
            else:
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 4).length == address(('cd', 4).length)
                if not ('cd', 36)[0]:
                    emit CertifiedPresaleCreated(_1593, msg.sender, address(('cd', 4).length));
                else:
                    emit CertifiedAutoPresaleCreated(_1593, msg.sender, address(('cd', 4).length), cd[164]);
            stor0 = 1
            return _1593
        require cd[132] == uint8(cd[132])
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args cd[68], cd[100], cd[132] << 248, cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 196)[4] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
        require ('cd', 196)[5] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
        require ('cd', 196)[6] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
        mem[mem[64] + 4] = ('cd', 196).length
        mem[mem[64] + 36] = ('cd', 196)[0]
        mem[mem[64] + 68] = ('cd', 196)[1]
        mem[mem[64] + 100] = ('cd', 196)[2]
        mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xb7153b0f with:
             gas gas_remaining wei
            args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
        idx = 0
        s = cd[4] + 292
        t = mem[64] + 4
        while idx < 4:
            require cd[s] == uint8(cd[s])
            mem[t] = uint8(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
        mem[mem[64] + 292] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 196)[5] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + 4] = address(create.new_address)
        mem[mem[64] + 36] = ('cd', 196).length
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 0
        require ext_code.size(sub_f27cda37Address)
        call sub_f27cda37Address.0x2a23097e with:
             gas gas_remaining wei
            args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1562 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1594 = mem[_1562]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setPresaleId(uint256 rg1) with:
             gas gas_remaining wei
            args mem[_1562]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 4)[6] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
        require ext_code.size(sub_f27cda37Address)
        call sub_f27cda37Address.0xce9c9635 with:
             gas gas_remaining wei
            args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        if not ('cd', 36).length:
            require ('cd', 4).length == address(('cd', 4).length)
            emit CertifiedPresaleCreated(_1594, msg.sender, address(('cd', 4).length));
        else:
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            require ('cd', 4).length == address(('cd', 4).length)
            if not ('cd', 36)[0]:
                emit CertifiedPresaleCreated(_1594, msg.sender, address(('cd', 4).length));
            else:
                emit CertifiedAutoPresaleCreated(_1594, msg.sender, address(('cd', 4).length), cd[164]);
        stor0 = 1
        return _1594
    require ('cd', 36)[3] == address(('cd', 36)[3])
    mem[(4 * ceil32(return_data.size)) + 268] = address(('cd', 36)[3])
    require ext_code.size(sub_f27cda37Address)
    staticcall sub_f27cda37Address.isValidStablecoin(address rg1) with:
            gas gas_remaining wei
           args mem[(4 * ceil32(return_data.size)) + 268 len (7 * ceil32(return_data.size)) + 32]
    mem[(4 * ceil32(return_data.size)) + 264] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        mem[(8 * ceil32(return_data.size)) + 264] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 268] = 32
        mem[(8 * ceil32(return_data.size)) + 300] = 1
        mem[(8 * ceil32(return_data.size)) + 332] = 0x3600000000000000000000000000000000000000000000000000000000000000
        revert with memory
          from (8 * ceil32(return_data.size)) + 264
           len (13 * ceil32(return_data.size)) + 100
    require ('cd', 4).length == address(('cd', 4).length)
    mem[(8 * ceil32(return_data.size)) + 268] = sub_f27cda37Address
    require ext_code.size(0x13d609c1b682f74bd3968c19f8967b7277879f4d)
    delegate 0x13d609c1b682f74bd3968c19f8967b7277879f4d.usdtToEthFee(address rg1) with:
         gas gas_remaining wei
        args mem[(8 * ceil32(return_data.size)) + 268 len (13 * ceil32(return_data.size)) + 32]
    mem[(8 * ceil32(return_data.size)) + 264] = delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value < delegate.return_data[0]:
        revert with 0, '7', mem[(9 * ceil32(return_data.size)) + 364 len 5 * ceil32(return_data.size)]
    if delegate.return_data[0] <= 0:
        revert with 0, '7', mem[(9 * ceil32(return_data.size)) + 364 len 5 * ceil32(return_data.size)]
    mem[(9 * ceil32(return_data.size)) + 264] = 3
    mem[(9 * ceil32(return_data.size)) + 296 len 96] = call.data[calldata.size len 96]
    require cd[132] == uint8(cd[132])
    require ext_code.size(address(('cd', 4).length))
    staticcall address(('cd', 4).length).decimals() with:
            gas gas_remaining wei
    mem[(9 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ('cd', 36)[3] == address(('cd', 36)[3])
    if not address(('cd', 36)[3]):
        mem[(10 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
        mem[(10 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
        mem[(10 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
        mem[(10 * ceil32(return_data.size)) + 460] = cd[68]
        mem[(10 * ceil32(return_data.size)) + 492] = uint8(cd[132])
        mem[(10 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
        mem[(10 * ceil32(return_data.size)) + 556] = 18
        require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
        delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
             gas gas_remaining wei
            args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, 18
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(10 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (11 * ceil32(return_data.size)) + 392
        require return_data.size >= 32
        _444 = mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
        require mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
        require (10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (10 * ceil32(return_data.size)) + return_data.size + 392
        _461 = mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
        if mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
            revert with 0, 65
        if (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
            revert with 0, 65
        mem[64] = (11 * ceil32(return_data.size)) + ceil32(32 * mem[(10 * ceil32(return_data.size)) + mem[(10 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
        mem[(11 * ceil32(return_data.size)) + 392] = _461
        require return_data.size >= _444 + (32 * _461) + 32
        mem[(11 * ceil32(return_data.size)) + 424 len 32 * _461] = mem[(10 * ceil32(return_data.size)) + _444 + 424 len 32 * _461]
        require ext_code.size(sub_f27cda37Address)
        staticcall sub_f27cda37Address.getDev() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _668 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _686 = mem[_668]
        require mem[_668] == mem[_668 + 12 len 20]
        mem[mem[64] len 17747] = code.data[6752 len 17747]
        mem[mem[64] + 17747] = this.address
        mem[mem[64] + 17779] = sub_f27cda37Address
        mem[mem[64] + 17811] = address(_686)
        create contract with 0 wei
                        code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_686)
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if 2 >= _461:
            revert with 0, 50
        _777 = mem[(11 * ceil32(return_data.size)) + 488]
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(create.new_address)
        mem[mem[64] + 68] = _777
        require ext_code.size(address(('cd', 4).length))
        call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args msg.sender, address(create.new_address), _777
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _795 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_795] == bool(mem[_795])
        if not mem[_795]:
            revert with 0, '8'
        call address(create.new_address) with:
           value delegate.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _889 = mem[64]
        mem[64] = mem[64] + 96
        if 1 >= _461:
            revert with 0, 50
        mem[_889] = mem[(11 * ceil32(return_data.size)) + 456]
        if 0 >= _461:
            revert with 0, 50
        mem[_889 + 32] = mem[(11 * ceil32(return_data.size)) + 424]
        mem[_889 + 64] = delegate.return_data[0]
        _953 = mem[64]
        mem[64] = mem[64] + 64
        mem[_953] = msg.sender
        require ('cd', 4).length == address(('cd', 4).length)
        mem[_953 + 32] = address(('cd', 4).length)
        _1003 = mem[64]
        mem[64] = mem[64] + 256
        mem[_1003] = ('cd', 4)[0]
        mem[_1003 + 32] = mem[_889]
        mem[_1003 + 64] = mem[_889 + 32]
        mem[_1003 + 96] = ('cd', 4)[2]
        mem[_1003 + 128] = ('cd', 4)[1]
        mem[_1003 + 160] = ('cd', 4)[3]
        mem[_1003 + 192] = ('cd', 4)[4]
        mem[_1003 + 224] = delegate.return_data[0]
        mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
        idx = 0
        s = _953
        t = mem[64] + 4
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 68 len 256] = mem[_1003 len 256]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        require ('cd', 36)[0] == bool(('cd', 36)[0])
        require ('cd', 36)[1] == uint8(('cd', 36)[1])
        require ('cd', 36)[2] < calldata.size + -cd[36] - 35
        require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
        require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
        require ('cd', 36)[3] == address(('cd', 36)[3])
        idx = 0
        s = mem[64] + 196
        t = cd[36] + ('cd', 36)[2] + 36
        while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0x5b91703a with:
             gas gas_remaining wei
            args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        if not ('cd', 36).length:
            require ('cd', 196)[4] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            require ('cd', 196)[6] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + 4] = ('cd', 196).length
            mem[mem[64] + 36] = ('cd', 196)[0]
            mem[mem[64] + 68] = ('cd', 196)[1]
            mem[mem[64] + 100] = ('cd', 196)[2]
            mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
            mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).0xb7153b0f with:
                 gas gas_remaining wei
                args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
            idx = 0
            s = cd[4] + 292
            t = mem[64] + 4
            while idx < 4:
                require cd[s] == uint8(cd[s])
                mem[t] = uint8(cd[s])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
            mem[mem[64] + 292] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 196)[5] < calldata.size + -cd[196] - 35
            require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
            require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 4] = address(create.new_address)
            mem[mem[64] + 36] = ('cd', 196).length
            mem[mem[64] + 68] = 160
            mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
            mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
            mem[mem[64] + 100] = 1
            mem[mem[64] + 132] = 0
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0x2a23097e with:
                 gas gas_remaining wei
                args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1563 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1595 = mem[_1563]
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setPresaleId(uint256 rg1) with:
                 gas gas_remaining wei
                args mem[_1563]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 4)[6] < calldata.size + -cd[4] - 35
            require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
            require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
            require ext_code.size(sub_f27cda37Address)
            call sub_f27cda37Address.0xce9c9635 with:
                 gas gas_remaining wei
                args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ('cd', 36).length == bool(('cd', 36).length)
            if not ('cd', 36).length:
                require ('cd', 4).length == address(('cd', 4).length)
                emit CertifiedPresaleCreated(_1595, msg.sender, address(('cd', 4).length));
            else:
                require ('cd', 36)[0] == bool(('cd', 36)[0])
                require ('cd', 4).length == address(('cd', 4).length)
                if not ('cd', 36)[0]:
                    emit CertifiedPresaleCreated(_1595, msg.sender, address(('cd', 4).length));
                else:
                    emit CertifiedAutoPresaleCreated(_1595, msg.sender, address(('cd', 4).length), cd[164]);
            stor0 = 1
            return _1595
        require cd[132] == uint8(cd[132])
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args cd[68], cd[100], cd[132] << 248, cd[164]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 196)[4] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
        require ('cd', 196)[5] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
        require ('cd', 196)[6] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
        mem[mem[64] + 4] = ('cd', 196).length
        mem[mem[64] + 36] = ('cd', 196)[0]
        mem[mem[64] + 68] = ('cd', 196)[1]
        mem[mem[64] + 100] = ('cd', 196)[2]
        mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xb7153b0f with:
             gas gas_remaining wei
            args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
        idx = 0
        s = cd[4] + 292
        t = mem[64] + 4
        while idx < 4:
            require cd[s] == uint8(cd[s])
            mem[t] = uint8(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
        mem[mem[64] + 292] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 196)[5] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + 4] = address(create.new_address)
        mem[mem[64] + 36] = ('cd', 196).length
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 0
        require ext_code.size(sub_f27cda37Address)
        call sub_f27cda37Address.0x2a23097e with:
             gas gas_remaining wei
            args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _1564 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _1596 = mem[_1564]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setPresaleId(uint256 rg1) with:
             gas gas_remaining wei
            args mem[_1564]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 4)[6] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
        require ext_code.size(sub_f27cda37Address)
        call sub_f27cda37Address.0xce9c9635 with:
             gas gas_remaining wei
            args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        if not ('cd', 36).length:
            require ('cd', 4).length == address(('cd', 4).length)
            emit CertifiedPresaleCreated(_1596, msg.sender, address(('cd', 4).length));
        else:
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            require ('cd', 4).length == address(('cd', 4).length)
            if not ('cd', 36)[0]:
                emit CertifiedPresaleCreated(_1596, msg.sender, address(('cd', 4).length));
            else:
                emit CertifiedAutoPresaleCreated(_1596, msg.sender, address(('cd', 4).length), cd[164]);
        stor0 = 1
        return _1596
    require ('cd', 36)[3] == address(('cd', 36)[3])
    require ext_code.size(address(('cd', 36)[3]))
    staticcall address(('cd', 36)[3]).decimals() with:
            gas gas_remaining wei
    mem[(10 * ceil32(return_data.size)) + 392] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    mem[(12 * ceil32(return_data.size)) + 392] = 0x6af2de0c00000000000000000000000000000000000000000000000000000000
    mem[(12 * ceil32(return_data.size)) + 396] = ('cd', 4)[1]
    mem[(12 * ceil32(return_data.size)) + 428] = ('cd', 4)[0]
    mem[(12 * ceil32(return_data.size)) + 460] = cd[68]
    mem[(12 * ceil32(return_data.size)) + 492] = uint8(cd[132])
    mem[(12 * ceil32(return_data.size)) + 524] = uint8(ext_call.return_data[0])
    mem[(12 * ceil32(return_data.size)) + 556] = uint8(ext_call.return_data[0])
    require ext_code.size(0x7a640980a2578e6d5e259ab645f04080a17e0209)
    delegate 0x7a640980a2578e6d5e259ab645f04080a17e0209.countAmountOfTokens(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4, uint8 rg5, uint8 rg6) with:
         gas gas_remaining wei
        args ('cd', 4)[1], ('cd', 4)[0], cd[68], cd[132] << 248, ext_call.return_data[0] << 248, ext_call.return_data[0] << 248, mem[(12 * ceil32(return_data.size)) + 588 len 5 * ceil32(return_data.size)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(12 * ceil32(return_data.size)) + 392 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (13 * ceil32(return_data.size)) + 392
    require return_data.size >= 32
    _591 = mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32
    require mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 <= test266151307()
    require (12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 423 < (12 * ceil32(return_data.size)) + return_data.size + 392
    _607 = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
    if mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392] > test266151307():
        revert with 0, 65
    if (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393 > test266151307() or ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 1 < 0:
        revert with 0, 65
    mem[64] = (13 * ceil32(return_data.size)) + ceil32(32 * mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]) + 393
    mem[(13 * ceil32(return_data.size)) + 392] = mem[(12 * ceil32(return_data.size)) + mem[(12 * ceil32(return_data.size)) + 392 len 4], Mask(224, 32, ('cd', 4)[1]) >> 32 + 392]
    require return_data.size >= _591 + (32 * _607) + 32
    mem[(13 * ceil32(return_data.size)) + 424 len 32 * _607] = mem[(12 * ceil32(return_data.size)) + _591 + 424 len 32 * _607]
    require ext_code.size(sub_f27cda37Address)
    staticcall sub_f27cda37Address.getDev() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1090 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _1091 = mem[_1090]
    require mem[_1090] == mem[_1090 + 12 len 20]
    mem[mem[64] len 17747] = code.data[6752 len 17747]
    mem[mem[64] + 17747] = this.address
    mem[mem[64] + 17779] = sub_f27cda37Address
    mem[mem[64] + 17811] = address(_1091)
    create contract with 0 wei
                    code: code.data[6752 len 17747], address(this.address), sub_f27cda37Address, address(_1091)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    if 2 >= _607:
        revert with 0, 50
    _1095 = mem[(13 * ceil32(return_data.size)) + 488]
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = address(create.new_address)
    mem[mem[64] + 68] = _1095
    require ext_code.size(address(('cd', 4).length))
    call address(('cd', 4).length).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), _1095
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1098 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_1098] == bool(mem[_1098])
    if not mem[_1098]:
        revert with 0, '8'
    call address(create.new_address) with:
       value delegate.return_data[0] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _1102 = mem[64]
    mem[64] = mem[64] + 96
    if 1 >= _607:
        revert with 0, 50
    mem[_1102] = mem[(13 * ceil32(return_data.size)) + 456]
    if 0 >= _607:
        revert with 0, 50
    mem[_1102 + 32] = mem[(13 * ceil32(return_data.size)) + 424]
    mem[_1102 + 64] = delegate.return_data[0]
    _1108 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1108] = msg.sender
    require ('cd', 4).length == address(('cd', 4).length)
    mem[_1108 + 32] = address(('cd', 4).length)
    _1109 = mem[64]
    mem[64] = mem[64] + 256
    mem[_1109] = ('cd', 4)[0]
    mem[_1109 + 32] = mem[_1102]
    mem[_1109 + 64] = mem[_1102 + 32]
    mem[_1109 + 96] = ('cd', 4)[2]
    mem[_1109 + 128] = ('cd', 4)[1]
    mem[_1109 + 160] = ('cd', 4)[3]
    mem[_1109 + 192] = ('cd', 4)[4]
    mem[_1109 + 224] = delegate.return_data[0]
    mem[mem[64]] = 0x4d440b900000000000000000000000000000000000000000000000000000000
    idx = 0
    s = _1108
    t = mem[64] + 4
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 68 len 256] = mem[_1109 len 256]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 36).length == bool(('cd', 36).length)
    require ('cd', 36)[0] == bool(('cd', 36)[0])
    require ('cd', 36)[1] == uint8(('cd', 36)[1])
    require ('cd', 36)[2] < calldata.size + -cd[36] - 35
    require cd[(cd[36] + ('cd', 36)[2] + 4)] <= test266151307()
    require cd[36] + ('cd', 36)[2] + 36 <= calldata.size - (32 * cd[(cd[36] + ('cd', 36)[2] + 4)])
    require ('cd', 36)[3] == address(('cd', 36)[3])
    idx = 0
    s = mem[64] + 196
    t = cd[36] + ('cd', 36)[2] + 36
    while idx < cd[(cd[36] + ('cd', 36)[2] + 4)]:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0x5b91703a with:
         gas gas_remaining wei
        args bool(('cd', 36).length), bool(('cd', 36)[0]), ('cd', 36)[1] << 248, Array(len=cd[(cd[36] + ('cd', 36)[2] + 4)], data=mem[mem[64] + 196 len 32 * cd[(cd[36] + ('cd', 36)[2] + 4)]]), address(('cd', 36)[3])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 36).length == bool(('cd', 36).length)
    if not ('cd', 36).length:
        require ('cd', 196)[4] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
        require ('cd', 196)[5] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
        require ('cd', 196)[6] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
        mem[mem[64] + 4] = ('cd', 196).length
        mem[mem[64] + 36] = ('cd', 196)[0]
        mem[mem[64] + 68] = ('cd', 196)[1]
        mem[mem[64] + 100] = ('cd', 196)[2]
        mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
        mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xb7153b0f with:
             gas gas_remaining wei
            args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
        idx = 0
        s = cd[4] + 292
        t = mem[64] + 4
        while idx < 4:
            require cd[s] == uint8(cd[s])
            mem[t] = uint8(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
        mem[mem[64] + 292] = 0
        require ext_code.size(address(create.new_address))
        call address(create.new_address).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 196)[5] < calldata.size + -cd[196] - 35
        require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
        require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + 4] = address(create.new_address)
        mem[mem[64] + 36] = ('cd', 196).length
        mem[mem[64] + 68] = 160
        mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
        mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 0
        require ext_code.size(sub_f27cda37Address)
        call sub_f27cda37Address.0x2a23097e with:
             gas gas_remaining wei
            args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2089 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _2091 = mem[_2089]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).setPresaleId(uint256 rg1) with:
             gas gas_remaining wei
            args mem[_2089]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 4)[6] < calldata.size + -cd[4] - 35
        require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
        require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
        require ext_code.size(sub_f27cda37Address)
        call sub_f27cda37Address.0xce9c9635 with:
             gas gas_remaining wei
            args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ('cd', 36).length == bool(('cd', 36).length)
        if not ('cd', 36).length:
            require ('cd', 4).length == address(('cd', 4).length)
            emit CertifiedPresaleCreated(_2091, msg.sender, address(('cd', 4).length));
        else:
            require ('cd', 36)[0] == bool(('cd', 36)[0])
            require ('cd', 4).length == address(('cd', 4).length)
            if not ('cd', 36)[0]:
                emit CertifiedPresaleCreated(_2091, msg.sender, address(('cd', 4).length));
            else:
                emit CertifiedAutoPresaleCreated(_2091, msg.sender, address(('cd', 4).length), cd[164]);
        stor0 = 1
        return _2091
    require cd[132] == uint8(cd[132])
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setUniswapInfo(uint256 rg1, uint256 rg2, uint8 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args cd[68], cd[100], cd[132] << 248, cd[164]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 196)[4] < calldata.size + -cd[196] - 35
    require cd[(cd[196] + ('cd', 196)[4] + 4)] <= test266151307()
    require cd[196] + ('cd', 196)[4] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[4] + 4)]
    require ('cd', 196)[5] < calldata.size + -cd[196] - 35
    require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
    require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
    require ('cd', 196)[6] < calldata.size + -cd[196] - 35
    require cd[(cd[196] + ('cd', 196)[6] + 4)] <= test266151307()
    require cd[196] + ('cd', 196)[6] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[6] + 4)]
    mem[mem[64] + 4] = ('cd', 196).length
    mem[mem[64] + 36] = ('cd', 196)[0]
    mem[mem[64] + 68] = ('cd', 196)[1]
    mem[mem[64] + 100] = ('cd', 196)[2]
    mem[mem[64] + 292 len cd[(cd[196] + ('cd', 196)[4] + 4)]] = call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]]
    mem[cd[(cd[196] + ('cd', 196)[4] + 4)] + mem[64] + 292] = 0
    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 292] = cd[(cd[196] + ('cd', 196)[5] + 4)]
    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
    mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 324] = 0
    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 324] = cd[(cd[196] + ('cd', 196)[6] + 4)]
    mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356 len cd[(cd[196] + ('cd', 196)[6] + 4)]] = call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]]
    mem[cd[(cd[196] + ('cd', 196)[6] + 4)] + mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 356] = 0
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xb7153b0f with:
         gas gas_remaining wei
        args ('cd', 196).length, ('cd', 196)[0], ('cd', 196)[1], ('cd', 196)[2], ('cd', 196)[3], 256, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + 288, ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + 320, cd[(cd[196] + ('cd', 196)[4] + 4)], call.data[cd[196] + ('cd', 196)[4] + 36 len cd[(cd[196] + ('cd', 196)[4] + 4)]], 0, mem[mem[64] + cd[(cd[196] + ('cd', 196)[4] + 4)] + 324 len ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + -cd[(cd[196] + ('cd', 196)[4] + 4)] + 32], call.data[cd[196] + ('cd', 196)[6] + 36 len cd[(cd[196] + ('cd', 196)[6] + 4)]], mem[mem[64] + ceil32(cd[(cd[196] + ('cd', 196)[4] + 4)]) + ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) + cd[(cd[196] + ('cd', 196)[6] + 4)] + 356 len ceil32(cd[(cd[196] + ('cd', 196)[6] + 4)]) - cd[(cd[196] + ('cd', 196)[6] + 4)]]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64]] = 0x696f3fc800000000000000000000000000000000000000000000000000000000
    idx = 0
    s = cd[4] + 292
    t = mem[64] + 4
    while idx < 4:
        require cd[s] == uint8(cd[s])
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 132 len 160] = call.data[cd[4] + 420 len 160]
    mem[mem[64] + 292] = 0
    require ext_code.size(address(create.new_address))
    call address(create.new_address).mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len 128], call.data[cd[4] + 420 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 196)[5] < calldata.size + -cd[196] - 35
    require cd[(cd[196] + ('cd', 196)[5] + 4)] <= test266151307()
    require cd[196] + ('cd', 196)[5] + 36 <= calldata.size - cd[(cd[196] + ('cd', 196)[5] + 4)]
    mem[mem[64] + 4] = address(create.new_address)
    mem[mem[64] + 36] = ('cd', 196).length
    mem[mem[64] + 68] = 160
    mem[mem[64] + 164] = cd[(cd[196] + ('cd', 196)[5] + 4)]
    mem[mem[64] + 196 len cd[(cd[196] + ('cd', 196)[5] + 4)]] = call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]]
    mem[cd[(cd[196] + ('cd', 196)[5] + 4)] + mem[64] + 196] = 0
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = 0
    require ext_code.size(sub_f27cda37Address)
    call sub_f27cda37Address.0x2a23097e with:
         gas gas_remaining wei
        args address(create.new_address), ('cd', 196).length, 160, 1, 0, cd[(cd[196] + ('cd', 196)[5] + 4)], call.data[cd[196] + ('cd', 196)[5] + 36 len cd[(cd[196] + ('cd', 196)[5] + 4)]], mem[mem[64] + cd[(cd[196] + ('cd', 196)[5] + 4)] + 196 len ceil32(cd[(cd[196] + ('cd', 196)[5] + 4)]) - cd[(cd[196] + ('cd', 196)[5] + 4)]]
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2090 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2092 = mem[_2090]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).setPresaleId(uint256 rg1) with:
         gas gas_remaining wei
        args mem[_2090]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 4)[6] < calldata.size + -cd[4] - 35
    require cd[(cd[4] + ('cd', 4)[6] + 4)] <= test266151307()
    require cd[4] + ('cd', 4)[6] + 36 <= calldata.size - cd[(cd[4] + ('cd', 4)[6] + 4)]
    require ext_code.size(sub_f27cda37Address)
    call sub_f27cda37Address.0xce9c9635 with:
         gas gas_remaining wei
        args Array(len=cd[(cd[4] + ('cd', 4)[6] + 4)], data=call.data[cd[4] + ('cd', 4)[6] + 36 len cd[(cd[4] + ('cd', 4)[6] + 4)]]), address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ('cd', 36).length == bool(('cd', 36).length)
    if not ('cd', 36).length:
        require ('cd', 4).length == address(('cd', 4).length)
        emit CertifiedPresaleCreated(_2092, msg.sender, address(('cd', 4).length));
    else:
        require ('cd', 36)[0] == bool(('cd', 36)[0])
        require ('cd', 4).length == address(('cd', 4).length)
        if not ('cd', 36)[0]:
            emit CertifiedPresaleCreated(_2092, msg.sender, address(('cd', 4).length));
        else:
            emit CertifiedAutoPresaleCreated(_2092, msg.sender, address(('cd', 4).length), cd[164]);
    stor0 = 1
    return _2092
}



}
