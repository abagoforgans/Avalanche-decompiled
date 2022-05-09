contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function withdrawAVAX() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_29002ec2(?) {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 'NH{q', 65
    if floor32(('cd', 4).length) + 97 > test266151307() or floor32(('cd', 4).length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == cd[132]
    require cd[164] == cd[164]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getReserves() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + 97 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_call.return_data[18 len 14] >= cd[132]
    require ext_call.return_data[50 len 14] >= cd[164]
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).token0() with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0xd21220a7 with:
            gas gas_remaining wei
    mem[floor32(('cd', 4).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 4).length:
        revert with 'NH{q', 50
    if 1 >= ('cd', 4).length:
        revert with 'NH{q', 50
    if cd[68] and 997 > -1 / cd[68]:
        revert with 'NH{q', 17
    if 997 * cd[68] / 997 != cd[68]:
        revert with 0, 'ds-math-mul-overflow'
    if mem[140 len 20] == address(ext_call.return_data[0]):
        if mem[172 len 20] == ext_call.return_data[12 len 20]:
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _178 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_178))
                    call address(_178).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                else:
                    _180 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_180))
                    call address(_180).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
            else:
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * cd[68]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _234 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_234))
                    call address(_234).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                else:
                    _236 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_236))
                    call address(_236).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _182 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_182))
                    call address(_182).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                else:
                    _184 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_184))
                    call address(_184).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
            else:
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * cd[68]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _238 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_238))
                    call address(_238).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                else:
                    _240 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_240))
                    call address(_240).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
    else:
        if mem[172 len 20] == ext_call.return_data[12 len 20]:
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _186 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_186))
                    call address(_186).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                else:
                    _188 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_188))
                    call address(_188).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
            else:
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * cd[68]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 18
                if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _242 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_242))
                    call address(_242).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                else:
                    _244 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_244))
                    call address(_244).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _190 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_190))
                    call address(_190).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                else:
                    _192 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_192))
                    call address(_192).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
            else:
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * cd[68]:
                    revert with 'NH{q', 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 'NH{q', 18
                if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 'NH{q', 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * cd[68]) - 1:
                    revert with 'NH{q', 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                    revert with 'NH{q', 18
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                require 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _246 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_246))
                    call address(_246).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                else:
                    _248 = mem[128]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_248))
                    call address(_248).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[floor32(('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 'NH{q', 1
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = 0
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 197] = this.address
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 229] = 128
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 261] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]
                    mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])] = mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 129 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]) > mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97]:
                        mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97], mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 293 len ceil32(mem[floor32(('cd', 4).length) + (6 * ceil32(return_data.size)) + 97])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
