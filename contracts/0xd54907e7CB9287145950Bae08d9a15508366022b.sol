contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of struct sub_ec7bca54;
mapping of uint256 sub_4b5822b1;
address stor6;
address stor7;

function sub_4b5822b1(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4b5822b1[address(arg1)]
}

function sub_ec7bca54(?) {
    require calldata.size - 4 >= 32
    return sub_ec7bca54[arg1].field_256, 
           sub_ec7bca54[arg1].field_512,
           sub_ec7bca54[arg1].field_768,
           bool(sub_ec7bca54[arg1].field_1024)
}

function sub_495057be(?) payable {
  stop
}

function _fallback() payable {
    revert
}

function setGasToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6 != msg.sender:
        if address(stor1) != msg.sender:
            revert with 0, 'no'
    stor7 = arg1
}

function setFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(stor1) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Only the operator may change the fee for the marketplace.'
    stor2 = arg1
}

function changeOperator(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if address(stor1) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only the operator can change the current operator'
    uint256(stor1) = msg.sender or Mask(96, 160, uint256(stor1))
    emit OperatorChanged(address(stor1), msg.sender);
    stor0 = 1
}

function withdrawBalance() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not sub_4b5822b1[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have any balance to withdraw'
    call msg.sender with:
       value sub_4b5822b1[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_4b5822b1[msg.sender] = 0
    emit BalanceWithdrawn(sub_4b5822b1[msg.sender], msg.sender);
    stor0 = 1
}

function sub_684d7bfb(?) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if msg.value < sub_ec7bca54[arg1].field_768:
        revert with 0, 'Not enough funds to buy'
    if 1 == bool(sub_ec7bca54[arg1].field_1024):
        revert with 0, 'Offering is closed'
    require ext_code.size(sub_ec7bca54[arg1].field_256)
    call sub_ec7bca54[arg1].field_256.0xc43e92b1 with:
         gas gas_remaining wei
        args sub_ec7bca54[arg1].field_0, msg.sender, sub_ec7bca54[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ec7bca54[arg1].field_1024 = 1
    require ext_code.size(sub_ec7bca54[arg1].field_256)
    staticcall sub_ec7bca54[arg1].field_256.0x4d47732a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value and stor2 > -1 / msg.value:
        revert with 0, 17
    if msg.value and ext_call.return_data[0] > -1 / msg.value:
        revert with 0, 17
    if msg.value < msg.value * ext_call.return_data[0] / 100:
        revert with 0, 17
    if msg.value - (msg.value * ext_call.return_data[0] / 100) < msg.value * stor2 / 100:
        revert with 0, 17
    if sub_4b5822b1[stor4[arg1].field_0] > !(msg.value - (msg.value * ext_call.return_data[0] / 100) - (msg.value * stor2 / 100)):
        revert with 0, 17
    sub_4b5822b1[stor4[arg1].field_0] = sub_4b5822b1[stor4[arg1].field_0] + msg.value - (msg.value * ext_call.return_data[0] / 100) - (msg.value * stor2 / 100)
    if sub_4b5822b1[address(stor1)] > !(msg.value * stor2 / 100):
        revert with 0, 17
    sub_4b5822b1[address(stor1)] += msg.value * stor2 / 100
    require ext_code.size(sub_ec7bca54[arg1].field_256)
    staticcall sub_ec7bca54[arg1].field_256.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if sub_4b5822b1[ext_call.return_data[12 len 20]] > !(msg.value * ext_call.return_data[0] / 100):
        revert with 0, 17
    sub_4b5822b1[ext_call.return_data[12 len 20]] += msg.value * ext_call.return_data[0] / 100
    emit 0xcfb1c384: arg1, msg.sender
    stor0 = 1
}

function sub_2bc77fc9(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if address(stor1) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only operator dApp can create offerings this way'
    mem[128] = stor3
    mem[160] = address(arg2)
    mem[180] = arg3
    mem[96] = 84
    sub_ec7bca54[stor3][address(arg2)][arg3].field_0 = address(arg1)
    sub_ec7bca54[stor3][address(arg2)][arg3].field_256 = address(arg2)
    sub_ec7bca54[stor3][address(arg2)][arg3].field_512 = arg3
    sub_ec7bca54[stor3][address(arg2)][arg3].field_768 = arg4
    if stor3 > -2:
        revert with 0, 17
    stor3++
    mem[0] = sha3(stor3, address(arg2), arg3)
    mem[32] = 4
    mem[212] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[216] = arg3
    require ext_code.size(sub_ec7bca54[stor3][address(arg2)][arg3].field_256)
    staticcall sub_ec7bca54[stor3][address(arg2)][arg3].field_256.0xc87b56dd with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[212 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 212
    require return_data.size >= 32
    _14 = mem[212 len 4], Mask(224, 32, arg3) >> 32
    require mem[212 len 4], Mask(224, 32, arg3) >> 32 <= test266151307()
    require mem[212 len 4], Mask(224, 32, arg3) >> 32 + 243 < return_data.size + 212
    _15 = mem[mem[212 len 4], Mask(224, 32, arg3) >> 32 + 212]
    if mem[mem[212 len 4], Mask(224, 32, arg3) >> 32 + 212] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[212 len 4], Mask(224, 32, arg3) >> 32 + 212])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[212 len 4], Mask(224, 32, arg3) >> 32 + 212])) + 213 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[212 len 4], Mask(224, 32, arg3) >> 32 + 212])) + 213
    mem[ceil32(return_data.size) + 212] = mem[mem[212 len 4], Mask(224, 32, arg3) >> 32 + 212]
    require _14 + _15 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 244 len ceil32(_15)] = mem[_14 + 244 len ceil32(_15)]
    if ceil32(_15) > _15:
        mem[ceil32(return_data.size) + _15 + 244] = 0
    mem[mem[64]] = arg3
    mem[mem[64] + 32] = arg4
    mem[mem[64] + 64] = 96
    mem[mem[64] + 96] = _15
    mem[mem[64] + 128 len ceil32(_15)] = mem[ceil32(return_data.size) + 244 len ceil32(_15)]
    if ceil32(_15) > _15:
        mem[mem[64] + _15 + 128] = 0
    emit 0xedb9bcc5: arg3, arg4, Array(len=_15, data=mem[mem[64] + 128 len ceil32(_15)]), sha3(stor3, address(arg2), arg3), address(arg2), address(arg1)
    stor0 = 1
    return sha3(stor3, address(arg2), arg3)
}

function sub_08ecda28(?) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(stor7)
    call stor7.0x9bc255f8 with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_ec7bca54[arg1].field_768:
        revert with 0, 'Not enough funds to buy'
    if 1 == bool(sub_ec7bca54[arg1].field_1024):
        revert with 0, 'Offering is closed'
    require ext_code.size(sub_ec7bca54[arg1].field_256)
    call sub_ec7bca54[arg1].field_256.0xc43e92b1 with:
         gas gas_remaining wei
        args sub_ec7bca54[arg1].field_0, msg.sender, sub_ec7bca54[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ec7bca54[arg1].field_1024 = 1
    require ext_code.size(sub_ec7bca54[arg1].field_256)
    staticcall sub_ec7bca54[arg1].field_256.0x4d47732a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and stor2 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if ext_call.return_data[0] < ext_call.return_data[0] * ext_call.return_data[0] / 100:
        revert with 0, 17
    if ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 100) < ext_call.return_data[0] * stor2 / 100:
        revert with 0, 17
    if sub_4b5822b1[stor4[arg1].field_0] > !(ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 100) - (ext_call.return_data[0] * stor2 / 100)):
        revert with 0, 17
    sub_4b5822b1[stor4[arg1].field_0] = sub_4b5822b1[stor4[arg1].field_0] + ext_call.return_data[0] - (ext_call.return_data[0] * ext_call.return_data[0] / 100) - (ext_call.return_data[0] * stor2 / 100)
    if sub_4b5822b1[address(stor1)] > !(ext_call.return_data[0] * stor2 / 100):
        revert with 0, 17
    sub_4b5822b1[address(stor1)] += ext_call.return_data[0] * stor2 / 100
    require ext_code.size(sub_ec7bca54[arg1].field_256)
    staticcall sub_ec7bca54[arg1].field_256.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if sub_4b5822b1[ext_call.return_data[12 len 20]] > !(ext_call.return_data[0] * ext_call.return_data[0] / 100):
        revert with 0, 17
    sub_4b5822b1[ext_call.return_data[12 len 20]] += ext_call.return_data[0] * ext_call.return_data[0] / 100
    emit 0xcfb1c384: arg1, msg.sender
    stor0 = 1
}

function sub_188071e6(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[100] = arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x6352211e with:
            gas gas_remaining wei
           args arg2
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Caller does not own token'
    mem[ceil32(return_data.size) + 128] = stor3
    mem[ceil32(return_data.size) + 160] = address(arg1)
    mem[ceil32(return_data.size) + 180] = arg2
    mem[ceil32(return_data.size) + 96] = 84
    mem[0] = sha3(stor3, address(arg1), arg2)
    mem[32] = 4
    sub_ec7bca54[stor3][address(arg1)][arg2].field_0 = address(ext_call.return_data[0])
    sub_ec7bca54[stor3][address(arg1)][arg2].field_256 = address(arg1)
    sub_ec7bca54[stor3][address(arg1)][arg2].field_512 = arg2
    sub_ec7bca54[stor3][address(arg1)][arg2].field_768 = arg3
    if stor3 > -2:
        revert with 0, 17
    stor3++
    mem[ceil32(return_data.size) + 212] = 0xc87b56dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 216] = arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xc87b56dd with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 212 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 212
    require return_data.size >= 32
    _17 = mem[ceil32(return_data.size) + 212 len 4], Mask(224, 32, arg2) >> 32
    require mem[ceil32(return_data.size) + 212 len 4], Mask(224, 32, arg2) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 212 len 4], Mask(224, 32, arg2) >> 32 + 243 < ceil32(return_data.size) + return_data.size + 212
    _18 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 212 len 4], Mask(224, 32, arg2) >> 32 + 212]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 212 len 4], Mask(224, 32, arg2) >> 32 + 212] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 212 len 4], Mask(224, 32, arg2) >> 32 + 212])) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 212 len 4], Mask(224, 32, arg2) >> 32 + 212])) + 213 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 212 len 4], Mask(224, 32, arg2) >> 32 + 212])) + 213
    mem[(2 * ceil32(return_data.size)) + 212] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 212 len 4], Mask(224, 32, arg2) >> 32 + 212]
    require _17 + _18 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 244 len ceil32(_18)] = mem[ceil32(return_data.size) + _17 + 244 len ceil32(_18)]
    if ceil32(_18) > _18:
        mem[(2 * ceil32(return_data.size)) + _18 + 244] = 0
    mem[mem[64]] = arg2
    mem[mem[64] + 32] = arg3
    mem[mem[64] + 64] = 96
    mem[mem[64] + 96] = _18
    mem[mem[64] + 128 len ceil32(_18)] = mem[(2 * ceil32(return_data.size)) + 244 len ceil32(_18)]
    if ceil32(_18) > _18:
        mem[mem[64] + _18 + 128] = 0
    emit 0xedb9bcc5: arg2, arg3, Array(len=_18, data=mem[mem[64] + 128 len ceil32(_18)]), sha3(stor3, address(arg1), arg2), address(arg1), address(ext_call.return_data[0])
    stor0 = 1
    return sha3(stor3, address(arg1), arg2)
}



}
