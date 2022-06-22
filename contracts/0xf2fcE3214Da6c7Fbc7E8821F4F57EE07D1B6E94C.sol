contract main {




// =====================  Runtime code  =====================


bool stor0; offset 256
uint8 stor0;
address stor0; offset 8
uint256 stor0; offset 8
address stor1;
mapping of uint8 stor2;
mapping of uint256 stor3;
uint8 storFB37;

function _fallback() payable {
    revert
}

function sub_ef2b81f7(?) {
    require stor2[msg.sender]
    stor3[msg.sender] = 0
    call msg.sender with:
       value stor3[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ca039ce6(?) {
    require msg.sender == address(stor0.field_8)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4eb07c95(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor2[msg.sender]
    stor1 = address(arg1)
    require ext_code.size(address(arg1))
    call address(arg1).register() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, msg.sender)
    stor0.field_256 % 1 = 0
    stor2[msg.sender] = 1
    storFB37 = 1
    stor1 = arg1
    require ext_code.size(arg1)
    call arg1.register() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_91c53aca(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require stor2[msg.sender]
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function sub_88a8c32a(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require stor2[msg.sender]
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d49daa66(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require stor2[msg.sender]
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg2, ext_call.return_data[0], 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d19d41aa(?) payable {
    require calldata.size - 4 >= 96
    require stor2[msg.sender]
    if not stor1:
        revert with 0, 'buyer?'
    mem[0] = msg.sender
    mem[32] = 3
    stor3[msg.sender] = msg.value
    require ext_code.size(0x8871b4532c248b8e5e5ad479f5f9a2438ad74e3e)
    staticcall 0x8871b4532c248b8e5e5ad479f5f9a2438ad74e3e.minted() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == arg1:
        mem[ceil32(return_data.size) + 100] = ext_call.return_data[0] + 1
        require ext_code.size(0x4731b8bf6c9eb4c45948dea74e4ac46f10d2a180)
        call 0x4731b8bf6c9eb4c45948dea74e4ac46f10d2a180.getRandomSeed(uint256 arg1) with:
             gas gas_remaining wei
            args (ext_call.return_data[0] + 1)
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        if bool(ext_call.return_data[0] + 1) != 1:
            if ext_call.return_data[0] != arg2 + (9 * ext_call.return_data[0]) + (arg2 * ext_call.return_data[0]) + 19:
                revert with 0, 'gterror?'
            idx = 0
            s = arg2 + 9
            while idx < arg3:
                if bool(ext_call.return_data[0] + 1) != 1:
                    _89 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    mem[mem[64] + 52] = block.hash(block.number - 1)
                    mem[mem[64] + 84] = block.timestamp
                    mem[mem[64] + 116] = ext_call.return_data[0] + 1
                    _93 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    if not uint16(sha3(mem[_93 + 32 len mem[_93]]) xor s + (9 * ext_call.return_data[0]) + (s * ext_call.return_data[0]) + 19) % 10:
                        if sha3(mem[_93 + 32 len mem[_93]]) xor s + (9 * ext_call.return_data[0]) + (s * ext_call.return_data[0]) + 19 % 2048 >> 245 % 10:
                            require ext_code.size(stor1)
                            call stor1.0xe3878436 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value stor3[msg.sender] wei
                                 gas 2300 * is_zero(value) wei
                            stor3[msg.sender] = 0
                    mem[_89 + 152] = ext_call.return_data[0] + 1
                    require ext_code.size(0x4731b8bf6c9eb4c45948dea74e4ac46f10d2a180)
                    call 0x4731b8bf6c9eb4c45948dea74e4ac46f10d2a180.getRandomSeed(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] + 1)
                    mem[_89 + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _89 + ceil32(return_data.size) + 148
                else:
                    _90 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    mem[mem[64] + 52] = block.hash(block.number - 1)
                    mem[mem[64] + 84] = block.timestamp
                    mem[mem[64] + 116] = ext_call.return_data[0] + 1
                    _96 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    if not uint16(sha3(mem[_96 + 32 len mem[_96]]) xor s + ext_call.return_data[0] + (s * ext_call.return_data[0]) + 24) % 10:
                        if sha3(mem[_96 + 32 len mem[_96]]) xor s + ext_call.return_data[0] + (s * ext_call.return_data[0]) + 24 % 2048 >> 245 % 10:
                            require ext_code.size(stor1)
                            call stor1.0xe3878436 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value stor3[msg.sender] wei
                                 gas 2300 * is_zero(value) wei
                            stor3[msg.sender] = 0
                    mem[_90 + 152] = ext_call.return_data[0] + 1
                    require ext_code.size(0x4731b8bf6c9eb4c45948dea74e4ac46f10d2a180)
                    call 0x4731b8bf6c9eb4c45948dea74e4ac46f10d2a180.getRandomSeed(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] + 1)
                    mem[_90 + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _90 + ceil32(return_data.size) + 148
                require return_data.size >= 32
                idx = idx + 1
                s = s + 9
                continue 
        else:
            if ext_call.return_data[0] != arg2 + ext_call.return_data[0] + (arg2 * ext_call.return_data[0]) + 24:
                revert with 0, 'gterror?'
            idx = 0
            s = arg2 + 1
            while idx < arg3:
                if bool(ext_call.return_data[0] + 1) != 1:
                    _91 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    mem[mem[64] + 52] = block.hash(block.number - 1)
                    mem[mem[64] + 84] = block.timestamp
                    mem[mem[64] + 116] = ext_call.return_data[0] + 1
                    _99 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    if not uint16(sha3(mem[_99 + 32 len mem[_99]]) xor s + (9 * ext_call.return_data[0]) + (s * ext_call.return_data[0]) + 19) % 10:
                        if sha3(mem[_99 + 32 len mem[_99]]) xor s + (9 * ext_call.return_data[0]) + (s * ext_call.return_data[0]) + 19 % 2048 >> 245 % 10:
                            require ext_code.size(stor1)
                            call stor1.0xe3878436 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value stor3[msg.sender] wei
                                 gas 2300 * is_zero(value) wei
                            stor3[msg.sender] = 0
                    mem[_91 + 152] = ext_call.return_data[0] + 1
                    require ext_code.size(0x4731b8bf6c9eb4c45948dea74e4ac46f10d2a180)
                    call 0x4731b8bf6c9eb4c45948dea74e4ac46f10d2a180.getRandomSeed(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] + 1)
                    mem[_91 + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _91 + ceil32(return_data.size) + 148
                else:
                    _92 = mem[64]
                    mem[mem[64] + 32] = address(msg.sender)
                    mem[mem[64] + 52] = block.hash(block.number - 1)
                    mem[mem[64] + 84] = block.timestamp
                    mem[mem[64] + 116] = ext_call.return_data[0] + 1
                    _102 = mem[64]
                    mem[mem[64]] = 116
                    mem[64] = mem[64] + 148
                    if not uint16(sha3(mem[_102 + 32 len mem[_102]]) xor s + ext_call.return_data[0] + (s * ext_call.return_data[0]) + 24) % 10:
                        if sha3(mem[_102 + 32 len mem[_102]]) xor s + ext_call.return_data[0] + (s * ext_call.return_data[0]) + 24 % 2048 >> 245 % 10:
                            require ext_code.size(stor1)
                            call stor1.0xe3878436 with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call msg.sender with:
                               value stor3[msg.sender] wei
                                 gas 2300 * is_zero(value) wei
                            stor3[msg.sender] = 0
                    mem[_92 + 152] = ext_call.return_data[0] + 1
                    require ext_code.size(0x4731b8bf6c9eb4c45948dea74e4ac46f10d2a180)
                    call 0x4731b8bf6c9eb4c45948dea74e4ac46f10d2a180.getRandomSeed(uint256 arg1) with:
                         gas gas_remaining wei
                        args (ext_call.return_data[0] + 1)
                    mem[_92 + 148] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _92 + ceil32(return_data.size) + 148
                require return_data.size >= 32
                idx = idx + 1
                s = s + 1
                continue 
}



}
