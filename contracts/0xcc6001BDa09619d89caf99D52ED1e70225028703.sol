contract main {




// =====================  Runtime code  =====================


#
#  - sub_6a0dab78(?)
#  - _fallback()
#
const getChainID = chainid


address validatorAddress;
uint256 fee;
uint256 sub_f1750d17;
uint256 stor3;
address sub_8fa19a70Address;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of address sub_5293b326;
mapping of uint8 stor8;

function validator() {
    return validatorAddress
}

function sub_5293b326(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_5293b326[arg1[all]]
}

function sub_8ac25c71(?) {
    require calldata.size - 4 >= 32
    return bool(stor6[arg1])
}

function sub_8fa19a70(?) {
    return sub_8fa19a70Address
}

function activeChainIds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function sub_cc901d1f(?) {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function fee() {
    return fee
}

function sub_f1750d17(?) {
    return sub_f1750d17
}

function updateFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if validatorAddress != msg.sender:
        revert with 0, 'DENIED : Not Validator'
    fee = arg1
}

function calculateFee() {
    if fee > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not sub_f1750d17:
        revert with 0, 18
    return (10^18 * fee / sub_f1750d17)
}

function updateValidator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if validatorAddress != msg.sender:
        revert with 0, 'DENIED : Not Validator'
    validatorAddress = arg1
}

function sub_fdfaa658(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if validatorAddress != msg.sender:
        revert with 0, 'DENIED : Not Validator'
    sub_8fa19a70Address = address(arg1)
}

function updateChainById(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if validatorAddress != msg.sender:
        revert with 0, 'DENIED : Not Validator'
    stor8[arg1] = uint8(arg2)
}

function withdrawFee() {
    if validatorAddress != msg.sender:
        revert with 0, 'DENIED : Not Validator'
    call sub_8fa19a70Address with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit WithdrawalFee(eth.balance(this.address), sub_8fa19a70Address);
}

function sub_410a7554(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if validatorAddress != msg.sender:
        revert with 0, 'DENIED : Not Validator'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 7
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = 0
}

function sub_4b9753d4(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 == address(arg2)
    if validatorAddress != msg.sender:
        revert with 0, 'only validator'
    mem[ceil32(ceil32(arg1.length)) + 97 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    mem[arg1.length + ceil32(ceil32(arg1.length)) + 97] = 7
    stor[sha3(mem[ceil32(ceil32(arg1.length)) + 97 len arg1.length + 32])] = address(arg2)
}

function sub_3b570506(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if fee > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not sub_f1750d17:
        revert with 0, 18
    if msg.value < 10^18 * fee / sub_f1750d17:
        revert with 0, 'Swap fee is not fulfilled'
    if stor3 == -1:
        revert with 0, 17
    stor3++
    if stor5[msg.sender][address(arg1)][arg2][arg5][arg4][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256][stor3]:
        revert with 0, 'swap already processed'
    mem[ceil32(ceil32(arg3.length)) + arg3.length + 465 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg3.length + 168) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
    mem[ceil32(ceil32(arg3.length)) + (2 * arg3.length) + 465] = stor3
    stor5[msg.sender][address(arg1)][arg2][arg5][arg4][Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg3.length + 168) >> 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff08 + (8 * -ceil32(arg3.length)) + (8 * ceil32(ceil32(arg3.length))) + 256) << (8 * ceil32(arg3.length)) - 256][mem[ceil32(ceil32(arg3.length)) + arg3.length + ceil32(arg3.length) + 465 len arg3.length + -ceil32(arg3.length) + 32]] = 1
    mem[ceil32(ceil32(arg3.length)) + (2 * arg3.length) + 497 len ceil32(arg3.length)] = arg3[all], Mask(8 * ceil32(arg3.length) - arg3.length, -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256, arg3.length + 168) >> -(8 * ceil32(arg3.length) + -ceil32(ceil32(arg3.length)) + 31) + 256
    mem[(4 * arg3.length) + ceil32(ceil32(arg3.length)) + 497] = 7
    require ext_code.size(stor[sha3(mem[ceil32(ceil32(arg3.length)) + (2 * arg3.length) + 497 len arg3.length + 32])])
    call stor[sha3(mem[ceil32(ceil32(arg3.length)) + (2 * arg3.length) + 497 len arg3.length + 32])].burn(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x57caa88f: arg2, Array(len=arg3.length, data=arg3[all]), arg4, arg5, stor3, msg.sender, address(arg1)
}



}
