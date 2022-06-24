contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 balanceWAVAX;

function owner() {
    return owner
}

function balanceWAVAX() {
    return balanceWAVAX
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

function sub_13d6278d(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    call stor1.deposit(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
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

function getBalanceOfToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawToken(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
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
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 > test266151307() or ceil32(32 * ('cd', 4).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] == address(cd[36])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    _294 = mem[128]
    mem[ceil32(32 * ('cd', 4).length) + 101] = this.address
    require ext_code.size(address(_294))
    staticcall address(_294).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(32 * ('cd', 4).length) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[68]:
        revert with 0, 'NEED MORE FLOUZE'
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getReserves() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    if ext_call.return_data[18 len 14] < cd[132]:
        revert with 0, 'NEED MORE LIQUIDITY'
    if ext_call.return_data[50 len 14] < cd[164]:
        revert with 0, 'NEED MORE LIQUIDITY'
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).token0() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).token1() with:
            gas gas_remaining wei
    mem[ceil32(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    if 1 >= ('cd', 4).length:
        revert with 0, 50
    if cd[68] and 997 > -1 / cd[68]:
        revert with 0, 17
    if 997 * cd[68] / 997 != cd[68]:
        revert with 0, 'ds-math-mul-overflow'
    if mem[140 len 20] == address(ext_call.return_data[0]):
        if mem[172 len 20] == ext_call.return_data[12 len 20]:
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * cd[68]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                    revert with 0, 18
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                require 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _390 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_390))
                    call address(_390).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                else:
                    _392 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_392))
                    call address(_392).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
            else:
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * cd[68]:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * cd[68]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                    revert with 0, 18
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                require 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _446 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_446))
                    call address(_446).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                else:
                    _448 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_448))
                    call address(_448).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * cd[68]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                    revert with 0, 18
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                require 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _394 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_394))
                    call address(_394).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                else:
                    _396 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_396))
                    call address(_396).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
            else:
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * cd[68]:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * cd[68]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                    revert with 0, 18
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                require 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _450 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_450))
                    call address(_450).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                else:
                    _452 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_452))
                    call address(_452).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
    else:
        if mem[172 len 20] == ext_call.return_data[12 len 20]:
            if not Mask(112, 0, ext_call.return_data[32]):
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * cd[68]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                    revert with 0, 18
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                require 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _398 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_398))
                    call address(_398).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                else:
                    _400 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_400))
                    call address(_400).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
            else:
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * cd[68]:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 18
                if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * cd[68]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                    revert with 0, 18
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                require 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _454 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_454))
                    call address(_454).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                else:
                    _456 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_456))
                    call address(_456).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
        else:
            if not Mask(112, 0, ext_call.return_data[0]):
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * cd[68]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                    revert with 0, 18
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                require 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _402 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_402))
                    call address(_402).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                else:
                    _404 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_404))
                    call address(_404).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
            else:
                if 997 * cd[68] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * cd[68]:
                    revert with 0, 17
                if not Mask(112, 0, ext_call.return_data[0]):
                    revert with 0, 18
                if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 17
                if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-mul-overflow'
                if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * cd[68]):
                    revert with 0, 17
                if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                    revert with 0, 'ds-math-add-overflow'
                if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                    revert with 0, 18
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                require 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) >= cd[100]
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                if mem[140 len 20] == address(ext_call.return_data[0]):
                    _458 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_458))
                    call address(_458).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                else:
                    _460 = mem[128]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 101] = address(cd[36])
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = cd[68]
                    require ext_code.size(address(_460))
                    call address(_460).0xa9059cbb with:
                         gas gas_remaining wei
                        args address(cd[36]), cd[68]
                    mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if not ext_call.return_data[0]:
                        revert with 0, 1
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 133] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = this.address
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = 128
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]
                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
                    if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97]:
                        mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97] + 293] = 0
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                         gas gas_remaining wei
                        args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 97])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size < 4:
        if not calldata.size:
            emit Received(msg.sender, msg.value);
    else:
        if unknown_0x8da5cb5b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0xabce145b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                call msg.sender with:
                   value eth.balance(this.address) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xbe4b1772(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, cd[4]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if unknown_0xe5c9ceb3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return balanceWAVAX
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(cd[4]):
                            revert with 0, 'Ownable: new owner is the zero address'
                        owner = address(cd[4])
                        emit OwnershipTransferred(owner, address(cd[4]));
        else:
            if unknown_0x13d6278d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(stor1)
                call stor1.deposit(uint256 arg1) with:
                     gas gas_remaining wei
                    args cd[4]
            else:
                if uint32(call.func_hash) >> 224 != unknown_0x29002ec2(?????):
                    if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        owner = 0
                        emit OwnershipTransferred(owner, 0);
                    if uint32(call.func_hash) >> 224 != unknown_0x83786f8c(?????):
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                require not msg.value
                require calldata.size - 4 >= 192
                require cd[4] <= test266151307()
                require cd[4] + 35 < calldata.size
                if ('cd', 4).length > test266151307():
                    revert with 0, 65
                if ceil32(32 * ('cd', 4).length) + 129 > test266151307() or ceil32(32 * ('cd', 4).length) + 129 < 128:
                    revert with 0, 65
                mem[128] = ('cd', 4).length
                require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
                s = cd[4] + 36
                t = 160
                idx = 0
                while idx < ('cd', 4).length:
                    require cd[s] == address(cd[s])
                    mem[t] = cd[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                require cd[36] == address(cd[36])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                _327 = mem[160]
                mem[ceil32(32 * ('cd', 4).length) + 133] = this.address
                require ext_code.size(address(_327))
                staticcall address(_327).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[ceil32(32 * ('cd', 4).length) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < cd[68]:
                    revert with 0, 'NEED MORE FLOUZE'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).getReserves() with:
                        gas gas_remaining wei
                mem[ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 129 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                if ext_call.return_data[18 len 14] < cd[132]:
                    revert with 0, 'NEED MORE LIQUIDITY'
                if ext_call.return_data[50 len 14] < cd[164]:
                    revert with 0, 'NEED MORE LIQUIDITY'
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).token0() with:
                        gas gas_remaining wei
                mem[ceil32(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).token1() with:
                        gas gas_remaining wei
                mem[ceil32(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                if 1 >= ('cd', 4).length:
                    revert with 0, 50
                if cd[68] and 997 > -1 / cd[68]:
                    revert with 0, 17
                if 997 * cd[68] / 997 != cd[68]:
                    revert with 0, 'ds-math-mul-overflow'
                if mem[172 len 20] == address(ext_call.return_data[0]):
                    if mem[204 len 20] == ext_call.return_data[12 len 20]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * cd[68]):
                                revert with 0, 17
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                                revert with 0, 18
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            require 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) >= cd[100]
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[172 len 20] == address(ext_call.return_data[0]):
                                _423 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_423))
                                call address(_423).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                            else:
                                _425 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_425))
                                call address(_425).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                        else:
                            if 997 * cd[68] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * cd[68]:
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * cd[68]):
                                revert with 0, 17
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                                revert with 0, 18
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            require 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) >= cd[100]
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[172 len 20] == address(ext_call.return_data[0]):
                                _479 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_479))
                                call address(_479).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                            else:
                                _481 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_481))
                                call address(_481).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * cd[68]):
                                revert with 0, 17
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                                revert with 0, 18
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            require 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) >= cd[100]
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[172 len 20] == address(ext_call.return_data[0]):
                                _427 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_427))
                                call address(_427).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                            else:
                                _429 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_429))
                                call address(_429).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                        else:
                            if 997 * cd[68] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * cd[68]:
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 18
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 17
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) / 1000 != Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[0]) > !(997 * cd[68]):
                                revert with 0, 17
                            if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]):
                                revert with 0, 18
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            require 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]) >= cd[100]
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[172 len 20] == address(ext_call.return_data[0]):
                                _483 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_483))
                                call address(_483).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                            else:
                                _485 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_485))
                                call address(_485).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                else:
                    if mem[204 len 20] == ext_call.return_data[12 len 20]:
                        if not Mask(112, 0, ext_call.return_data[32]):
                            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * cd[68]):
                                revert with 0, 17
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                                revert with 0, 18
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            require 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) >= cd[100]
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[172 len 20] == address(ext_call.return_data[0]):
                                _431 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_431))
                                call address(_431).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                            else:
                                _433 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_433))
                                call address(_433).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                        else:
                            if 997 * cd[68] and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * cd[68]:
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 18
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * cd[68]):
                                revert with 0, 17
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                                revert with 0, 18
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            require 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) >= cd[100]
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[172 len 20] == address(ext_call.return_data[0]):
                                _487 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_487))
                                call address(_487).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                            else:
                                _489 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_489))
                                call address(_489).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * cd[68] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                    else:
                        if not Mask(112, 0, ext_call.return_data[0]):
                            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * cd[68]):
                                revert with 0, 17
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                                revert with 0, 18
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            require 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) >= cd[100]
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[172 len 20] == address(ext_call.return_data[0]):
                                _435 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_435))
                                call address(_435).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                            else:
                                _437 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_437))
                                call address(_437).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                        else:
                            if 997 * cd[68] and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * cd[68]:
                                revert with 0, 17
                            if not Mask(112, 0, ext_call.return_data[0]):
                                revert with 0, 18
                            if 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 997 * cd[68]:
                                revert with 0, 'ds-math-mul-overflow'
                            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 17
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) / 1000 != Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-mul-overflow'
                            if 1000 * Mask(112, 0, ext_call.return_data[32]) > !(997 * cd[68]):
                                revert with 0, 17
                            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                                revert with 0, 'ds-math-add-overflow'
                            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]):
                                revert with 0, 18
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            require 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]) >= cd[100]
                            if 0 >= ('cd', 4).length:
                                revert with 0, 50
                            if mem[172 len 20] == address(ext_call.return_data[0]):
                                _491 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_491))
                                call address(_491).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 0, 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                            else:
                                _493 = mem[160]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 133] = address(cd[36])
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 165] = cd[68]
                                require ext_code.size(address(_493))
                                call address(_493).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(cd[36]), cd[68]
                                mem[ceil32(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 1
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161] = 0x22c0d9f00000000000000000000000000000000000000000000000000000000
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 165] = 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68])
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 197] = 0
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 229] = this.address
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 261] = 128
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 293] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]
                                mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])] = mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 161 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
                                if ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]) > mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129]:
                                    mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129] + 325] = 0
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
                                     gas gas_remaining wei
                                    args 997 * cd[68] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * cd[68]), 0, address(this.address), 128, mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129], mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(32 * ('cd', 4).length) + (7 * ceil32(return_data.size)) + 129])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
