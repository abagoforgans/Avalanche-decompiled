contract main {




// =====================  Runtime code  =====================


const time = block.timestamp


array of struct sub_0f473a02;
mapping of struct sub_67f7cacf;
mapping of uint8 stor2;
uint256 stor3;
address stor4;

function sub_083d353b(?) payable {
    require calldata.size - 4 >= 32
    return sub_67f7cacf[arg1].field_512
}

function sub_0f473a02(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_0f473a02[arg1].field_0
    return sub_0f473a02[arg1][arg2].field_0
}

function getTokenId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_0f473a02[arg1].field_768
}

function sub_3f3293f5(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_0f473a02[arg1].field_0
    return sub_0f473a02[arg1][arg2].field_512
}

function sub_67f7cacf(?) payable {
    require calldata.size - 4 >= 32
    return sub_67f7cacf[arg1].field_512
}

function getPending(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function sub_858684b1(?) payable {
    require calldata.size - 4 >= 32
    return sub_0f473a02[arg1].field_256
}

function sub_a3c87b8a(?) payable {
    require calldata.size - 4 >= 32
    return sub_0f473a02[arg1].field_1024
}

function sub_b246e4b0(?) payable {
    require calldata.size - 4 >= 32
    return sub_0f473a02[arg1].field_0
}

function sub_d111699e(?) payable {
    require calldata.size - 4 >= 32
    return sub_0f473a02[arg1].field_256
}

function sub_d9b85c2a(?) payable {
    require calldata.size - 4 >= 32
    return sub_0f473a02[arg1].field_512
}

function sub_e94160a6(?) payable {
    require calldata.size - 4 >= 32
    return sub_67f7cacf[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_bc910c7c(?) payable {
    require calldata.size - 4 >= 32
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e4e6f206572657320656c20647565c3b16f2064656c20736d61727420636f6e74726163,
                    mem[200 len 28]
    stor3 = arg1
    return 0
}

function sub_e1b2e979(?) payable {
    require calldata.size - 4 >= 64
    if bool(sub_0f473a02[arg1].field_1440) != 1:
        revert with 0, 'nEsta subasta no es valida'
    if bool(stor2[stor0[arg1].field_768]) != 1:
        revert with 0, 'Error esta subasta en invalidad'
    require ext_code.size(sub_0f473a02[arg1].field_1024)
    staticcall sub_0f473a02[arg1].field_1024.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, sub_0f473a02[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 32, 27, 0x544e6f206572657320656c20647565c3b16f2064656c20746f6b656e00000000
    sub_0f473a02[arg1].field_256 = arg2 + 600
}

function _cancelAuction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(sub_0f473a02[arg1].field_1440) != 1:
        revert with 0, 'nEsta subasta no es valida'
    if bool(stor2[stor0[arg1].field_768]) != 1:
        revert with 0, 'Error esta subasta en invalidad'
    require ext_code.size(sub_0f473a02[arg1].field_1024)
    staticcall sub_0f473a02[arg1].field_1024.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, sub_0f473a02[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 32, 27, 0x544e6f206572657320656c20647565c3b16f2064656c20746f6b656e00000000
    stor2[stor0[arg1].field_768] = 0
    sub_0f473a02[arg1].field_1440 = 0
}

function sub_c3cbd719(?) payable {
    require calldata.size - 4 >= 160
    if not arg4:
        revert with 0, 'Error en del smart contract'
    if stor2[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4572726f722079612065786973746520756e612073756261737461202064652065737465204e46,
                    mem[204 len 24]
    require ext_code.size(arg4)
    staticcall arg4.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 32, 27, 0x544e6f206572657320656c20647565c3b16f2064656c20746f6b656e00000000
    if arg3 <= block.timestamp:
        revert with 0, 32, 30, 0x5469656d706f206465206578706972616369c3b36e20696e76616c69646f0000
    sub_0f473a02[arg1].field_256 = arg3 + 600
    sub_0f473a02[arg1].field_768 = arg2
    sub_0f473a02[arg1].field_1024 = arg4
    sub_0f473a02[arg1].field_1280 = msg.sender or 0x10000000000000000000000000000000000000000 or Mask(88, 168, sub_0f473a02[arg1].field_1280) or Mask(96, 160, sub_0f473a02[arg1].field_1280)
    sub_0f473a02[arg1].field_512 = arg5
    stor2[arg2] = 1
}

function bid(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if msg.sender == sub_0f473a02[arg3].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x456c20647565c3b16f206e6f207075656465207061727469636970617220656e206c612073756261737400,
                    mem[207 len 21]
    if bool(sub_0f473a02[arg3].field_1440) != 1:
        revert with 0, 'nEsta subasta no es valida'
    if block.timestamp > sub_0f473a02[arg3].field_256:
        revert with 0, 'Esta subasta ya expiro'
    if bool(stor2[stor0[arg3].field_768]) != 1:
        revert with 0, 'Error esta subasta en invalidad'
    if arg1 <= 0:
        revert with 0, 'Amount no puede ser 0'
    require ext_code.size(arg2)
    staticcall arg2.allowance(address rg1, address rg2) with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x6f4572726f72206e6f2065737461206170726f626164612065737461207472616e7361636369c3b3,
                    mem[204 len 24]
    if not sub_0f473a02[arg3].field_0:
        if arg1 <= sub_0f473a02[arg3].field_512 + 999999999999999999:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x74416d6f756e74206573206d656e6f722071756520656c20626964206d617320616c74,
                        mem[199 len 29]
    else:
        require sub_0f473a02[arg3].field_0 - 1 < sub_0f473a02[arg3].field_0
        if sub_0f473a02[arg3][sub_0f473a02[arg3].field_0].field_0:
            if arg1 <= sub_0f473a02[arg3][sub_0f473a02[arg3].field_0].field_0 + 999999999999999999:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x74416d6f756e74206573206d656e6f722071756520656c20626964206d617320616c74,
                            mem[199 len 29]
        else:
            if arg1 <= sub_0f473a02[arg3].field_512 + 999999999999999999:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            35,
                            0x74416d6f756e74206573206d656e6f722071756520656c20626964206d617320616c74,
                            mem[199 len 29]
    sub_0f473a02[arg3].field_0++
    sub_0f473a02[arg3][sub_0f473a02[arg3].field_0].field_0 = arg1
    sub_0f473a02[arg3][sub_0f473a02[arg3].field_0].field_256 = arg2
    sub_0f473a02[arg3][sub_0f473a02[arg3].field_0].field_512 = msg.sender
    sub_0f473a02[arg3][sub_0f473a02[arg3].field_0].field_672 = 1
}

function sub_67a01c81(?) payable {
    require calldata.size - 4 >= 64
    if bool(sub_0f473a02[arg1].field_1440) != 1:
        revert with 0, 'nEsta subasta no es valida'
    if block.timestamp < sub_0f473a02[arg1].field_256:
        revert with 0, 32, 19, 0x457374612061c3ba6e206e6f2065787069726100000000000000000000000000
    if bool(stor2[stor0[arg1].field_768]) != 1:
        revert with 0, 'Erro esta subasta en invalidad'
    if sub_0f473a02[arg1].field_1280 != msg.sender:
        revert with 0, 32, 31, 0x4e6f206572657320656c20647565c3b16f206465206c61207375626173746100
    mem[100] = msg.sender
    mem[132] = sub_0f473a02[arg1].field_768
    require ext_code.size(sub_0f473a02[arg1].field_1024)
    staticcall sub_0f473a02[arg1].field_1024.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, sub_0f473a02[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 32, 27, 0x544e6f206572657320656c20647565c3b16f2064656c20746f6b656e00000000
    mem[0] = arg1
    mem[32] = 0
    mem[64] = (32 * sub_0f473a02[arg1].field_0) + 128
    mem[96] = sub_0f473a02[arg1].field_0
    s = 128
    idx = 0
    while idx < sub_0f473a02[arg1].field_0:
        mem[0] = sha3(arg1, 0)
        _70 = mem[64]
        mem[64] = mem[64] + 128
        mem[_70] = sub_0f473a02[arg1][idx].field_0
        mem[_70 + 32] = sub_0f473a02[arg1][idx].field_256
        mem[_70 + 64] = sub_0f473a02[arg1][idx].field_512
        mem[_70 + 96] = bool(sub_0f473a02[arg1][idx].field_672)
        mem[s] = _70
        s = s + 32
        idx = idx + 1
        continue 
    _71 = mem[64]
    mem[64] = mem[64] + 128
    mem[_71] = 0
    mem[_71 + 32] = 0
    mem[_71 + 64] = 0
    mem[_71 + 96] = 0
    require arg2 < mem[96]
    _73 = mem[(32 * arg2) + 128]
    _74 = mem[mem[(32 * arg2) + 128] + 32]
    require ext_code.size(sub_0f473a02[arg1].field_1024)
    staticcall sub_0f473a02[arg1].field_1024.getOwner(uint256 rg1) with:
            gas gas_remaining wei
           args sub_0f473a02[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[mem[64] + 4] = address(ext_call.return_data[0])
    mem[mem[64] + 36] = this.address
    require ext_code.size(sub_0f473a02[arg1].field_1024)
    staticcall sub_0f473a02[arg1].field_1024.isApprovedForAll(address rg1, address rg2) with:
            gas gas_remaining wei
           args address(ext_call.return_data[0]), this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 32, 36, 0x4e6f2065737461206170726f6261646f207472616e73666572697220656c20746f6b6500, mem[mem[64] + 104 len 28]
    _84 = mem[_73 + 64]
    mem[0] = arg1
    mem[32] = 0
    mem[mem[64] + 4] = sub_0f473a02[arg1].field_768
    require ext_code.size(sub_0f473a02[arg1].field_1024)
    staticcall sub_0f473a02[arg1].field_1024.getOwner(uint256 rg1) with:
            gas gas_remaining wei
           args sub_0f473a02[arg1].field_768
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _92 = mem[_73]
    mem[mem[64] + 36] = address(ext_call.return_data[0])
    mem[mem[64] + 68] = _92 + stor3
    require ext_code.size(address(_74))
    call address(_74).transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(_84), address(ext_call.return_data[0]), _92 + stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[mem[64] + 4] = sub_0f473a02[arg1].field_768
    require ext_code.size(sub_0f473a02[arg1].field_1024)
    staticcall sub_0f473a02[arg1].field_1024.getOwner(uint256 rg1) with:
            gas gas_remaining wei
           args sub_0f473a02[arg1].field_768
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _101 = mem[_73 + 64]
    mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = address(ext_call.return_data[0])
    mem[mem[64] + 36] = address(_101)
    mem[mem[64] + 68] = sub_0f473a02[arg1].field_768
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = 160
    mem[mem[64] + 164] = 0
    require ext_code.size(sub_0f473a02[arg1].field_1024)
    call sub_0f473a02[arg1].field_1024.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(_101), sub_0f473a02[arg1].field_768, 1, 160, 0, mem[mem[64] + 196]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor2[stor0[arg1].field_768] = 0
    mem[0] = arg1
    sub_0f473a02[arg1].field_1440 = 0
    mem[32] = 1
    sub_67f7cacf[arg1].field_0 = mem[_73]
    sub_67f7cacf[arg1].field_256 = mem[_73 + 44 len 20]
    sub_67f7cacf[arg1].field_512 = mem[_73 + 76 len 20]
    sub_67f7cacf[arg1].field_672 = Mask(96, 0, bool(mem[_73 + 96]))
}

function end(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if bool(sub_0f473a02[arg1].field_1440) != 1:
        revert with 0, 'nEsta subasta no es valida'
    if block.timestamp < sub_0f473a02[arg1].field_256:
        revert with 0, 32, 19, 0x457374612061c3ba6e206e6f2065787069726100000000000000000000000000
    if bool(stor2[stor0[arg1].field_768]) != 1:
        revert with 0, 'Erro esta subasta en invalidad'
    if sub_0f473a02[arg1].field_1280 != msg.sender:
        revert with 0, 32, 31, 0x4e6f206572657320656c20647565c3b16f206465206c61207375626173746100
    mem[100] = msg.sender
    mem[132] = sub_0f473a02[arg1].field_768
    require ext_code.size(sub_0f473a02[arg1].field_1024)
    staticcall sub_0f473a02[arg1].field_1024.balanceOf(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args msg.sender, sub_0f473a02[arg1].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 32, 27, 0x544e6f206572657320656c20647565c3b16f2064656c20746f6b656e00000000
    mem[0] = arg1
    mem[32] = 0
    mem[64] = (32 * sub_0f473a02[arg1].field_0) + 128
    mem[96] = sub_0f473a02[arg1].field_0
    s = 128
    idx = 0
    while idx < sub_0f473a02[arg1].field_0:
        mem[0] = sha3(arg1, 0)
        _106 = mem[64]
        mem[64] = mem[64] + 128
        mem[_106] = sub_0f473a02[arg1][idx].field_0
        mem[_106 + 32] = sub_0f473a02[arg1][idx].field_256
        mem[_106 + 64] = sub_0f473a02[arg1][idx].field_512
        mem[_106 + 96] = bool(sub_0f473a02[arg1][idx].field_672)
        mem[s] = _106
        s = s + 32
        idx = idx + 1
        continue 
    _107 = mem[64]
    mem[64] = mem[64] + 128
    mem[_107] = 0
    mem[_107 + 32] = 0
    mem[_107 + 64] = 0
    mem[_107 + 96] = 0
    if mem[96]:
        require var35001 < mem[96]
        if mem[mem[(32 * var37001) + 128]] > 0:
            require var39001 < mem[96]
            _552 = mem[mem[(32 * var39001) + 128]]
            require var39001 < mem[96]
            _555 = mem[mem[(32 * var39001) + 128] + 32]
            require var39001 < mem[96]
            mem[mem[64] + 4] = mem[mem[(32 * var39001) + 128] + 76 len 20]
            mem[mem[64] + 36] = this.address
            require ext_code.size(address(_555))
            staticcall address(_555).allowance(address rg1, address rg2) with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4], address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            s = var39001
            t = var39001
            while ext_call.success:
                require return_data.size >= 32
                if mem[mem[64]] < _552 + stor3:
                    require t - 1 < mem[96]
                    _629 = mem[mem[(32 * t - 1) + 128]]
                    u = t
                    while _629 <= 0:
                        _552 = mem[mem[(32 * s) + 128]]
                        require t < mem[96]
                        _555 = mem[mem[(32 * t) + 128] + 32]
                        require t < mem[96]
                        mem[mem[64] + 4] = mem[mem[(32 * t) + 128] + 76 len 20]
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(address(_555))
                        staticcall address(_555).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        require u - 2 < mem[96]
                        _629 = mem[mem[(32 * u - 2) + 128]]
                        u = u - 1
                        continue 
                    require u - 1 < mem[96]
                    _552 = mem[mem[(32 * u - 1) + 128]]
                    require u - 1 < mem[96]
                    _555 = mem[mem[(32 * u - 1) + 128] + 32]
                    require u - 1 < mem[96]
                    mem[mem[64] + 4] = mem[mem[(32 * u - 1) + 128] + 76 len 20]
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(address(_555))
                    staticcall address(_555).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    s = u - 1
                    t = u - 1
                    continue 
                require t < mem[96]
                _566 = mem[mem[(32 * t) + 128]]
                require t < mem[96]
                _571 = mem[mem[(32 * t) + 128] + 32]
                require t < mem[96]
                _575 = mem[mem[(32 * t) + 128] + 64]
                mem[mem[64] + 4] = mem[mem[(32 * t) + 128] + 76 len 20]
                require ext_code.size(address(_571))
                staticcall address(_571).balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args address(_575)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < _566 + stor3:
                    require t - 1 < mem[96]
                    _631 = mem[mem[(32 * t - 1) + 128]]
                    u = t
                    while _631 <= 0:
                        _552 = mem[mem[(32 * u - 1) + 128]]
                        require t < mem[96]
                        _555 = mem[mem[(32 * t) + 128] + 32]
                        require t < mem[96]
                        mem[mem[64] + 4] = mem[mem[(32 * t) + 128] + 76 len 20]
                        mem[mem[64] + 36] = this.address
                        require ext_code.size(address(_555))
                        staticcall address(_555).allowance(address rg1, address rg2) with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4], address(this.address)
                        mem[mem[64]] = ext_call.return_data[0]
                        require u - 2 < mem[96]
                        _631 = mem[mem[(32 * u - 2) + 128]]
                        u = u - 1
                        continue 
                    require u - 1 < mem[96]
                    _552 = mem[mem[(32 * u - 1) + 128]]
                    require u - 1 < mem[96]
                    _555 = mem[mem[(32 * u - 1) + 128] + 32]
                    require u - 1 < mem[96]
                    mem[mem[64] + 4] = mem[mem[(32 * u - 1) + 128] + 76 len 20]
                    mem[mem[64] + 36] = this.address
                    require ext_code.size(address(_555))
                    staticcall address(_555).allowance(address rg1, address rg2) with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4], address(this.address)
                    mem[mem[64]] = ext_call.return_data[0]
                    u = u - 1
                    t = u - 1
                    continue 
                require t < mem[96]
                _582 = mem[(32 * t) + 128]
                _583 = mem[mem[(32 * t) + 128] + 32]
                if mem[mem[(32 * t) + 128]] <= 0:
                    revert with 0, 'No hay ganador'
                require ext_code.size(sub_0f473a02[arg1].field_1024)
                staticcall sub_0f473a02[arg1].field_1024.getOwner(uint256 rg1) with:
                        gas gas_remaining wei
                       args sub_0f473a02[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = this.address
                require ext_code.size(sub_0f473a02[arg1].field_1024)
                staticcall sub_0f473a02[arg1].field_1024.isApprovedForAll(address rg1, address rg2) with:
                        gas gas_remaining wei
                       args address(ext_call.return_data[0]), this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 32, 36, 0x4e6f2065737461206170726f6261646f207472616e73666572697220656c20746f6b6500, mem[mem[64] + 104 len 28]
                _599 = mem[_582 + 64]
                mem[0] = arg1
                mem[32] = 0
                mem[mem[64] + 4] = sub_0f473a02[arg1].field_768
                require ext_code.size(sub_0f473a02[arg1].field_1024)
                staticcall sub_0f473a02[arg1].field_1024.getOwner(uint256 rg1) with:
                        gas gas_remaining wei
                       args sub_0f473a02[arg1].field_768
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _607 = mem[_582]
                mem[mem[64] + 36] = address(ext_call.return_data[0])
                mem[mem[64] + 68] = _607 + stor3
                require ext_code.size(address(_583))
                call address(_583).transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining wei
                    args address(_599), address(ext_call.return_data[0]), _607 + stor3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = sub_0f473a02[arg1].field_768
                require ext_code.size(sub_0f473a02[arg1].field_1024)
                staticcall sub_0f473a02[arg1].field_1024.getOwner(uint256 rg1) with:
                        gas gas_remaining wei
                       args sub_0f473a02[arg1].field_768
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                _616 = mem[_582 + 64]
                mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(ext_call.return_data[0])
                mem[mem[64] + 36] = address(_616)
                mem[mem[64] + 68] = sub_0f473a02[arg1].field_768
                mem[mem[64] + 100] = 1
                mem[mem[64] + 132] = 160
                mem[mem[64] + 164] = 0
                require ext_code.size(sub_0f473a02[arg1].field_1024)
                call sub_0f473a02[arg1].field_1024.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args address(ext_call.return_data[0]), address(_616), sub_0f473a02[arg1].field_768, 1, 160, 0, mem[mem[64] + 196]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[0] = arg1
                mem[32] = 1
                sub_67f7cacf[arg1].field_0 = mem[_582]
                sub_67f7cacf[arg1].field_256 = mem[_582 + 44 len 20]
                sub_67f7cacf[arg1].field_512 = mem[_582 + 76 len 20]
                sub_67f7cacf[arg1].field_672 = Mask(96, 0, bool(mem[_582 + 96]))
                stor2[stor0[arg1].field_768] = 0
                sub_0f473a02[arg1].field_1440 = 0
            revert with ext_call.return_data[0 len return_data.size]
        require var39001 - 1 < mem[96]
        if mem[mem[(32 * var39001 - 1) + 128]] <= 0:
            var39001 = var39001 - 1
            continue 
        require var39001 - 1 < mem[96]
        _420 = mem[mem[(32 * var39001 - 1) + 128]]
        require var39001 - 1 < mem[96]
        _423 = mem[mem[(32 * var39001 - 1) + 128] + 32]
        require var39001 - 1 < mem[96]
        mem[mem[64] + 4] = mem[mem[(32 * var39001 - 1) + 128] + 76 len 20]
        mem[mem[64] + 36] = this.address
        require ext_code.size(address(_423))
        staticcall address(_423).allowance(address rg1, address rg2) with:
                gas gas_remaining wei
               args mem[mem[64] + 4], address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < _420 + stor3:
            var39001 = var39001 - 1
            continue 
        require var39001 - 1 < mem[96]
        _450 = mem[mem[(32 * var39001 - 1) + 128]]
        require var39001 - 1 < mem[96]
        _453 = mem[mem[(32 * var39001 - 1) + 128] + 32]
        require var39001 - 1 < mem[96]
        _457 = mem[mem[(32 * var39001 - 1) + 128] + 64]
        mem[mem[64] + 4] = mem[mem[(32 * var39001 - 1) + 128] + 76 len 20]
        require ext_code.size(address(_453))
        staticcall address(_453).balanceOf(address rg1) with:
                gas gas_remaining wei
               args address(_457)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < _450 + stor3:
            var39001 = var39001 - 1
            continue 
        require var39001 - 1 < mem[96]
        _478 = mem[mem[(32 * var39001 - 1) + 128] + 32]
        if mem[mem[(32 * var39001 - 1) + 128]] <= 0:
            revert with 0, 'No hay ganador'
        mem[32] = 0
        require ext_code.size(sub_0f473a02[arg1].field_1024)
        staticcall sub_0f473a02[arg1].field_1024.getOwner(uint256 rg1) with:
                gas gas_remaining wei
               args sub_0f473a02[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = this.address
        require ext_code.size(sub_0f473a02[arg1].field_1024)
        staticcall sub_0f473a02[arg1].field_1024.isApprovedForAll(address rg1, address rg2) with:
                gas gas_remaining wei
               args address(ext_call.return_data[0]), this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 32, 36, 0x4e6f2065737461206170726f6261646f207472616e73666572697220656c20746f6b6500, mem[mem[64] + 104 len 28]
        _504 = mem[mem[(32 * var39001 - 1) + 128] + 64]
        mem[0] = arg1
        mem[32] = 0
        mem[mem[64] + 4] = sub_0f473a02[arg1].field_768
        require ext_code.size(sub_0f473a02[arg1].field_1024)
        staticcall sub_0f473a02[arg1].field_1024.getOwner(uint256 rg1) with:
                gas gas_remaining wei
               args sub_0f473a02[arg1].field_768
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _517 = mem[mem[(32 * var39001 - 1) + 128]]
        mem[mem[64] + 36] = address(ext_call.return_data[0])
        mem[mem[64] + 68] = _517 + stor3
        require ext_code.size(address(_478))
        call address(_478).transferFrom(address rg1, address rg2, uint256 rg3) with:
             gas gas_remaining wei
            args address(_504), address(ext_call.return_data[0]), _517 + stor3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[32] = 0
        mem[mem[64] + 4] = sub_0f473a02[arg1].field_768
        require ext_code.size(sub_0f473a02[arg1].field_1024)
        staticcall sub_0f473a02[arg1].field_1024.getOwner(uint256 rg1) with:
                gas gas_remaining wei
               args sub_0f473a02[arg1].field_768
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _539 = mem[mem[(32 * var39001 - 1) + 128] + 64]
        mem[mem[64]] = 0xf242432a00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(ext_call.return_data[0])
        mem[mem[64] + 36] = address(_539)
        mem[mem[64] + 68] = sub_0f473a02[arg1].field_768
        mem[mem[64] + 100] = 1
        mem[mem[64] + 132] = 160
        mem[mem[64] + 164] = 0
        require ext_code.size(sub_0f473a02[arg1].field_1024)
        call sub_0f473a02[arg1].field_1024.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), address(_539), sub_0f473a02[arg1].field_768, 1, 160, 0, mem[mem[64] + 196]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[0] = arg1
        mem[32] = 1
        sub_67f7cacf[arg1].field_0 = mem[mem[(32 * var39001 - 1) + 128]]
        sub_67f7cacf[arg1].field_256 = mem[mem[(32 * var39001 - 1) + 128] + 44 len 20]
        sub_67f7cacf[arg1].field_512 = mem[mem[(32 * var39001 - 1) + 128] + 76 len 20]
        sub_67f7cacf[arg1].field_672 = Mask(96, 0, bool(mem[mem[(32 * var39001 - 1) + 128] + 96]))
    stor2[stor0[arg1].field_768] = 0
    sub_0f473a02[arg1].field_1440 = 0
}



}
