contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 geUnlockTime;
uint256 stor3;
address stor4;
array of address sub_aa5965ae;
address routerAddress;
address tokenFactoryAddress;
array of struct stor8;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function routerAddress() {
    return routerAddress
}

function owner() {
    return owner
}

function sub_aa5965ae(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_aa5965ae.length
    return sub_aa5965ae[arg1]
}

function geUnlockTime() {
    return geUnlockTime
}

function tokenFactoryAddress() {
    return tokenFactoryAddress
}

function _fallback() payable {
    revert
}

function setFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17825 len 32]
    stor3 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17825 len 32]
    emit code.data[17857 len 32]: owner, 0
    owner = 0
}

function setBankAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17825 len 32]
    stor4 = arg1
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17825 len 32]
    routerAddress = arg1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17825 len 32]
    stor1 = owner
    owner = 0
    geUnlockTime = arg1 + block.timestamp
    emit code.data[17857 len 32]: 0, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 54, code.data[17889 len 54], mem[218 len 10]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit code.data[17857 len 32]: owner, stor1
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 32, 32, code.data[17825 len 32]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[17787 len 38], mem[202 len 26]
    emit code.data[17857 len 32]: owner, arg1
    owner = arg1
}

function getInfo(address arg1) {
    require calldata.size - 4 >= 32
    if stor8[address(arg1)].field_0:
        mem[128] = stor8[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor8[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor8[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor8[address(arg1)].field_0) + 256 len floor32(stor8[address(arg1)].field_0)] = mem[128 len floor32(stor8[address(arg1)].field_0)]
    return Array(len=stor8[address(arg1)].field_0, data=mem[128 len floor32(stor8[address(arg1)].field_0)], mem[(32 * stor8[address(arg1)].field_0) + floor32(stor8[address(arg1)].field_0) + 256 len (32 * stor8[address(arg1)].field_0) - floor32(stor8[address(arg1)].field_0)]), 
           stor3,
           stor4
}

function sub_7266d79a(?) payable {
    require calldata.size - 4 >= 192
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if arg3 <= 0:
        revert with 0, 'Decimal amount is invalid'
    if arg4 <= 0:
        revert with 0, 'Token Supply is invalid'
    if arg5 > 10:
        revert with 0, 'Tax Fee is invalid'
    if arg6 > 10:
        revert with 0, 'Liq Fee is invalid'
    if stor3:
        if msg.value < stor3:
            revert with 0, 32, 52, code.data[17943 len 52], mem[ceil32(arg1.length) + ceil32(arg2.length) + 280 len 12]
        call stor4 with:
           value stor3 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 13851] = code.data[3936 len 13851]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 14011] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 14107] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 14139] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 14171] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 14203] = arg6
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 14235] = 10
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 14267] = 10
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 14299] = 50
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 14331] = routerAddress
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 14043] = 352
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 14363] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 14395 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 14075] = arg1.length + 384
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 14395] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 14427 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 14267]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 14427] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 14459 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 14299]
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14395] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 14427 len arg1.length % 32]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 14075] = floor32(arg1.length) + 416
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14427] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
        mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14459 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
        if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 14299]
        else:
            mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 14459] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 14491 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
            create contract with 0 wei
                            code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 14331]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).excludeFromFee(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_aa5965ae.length++
    stor36B6[stor5.length] = address(create.new_address)
    stor8[msg.sender].field_0++
    stor8[msg.sender][stor8[msg.sender].field_0].field_0 = address(create.new_address)
    require ext_code.size(tokenFactoryAddress)
    call tokenFactoryAddress.registerToken(address arg1) with:
         gas gas_remaining wei
        args address(create.new_address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, uint128(create.new_address) << 96
}



}
