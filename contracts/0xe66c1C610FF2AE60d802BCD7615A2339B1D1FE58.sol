contract main {




// =====================  Runtime code  =====================


const sub_f556fcdb(?) = address(this.address)


address owner;
address withdrawerAddress;
address stor2;

function owner() {
    return owner
}

function withdrawer() {
    return withdrawerAddress
}

function sub_89fedb22(?) {
    if withdrawerAddress != msg.sender:
        revert with 0, 'Caller is not withdrawer'
    withdrawerAddress = 0
}

function setAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    stor2 = arg1
}

function sub_52f4cb9d(?) {
    require ext_code.size(stor2)
    call stor2.0x9fc63277 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getGlobalState() {
    staticcall stor2.0x743faee2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_28a11702(?) {
    staticcall stor2.0x755873c5 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_920d8d39(?) {
    staticcall stor2.0x3345906f with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNextPayoutTime() {
    staticcall stor2.0xfafbb9a3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function executeProposal(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor2)
    call stor2.executeProposal(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2fd62021(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    call stor2.0x2fd62021 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e7221c9f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    call stor2.0xe7221c9f with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function voteOnProposal(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor2)
    call stor2.0x307fc11b with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_7f4d5e69(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    call stor2.0x92d4d12 with:
         gas gas_remaining wei
        args msg.sender, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_21f04ac6(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    call stor2.0x21f04ac6 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_605cf323(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    call stor2.0x605cf323 with:
         gas gas_remaining wei
        args address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fb1bab5d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(stor2)
    call stor2.0xf4d2fee4 with:
         gas gas_remaining wei
        args msg.sender, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if withdrawerAddress != msg.sender:
        revert with 0, 'Caller is not withdrawer'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_8fce0e21(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor2)
    call stor2.0x8fce0e21 with:
         gas gas_remaining wei
        args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_549d3f65(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor2)
    call stor2.0x2f9250aa with:
         gas gas_remaining wei
        args msg.sender, address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a0aeb250(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor2.0xa0aeb250 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0], ext_call.return_data[32]
}

function sub_0555af92(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor2)
    call stor2.0x51361893 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg2), address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1a8ad193(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor2)
    call stor2.0x4daf30d9 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg2), address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_50d4a187(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor2)
    call stor2.0xa715f204 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_56569f1e(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor2)
    call stor2.0x246a638d with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg1), address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b7d33740(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor2.0xb7d33740 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_91e85570(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require ext_code.size(stor2)
    call stor2.0x330e9b30 with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(arg3), address(arg1), address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f87b7982(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor2.0xf87b7982 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_f98caa05(?) {
    call stor2.0x7879c177 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_c44c06d0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall stor2.0xc44c06d0 with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    return ext_call.return_data[0], address(ext_call.return_data[32]), ext_call.return_data[64]
}

function sub_be443885(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    staticcall stor2.0xbe443885 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[160] == ext_call.return_data[172 len 20]
    return ext_call.return_data[0], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           address(ext_call.return_data[160]),
           ext_call.return_data[192]
}

function sub_c79162c4(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall stor2.0x3345906f with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(stor2)
        call stor2.0x3958b891 with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args msg.sender, address(arg1), address(arg2)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Caller is not owner'
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_1144e3d9(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall stor2.0x2327e020 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'insufficient funds'
    require ext_code.size(stor2)
    call stor2.0xfeab4a78 with:
       value arg3 wei
         gas gas_remaining wei
        args msg.sender, address(arg1), address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_9dacb3fd(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    staticcall stor2.0x2327e020 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0, 'insufficient funds'
    require ext_code.size(stor2)
    call stor2.0xfeab4a78 with:
       value arg3 wei
         gas gas_remaining wei
        args msg.sender, address(arg1), address(arg2), 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2d28f29d(?) {
    require calldata.size - 4 >= 32
    staticcall stor2.0x2d28f29d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
    require ext_call.return_data[192] == bool(ext_call.return_data[192])
    return ext_call.return_data[12 len 20], 
           address(ext_call.return_data[32]),
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           bool(ext_call.return_data[192])
}

function claimDividend() {
    staticcall stor2.0x3345906f with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    call stor2.0x15f7e05e with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'values mismatch!'
    if ext_call.return_data[0]:
        call msg.sender with:
           value ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_536954e4(?) {
    mem[96] = 0x536954e400000000000000000000000000000000000000000000000000000000
    staticcall stor2.0x536954e4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _5 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require (32 * _5) + _4 + 32 <= return_data.size
    s = ceil32(return_data.size) + 128
    idx = _4 + 128
    while idx < (32 * _5) + _4 + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    idx = 0
    s = mem[64] + 64
    t = ceil32(return_data.size) + 128
    while idx < _5:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (32 * _5) + -mem[64] + 64
}

function sub_dc3d6e2e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[96] = 0xdc3d6e2e00000000000000000000000000000000000000000000000000000000
    mem[100] = address(arg1)
    staticcall stor2.0xdc3d6e2e with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], address(arg1) << 64
    require mem[96 len 4], address(arg1) << 64 <= test266151307()
    require mem[96 len 4], address(arg1) << 64 + 127 < return_data.size + 96
    _5 = mem[mem[96 len 4], address(arg1) << 64 + 96]
    if mem[mem[96 len 4], address(arg1) << 64 + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], address(arg1) << 64 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require (32 * _5) + _4 + 32 <= return_data.size
    s = ceil32(return_data.size) + 128
    idx = _4 + 128
    while idx < (32 * _5) + _4 + 128:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    _13 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    idx = 0
    s = mem[64] + 64
    t = ceil32(return_data.size) + 128
    while idx < _5:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _13 + (32 * _5) + -mem[64] + 64
}

function _fallback() payable {
    if calldata.size < 4:
    if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x52f4cb9d(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x28a11702(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x28a11702(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    staticcall stor2.0x755873c5 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x2d28f29d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    staticcall stor2.0x2d28f29d with:
                            gas gas_remaining wei
                           args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 224
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    require ext_call.return_data[192] == bool(ext_call.return_data[192])
                    return ext_call.return_data[12 len 20], 
                           address(ext_call.return_data[32]),
                           ext_call.return_data[64],
                           ext_call.return_data[96],
                           ext_call.return_data[128],
                           ext_call.return_data[160],
                           bool(ext_call.return_data[192])
                if unknown_0x2e1a7d4d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if withdrawerAddress != msg.sender:
                        revert with 0, 'Caller is not withdrawer'
                    call owner with:
                       value arg1 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x2fd62021(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        require ext_code.size(stor2)
                        call stor2.0x2fd62021 with:
                             gas gas_remaining wei
                            args address(arg1)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x50d4a187(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 96
                            require arg1 == address(arg1)
                            require arg2 == address(arg2)
                            require ext_code.size(stor2)
                            call stor2.0xa715f204 with:
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), arg3
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x0555af92(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require ext_code.size(stor2)
                    call stor2.0x51361893 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg2), address(arg1), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if executeProposal(uint256 arg1) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require ext_code.size(stor2)
                        call stor2.executeProposal(uint256 arg1) with:
                             gas gas_remaining wei
                            args arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x1144e3d9(?????):
                            if unknown_0x1a8ad193(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 96
                                require arg1 == address(arg1)
                                require arg2 == address(arg2)
                                require ext_code.size(stor2)
                                call stor2.0x4daf30d9 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(arg2), address(arg1), arg3
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if unknown_0x21f04ac6(?????) == uint32(call.func_hash) >> 224:
                                    require not msg.value
                                    require calldata.size - 4 >= 96
                                    require arg1 == address(arg1)
                                    require ext_code.size(stor2)
                                    call stor2.0x21f04ac6 with:
                                         gas gas_remaining wei
                                        args address(arg1), arg2, arg3
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 96
                            require arg1 == address(arg1)
                            require arg2 == address(arg2)
                            staticcall stor2.0x2327e020 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < arg3:
                                revert with 0, 'insufficient funds'
                            require ext_code.size(stor2)
                            call stor2.0xfeab4a78 with:
                               value arg3 wei
                                 gas gas_remaining wei
                                args msg.sender, address(arg1), address(arg2), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
        if unknown_0x605cf323(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x605cf323(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require ext_code.size(stor2)
                call stor2.0x605cf323 with:
                     gas gas_remaining wei
                    args address(arg1), arg2, arg3
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x743faee2(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    staticcall stor2.0x743faee2 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x7f4d5e69(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require ext_code.size(stor2)
                    call stor2.0x92d4d12 with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x89476069(?????):
                        if unknown_0x89fedb22(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if withdrawerAddress != msg.sender:
                                revert with 0, 'Caller is not withdrawer'
                            withdrawerAddress = 0
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Caller is not owner'
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args owner, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if unknown_0x52f4cb9d(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require ext_code.size(stor2)
            call stor2.0x9fc63277 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if uint32(call.func_hash) >> 224 != unknown_0x536954e4(?????):
            if unknown_0x549d3f65(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require ext_code.size(stor2)
                call stor2.0x2f9250aa with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x556f6cc0(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require ext_code.size(stor2)
                    call stor2.0x307fc11b with:
                         gas gas_remaining wei
                        args msg.sender, arg1, arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x56569f1e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        require ext_code.size(stor2)
                        call stor2.0x246a638d with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3, arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        require not msg.value
        mem[128] = 0x536954e400000000000000000000000000000000000000000000000000000000
        staticcall stor2.0x536954e4 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _28 = mem[128]
        require mem[128] <= test266151307()
        require mem[128] + 159 < return_data.size + 128
        _41 = mem[mem[128] + 128]
        if mem[mem[128] + 128] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[128] + 128]) + 129 > test266151307() or ceil32(32 * mem[mem[128] + 128]) + 1 < 0:
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128] + 128]) + 129
        mem[ceil32(return_data.size) + 128] = mem[mem[128] + 128]
        require (32 * _41) + _28 + 32 <= return_data.size
        s = ceil32(return_data.size) + 160
        idx = _28 + 160
        while idx < (32 * _41) + _28 + 160:
            require mem[idx] == mem[idx + 12 len 20]
            mem[s] = mem[idx]
            s = s + 32
            idx = idx + 32
            continue 
        _194 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _41
        idx = 0
        s = mem[64] + 64
        t = ceil32(return_data.size) + 160
        while idx < _41:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _194 + (32 * _41) + -mem[64] + 64
    if unknown_0xcdc18424(?????) > uint32(call.func_hash) >> 224:
        if unknown_0xa0aeb250(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0x8fce0e21(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                require ext_code.size(stor2)
                call stor2.0x8fce0e21 with:
                     gas gas_remaining wei
                    args address(arg1), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0x91e85570(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg3 == address(arg3)
                    require ext_code.size(stor2)
                    call stor2.0x330e9b30 with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), address(arg3), address(arg1), address(arg2), arg4
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x920d8d39(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        staticcall stor2.0x3345906f with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0x9dacb3fd(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        staticcall stor2.0x2327e020 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg3:
                            revert with 0, 'insufficient funds'
                        require ext_code.size(stor2)
                        call stor2.0xfeab4a78 with:
                           value arg3 wei
                             gas gas_remaining wei
                            args msg.sender, address(arg1), address(arg2), 1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0xa0aeb250(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                staticcall stor2.0xa0aeb250 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return ext_call.return_data[0], ext_call.return_data[32]
            if unknown_0xb7d33740(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                staticcall stor2.0xb7d33740 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                return bool(ext_call.return_data[0])
            if unknown_0xbe443885(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                staticcall stor2.0xbe443885 with:
                        gas gas_remaining wei
                       args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 224
                require ext_call.return_data[160] == ext_call.return_data[172 len 20]
                return ext_call.return_data[0], 
                       ext_call.return_data[32],
                       ext_call.return_data[64],
                       ext_call.return_data[96],
                       ext_call.return_data[128],
                       address(ext_call.return_data[160]),
                       ext_call.return_data[192]
            if unknown_0xc44c06d0(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                staticcall stor2.0xc44c06d0 with:
                        gas gas_remaining wei
                       args address(arg1), address(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                return ext_call.return_data[0], address(ext_call.return_data[32]), ext_call.return_data[64]
            if unknown_0xc79162c4(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                staticcall stor2.0x3345906f with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    require ext_code.size(stor2)
                    call stor2.0x3958b891 with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                        args msg.sender, address(arg1), address(arg2)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    if unknown_0xf556fcdb(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xf556fcdb(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return this.address
        if unknown_0xf87b7982(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            staticcall stor2.0xf87b7982 with:
                    gas gas_remaining wei
                   args address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            return ext_call.return_data[12 len 20]
        if unknown_0xf98caa05(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            call stor2.0x7879c177 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                call msg.sender with:
                   value ext_call.return_data[0] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if unknown_0xfafbb9a3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                staticcall stor2.0xfafbb9a3 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                return ext_call.return_data[0], ext_call.return_data[32]
            if unknown_0xfb1bab5d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require ext_code.size(stor2)
                call stor2.0xf4d2fee4 with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    if unknown_0xcdc18424(?????) == uint32(call.func_hash) >> 224:
        require not msg.value
        return withdrawerAddress
    if uint32(call.func_hash) >> 224 != unknown_0xdc3d6e2e(?????):
        if unknown_0xe30081a0(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 32
            require arg1 == address(arg1)
            if owner != msg.sender:
                revert with 0, 'Caller is not owner'
            stor2 = address(arg1)
        else:
            if unknown_0xe7221c9f(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                require ext_code.size(stor2)
                call stor2.0xe7221c9f with:
                     gas gas_remaining wei
                    args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xf0fc6bca(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    staticcall stor2.0x3345906f with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    call stor2.0x15f7e05e with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] > ext_call.return_data[0]:
                        revert with 0, 'values mismatch!'
                    if ext_call.return_data[0]:
                        call msg.sender with:
                           value ext_call.return_data[0] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[128] = 0xdc3d6e2e00000000000000000000000000000000000000000000000000000000
    mem[132] = address(arg1)
    staticcall stor2.0xdc3d6e2e with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 128
    require return_data.size >= 32
    _94 = mem[128 len 4], address(arg1) << 64
    require mem[128 len 4], address(arg1) << 64 <= test266151307()
    require mem[128 len 4], address(arg1) << 64 + 159 < return_data.size + 128
    _125 = mem[mem[128 len 4], address(arg1) << 64 + 128]
    if mem[mem[128 len 4], address(arg1) << 64 + 128] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], address(arg1) << 64 + 128]) + 129 > test266151307() or ceil32(32 * mem[mem[128 len 4], address(arg1) << 64 + 128]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[128 len 4], address(arg1) << 64 + 128]) + 129
    mem[ceil32(return_data.size) + 128] = mem[mem[128 len 4], address(arg1) << 64 + 128]
    require (32 * _125) + _94 + 32 <= return_data.size
    s = ceil32(return_data.size) + 160
    idx = _94 + 160
    while idx < (32 * _125) + _94 + 160:
        require mem[idx] == mem[idx + 12 len 20]
        mem[s] = mem[idx]
        s = s + 32
        idx = idx + 32
        continue 
    _195 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _125
    idx = 0
    s = mem[64] + 64
    t = ceil32(return_data.size) + 160
    while idx < _125:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _195 + (32 * _125) + -mem[64] + 64
}



}
