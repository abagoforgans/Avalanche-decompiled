contract main {




// =====================  Runtime code  =====================


#
#  - sub_05d58c21(?)
#  - closeLoan()
#  - liquidateLoan(uint256 arg1)
#  - sub_d44e282b(?)
#
const getPool = 0x5ff1de6091871adaae64e2ec4fed754628482868

const sub_132e1d39(?) = 1000

const getDebt = ext_call.return_data[0]

const sub_2802fdc8(?) = 0x981bda8276ae93f567922497153de7a5683708d3

const sub_4fcaf08f(?) = 0x3befdd935b50f172e696a5187dbacfef0d208e48

const sub_5118af5a(?) = 30

const sub_52154a26(?) = 4000

const sub_59aa9e72(?) = 100

const sub_b5dbd7f0(?) = 5000

const sub_f31a210a(?) = 180

const getExchange = 0x278438423f433e277f65d14c0e002b8828702ba


uint8 stor0; offset 8
uint8 stor0; offset 16
uint256 stor0; offset 16
uint256 stor0; offset 8
address owner;
uint256 stor101;
uint256 stor4E62;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_11c89b10(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(arg1) == 0x981bda8276ae93f567922497153de7a5683708d3:
        return True
    return (address(arg1) == 0x3befdd935b50f172e696a5187dbacfef0d208e48)
}

function fund() payable {
    if stor4E62 > -msg.value - 1:
        revert with 'NH{q', 17
    if stor4E62 + msg.value > 125 * 10^16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Adding more than 1.25 AVAX is not allowed'
    stor4E62 += msg.value
    emit 0xcd909ec3: msg.value, block.timestamp, msg.sender
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

function sub_75058205(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.timestamp > -31:
        revert with 'NH{q', 17
    if block.timestamp + 30 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Data with future timestamps is not allowed'
    if block.timestamp < arg1:
        return (block.timestamp < arg1)
    return (block.timestamp - arg1 < 180)
}

function initialize() {
    if uint8(stor0.field_16):
        if ext_code.size(this.address) > 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_8):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_16):
        Mask(240, 0, stor0.field_16) = 1
        Mask(248, 0, stor0.field_8) = 1
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
    stor101 = 1
}

function getBalance(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
    staticcall 0x278438423f433e277f65d14c0e002b8828702ba.0x76d02895 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_a935310f(?) {
    mem[96] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
    staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
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
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97 > test266151307() or floor32(mem[mem[96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(cd[(calldata.size - 97)]) and 64 > 65535 / uint8(cd[(calldata.size - 97)]):
        revert with 'NH{q', 17
    if 64 * uint8(cd[(calldata.size - 97)]) > 65503:
        revert with 'NH{q', 17
    if call.data[calldata.size - 33] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function getTotalValue() {
    mem[96] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
    staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
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
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97 > test266151307() or floor32(mem[mem[96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(cd[(calldata.size - 97)]) and 64 > 65535 / uint8(cd[(calldata.size - 97)]):
        revert with 'NH{q', 17
    if 64 * uint8(cd[(calldata.size - 97)]) > 65503:
        revert with 'NH{q', 17
    if call.data[calldata.size - 33] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function sub_4ed2b8ac(?) {
    mem[100] = this.address
    require ext_code.size(0x5ff1de6091871adaae64e2ec4fed754628482868)
    staticcall 0x5ff1de6091871adaae64e2ec4fed754628482868.0x6011163e with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
    staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require _8 + (32 * _9) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _9:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(cd[(calldata.size - 97)]) and 64 > 65535 / uint8(cd[(calldata.size - 97)]):
        revert with 'NH{q', 17
    if 64 * uint8(cd[(calldata.size - 97)]) > 65503:
        revert with 'NH{q', 17
    if call.data[calldata.size - 33] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function sub_5ce23950(?) {
    mem[100] = this.address
    require ext_code.size(0x5ff1de6091871adaae64e2ec4fed754628482868)
    staticcall 0x5ff1de6091871adaae64e2ec4fed754628482868.0x6011163e with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
    staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require _8 + (32 * _9) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _9:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(cd[(calldata.size - 97)]) and 64 > 65535 / uint8(cd[(calldata.size - 97)]):
        revert with 'NH{q', 17
    if 64 * uint8(cd[(calldata.size - 97)]) > 65503:
        revert with 'NH{q', 17
    if call.data[calldata.size - 33] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function repay(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    require ext_code.size(0x5ff1de6091871adaae64e2ec4fed754628482868)
    staticcall 0x5ff1de6091871adaae64e2ec4fed754628482868.0x6011163e with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
    staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require _8 + (32 * _9) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _8 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _9:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(cd[(calldata.size - 97)]) and 64 > 65535 / uint8(cd[(calldata.size - 97)]):
        revert with 'NH{q', 17
    if 64 * uint8(cd[(calldata.size - 97)]) > 65503:
        revert with 'NH{q', 17
    if call.data[calldata.size - 33] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function borrow(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x5ff1de6091871adaae64e2ec4fed754628482868)
    call 0x5ff1de6091871adaae64e2ec4fed754628482868.0xc5ebeaec with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[128] = block.timestamp
    emit Borrowed(arg1, block.timestamp, msg.sender);
    mem[100] = this.address
    require ext_code.size(0x5ff1de6091871adaae64e2ec4fed754628482868)
    staticcall 0x5ff1de6091871adaae64e2ec4fed754628482868.0x6011163e with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
    staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _14 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _15 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require _14 + (32 * _15) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _14 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _15:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(cd[(calldata.size - 97)]) and 64 > 65535 / uint8(cd[(calldata.size - 97)]):
        revert with 'NH{q', 17
    if 64 * uint8(cd[(calldata.size - 97)]) > 65503:
        revert with 'NH{q', 17
    if call.data[calldata.size - 33] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function sub_8a027cb3(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if eth.balance(this.address) < cd[68]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Not enough funds are available to invest in an asset'
    mem[100] = cd[4]
    mem[132] = cd[36]
    require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
    call 0x0278438423f433e277f65d14c0e002b8828702ba.0x5d8874e9 with:
       value cd[68] wei
         gas gas_remaining wei
        args cd[4], cd[36]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Investment failed'
    mem[ceil32(return_data.size) + 128] = block.timestamp
    emit 0x8c4f7b2f: cd[36], block.timestamp, msg.sender, cd[4]
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(0x5ff1de6091871adaae64e2ec4fed754628482868)
    staticcall 0x5ff1de6091871adaae64e2ec4fed754628482868.0x6011163e with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
    staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _22 = mem[(2 * ceil32(return_data.size)) + 96]
    require mem[(2 * ceil32(return_data.size)) + 96] <= test266151307()
    require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
    _23 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96] > test266151307():
        revert with 'NH{q', 65
    if (4 * ceil32(return_data.size)) + floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or floor32(mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[(4 * ceil32(return_data.size)) + 96] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
    require _22 + (32 * _23) + 32 <= return_data.size
    idx = 0
    s = (2 * ceil32(return_data.size)) + _22 + 128
    t = (4 * ceil32(return_data.size)) + 128
    while idx < _23:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if uint8(cd[(calldata.size - 97)]) and 64 > 65535 / uint8(cd[(calldata.size - 97)]):
        revert with 'NH{q', 17
    if 64 * uint8(cd[(calldata.size - 97)]) > 65503:
        revert with 'NH{q', 17
    if call.data[calldata.size - 33] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function sub_6b6c92d9(?) {
    mem[96] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
    require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
    staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
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
        revert with 'NH{q', 65
    if ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97 > test266151307() or floor32(mem[mem[96] + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + (32 * _5) + 32 <= return_data.size
    idx = 0
    s = _4 + 128
    t = ceil32(return_data.size) + 128
    while idx < _5:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if _5 > test266151307():
        revert with 'NH{q', 65
    _44 = mem[64]
    mem[mem[64]] = _5
    mem[64] = mem[64] + (32 * _5) + 32
    if not _5:
        idx = 0
        while idx < _5:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 'NH{q', 50
            _82 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
            require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
            staticcall 0x278438423f433e277f65d14c0e002b8828702ba.0x76d02895 with:
                    gas gas_remaining wei
                   args _82
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _93 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _97 = mem[_93]
            require mem[_93] == mem[_93 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_97))
            staticcall address(_97).0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _103 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_103] == mem[_103]
            if idx >= mem[_44]:
                revert with 'NH{q', 50
            mem[(32 * idx) + _44 + 32] = mem[_103]
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _85 = mem[_44]
        mem[mem[64] + 32] = mem[_44]
        mem[mem[64] + 64 len 32 * _85] = mem[_44 + 32 len 32 * _85]
        return 32, mem[mem[64] + 32 len (32 * _85) + 32]
    mem[_44 + 32 len 32 * _5] = call.data[calldata.size len 32 * _5]
    idx = 0
    while idx < _5:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 'NH{q', 50
        _84 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 128]
        require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
        staticcall 0x278438423f433e277f65d14c0e002b8828702ba.0x76d02895 with:
                gas gas_remaining wei
               args _84
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _94 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _98 = mem[_94]
        require mem[_94] == mem[_94 + 12 len 20]
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(_98))
        staticcall address(_98).0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _104 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_104] == mem[_104]
        if idx >= mem[_44]:
            revert with 'NH{q', 50
        mem[(32 * idx) + _44 + 32] = mem[_104]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _87 = mem[_44]
    mem[mem[64] + 32] = mem[_44]
    mem[mem[64] + 64 len 32 * _87] = mem[_44 + 32 len 32 * _87]
    return 32, mem[mem[64] + 32 len (32 * _87) + 32]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if eth.balance(this.address) < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There is not enough funds to withdraw'
    mem[96] = 0
    mem[128 len 0] = None
    call msg.sender with:
       value arg1 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
        mem[160] = block.timestamp
        emit Withdrawn(arg1, block.timestamp, msg.sender);
        mem[132] = this.address
        require ext_code.size(0x5ff1de6091871adaae64e2ec4fed754628482868)
        staticcall 0x5ff1de6091871adaae64e2ec4fed754628482868.0x6011163e with:
                gas gas_remaining wei
               args this.address
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + 128] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
        staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 128
        require return_data.size >= 32
        _288 = mem[ceil32(return_data.size) + 128]
        require mem[ceil32(return_data.size) + 128] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 159 < ceil32(return_data.size) + return_data.size + 128
        _292 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 128]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 128] > test266151307():
            revert with 'NH{q', 65
        if (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 128]) + 129 > test266151307() or floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 128]) + 1 < 0:
            revert with 'NH{q', 65
        mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128] + 128]
        require _288 + (32 * _292) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + _288 + 160
        t = (2 * ceil32(return_data.size)) + 160
        while idx < _292:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    else:
        mem[128] = return_data.size
        mem[160 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransferETH: ETH transfer failed'
        mem[ceil32(return_data.size) + 161] = block.timestamp
        emit Withdrawn(arg1, block.timestamp, msg.sender);
        mem[ceil32(return_data.size) + 133] = this.address
        require ext_code.size(0x5ff1de6091871adaae64e2ec4fed754628482868)
        staticcall 0x5ff1de6091871adaae64e2ec4fed754628482868.0x6011163e with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 129] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
        require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
        staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 129
        require return_data.size >= 32
        _289 = mem[ceil32(return_data.size) + ceil32(return_data.size) + 129]
        require mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] <= test266151307()
        require ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] + 160 < ceil32(return_data.size) + ceil32(return_data.size) + return_data.size + 129
        _293 = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] + 129]
        if mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] + 129] > test266151307():
            revert with 'NH{q', 65
        if ceil32(return_data.size) + (2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] + 129]) + 130 > test266151307() or floor32(mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] + 129]) + 1 < 0:
            revert with 'NH{q', 65
        mem[ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 129] = mem[ceil32(return_data.size) + ceil32(return_data.size) + mem[ceil32(return_data.size) + ceil32(return_data.size) + 129] + 129]
        require _289 + (32 * _293) + 32 <= return_data.size
        idx = 0
        s = ceil32(return_data.size) + ceil32(return_data.size) + _289 + 161
        t = ceil32(return_data.size) + (2 * ceil32(return_data.size)) + 161
        while idx < _293:
            require mem[s] == mem[s]
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
    if uint8(cd[(calldata.size - 97)]) and 64 > 65535 / uint8(cd[(calldata.size - 97)]):
        revert with 'NH{q', 17
    if 64 * uint8(cd[(calldata.size - 97)]) > 65503:
        revert with 'NH{q', 17
    if call.data[calldata.size - 33] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}

function sub_d2b29d70(?) {
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = cd[4]
    require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
    staticcall 0x278438423f433e277f65d14c0e002b8828702ba.0x76d02895 with:
            gas gas_remaining wei
           args cd[4]
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 132] = 0x278438423f433e277f65d14c0e002b8828702ba
    mem[ceil32(return_data.size) + 164] = cd[36]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = 0x278438423f433e277f65d14c0e002b8
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196 len 96] = unknown_0xa9059cbb(?????), 764359954111768367717571860, 0, cd[36], mem[ceil32(return_data.size) + 196 len 28]
    mem[ceil32(return_data.size) + 264] = 0
    call address(ext_call.return_data[0]).mem[ceil32(return_data.size) + 196 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(return_data.size) + 200 len 64]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        if not ext_call.return_data[0]:
            mem[ceil32(return_data.size) + 200] = cd[4]
            mem[ceil32(return_data.size) + 232] = cd[36]
            mem[ceil32(return_data.size) + 264] = cd[68]
            require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
            call 0x0278438423f433e277f65d14c0e002b8828702ba.0x48eedd6b with:
                 gas gas_remaining wei
                args cd[4], cd[36], cd[68]
            mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Redemption failed'
            mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp
            emit 0xc95bd7eb: cd[36], block.timestamp, msg.sender, cd[4]
            mem[(2 * ceil32(return_data.size)) + 200] = this.address
            require ext_code.size(0x5ff1de6091871adaae64e2ec4fed754628482868)
            staticcall 0x5ff1de6091871adaae64e2ec4fed754628482868.0x6011163e with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 196] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
            staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 196
            require return_data.size >= 32
            _342 = mem[(4 * ceil32(return_data.size)) + 196]
            require mem[(4 * ceil32(return_data.size)) + 196] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 196] + 227 < (4 * ceil32(return_data.size)) + return_data.size + 196
            _346 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 196] + 196]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 196] + 196] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 196] + 196]) + 197 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 196] + 196]) + 1 < 0:
                revert with 'NH{q', 65
            mem[(6 * ceil32(return_data.size)) + 196] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 196] + 196]
            require _342 + (32 * _346) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _342 + 228
            t = (6 * ceil32(return_data.size)) + 228
            while idx < _346:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            require ext_call.return_data[0] >= 32
            require uint32(cd[4]), mem[132 len 28] == bool(uint32(cd[4]), mem[132 len 28])
            if not uint32(cd[4]), mem[132 len 28]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            mem[ceil32(return_data.size) + 200] = cd[4]
            mem[ceil32(return_data.size) + 232] = cd[36]
            mem[ceil32(return_data.size) + 264] = cd[68]
            require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
            call 0x0278438423f433e277f65d14c0e002b8828702ba.0x48eedd6b with:
                 gas gas_remaining wei
                args cd[4], cd[36], cd[68]
            mem[ceil32(return_data.size) + 196] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Redemption failed'
            mem[(2 * ceil32(return_data.size)) + 228] = block.timestamp
            emit 0xc95bd7eb: cd[36], block.timestamp, msg.sender, cd[4]
            mem[(2 * ceil32(return_data.size)) + 200] = this.address
            require ext_code.size(0x5ff1de6091871adaae64e2ec4fed754628482868)
            staticcall 0x5ff1de6091871adaae64e2ec4fed754628482868.0x6011163e with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + 196] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
            staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 196
            require return_data.size >= 32
            _366 = mem[(4 * ceil32(return_data.size)) + 196]
            require mem[(4 * ceil32(return_data.size)) + 196] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 196] + 227 < (4 * ceil32(return_data.size)) + return_data.size + 196
            _370 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 196] + 196]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 196] + 196] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 196] + 196]) + 197 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 196] + 196]) + 1 < 0:
                revert with 'NH{q', 65
            mem[(6 * ceil32(return_data.size)) + 196] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 196] + 196]
            require _366 + (32 * _370) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + _366 + 228
            t = (6 * ceil32(return_data.size)) + 228
            while idx < _370:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    else:
        mem[ceil32(return_data.size) + 196] = return_data.size
        mem[ceil32(return_data.size) + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'TransferHelper::safeTransfer: transfer failed'
        if not return_data.size:
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 201] = cd[4]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 233] = cd[36]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = cd[68]
            require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
            call 0x0278438423f433e277f65d14c0e002b8828702ba.0x48eedd6b with:
                 gas gas_remaining wei
                args cd[4], cd[36], cd[68]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Redemption failed'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = block.timestamp
            emit 0xc95bd7eb: cd[36], block.timestamp, msg.sender, cd[4]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = this.address
            require ext_code.size(0x5ff1de6091871adaae64e2ec4fed754628482868)
            staticcall 0x5ff1de6091871adaae64e2ec4fed754628482868.0x6011163e with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
            staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
            require return_data.size >= 32
            _343 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 228 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 197
            _347 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 197]
            if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 197] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 197]) + 198 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 197]) + 1 < 0:
                revert with 'NH{q', 65
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 197]
            require _343 + (32 * _347) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _343 + 229
            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
            while idx < _347:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 228] == bool(mem[ceil32(return_data.size) + 228])
            if not mem[ceil32(return_data.size) + 228]:
                revert with 0, 'TransferHelper::safeTransfer: transfer failed'
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 201] = cd[4]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 233] = cd[36]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = cd[68]
            require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
            call 0x0278438423f433e277f65d14c0e002b8828702ba.0x48eedd6b with:
                 gas gas_remaining wei
                args cd[4], cd[36], cd[68]
            mem[ceil32(return_data.size) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'Redemption failed'
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = block.timestamp
            emit 0xc95bd7eb: cd[36], block.timestamp, msg.sender, cd[4]
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 201] = this.address
            require ext_code.size(0x5ff1de6091871adaae64e2ec4fed754628482868)
            staticcall 0x5ff1de6091871adaae64e2ec4fed754628482868.0x6011163e with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0x2acada4d00000000000000000000000000000000000000000000000000000000
            require ext_code.size(0x278438423f433e277f65d14c0e002b8828702ba)
            staticcall 0x278438423f433e277f65d14c0e002b8828702ba.getAllAssets() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197
            require return_data.size >= 32
            _367 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197]
            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] <= test266151307()
            require (4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 228 < (4 * ceil32(return_data.size)) + ceil32(return_data.size) + return_data.size + 197
            _371 = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 197]
            if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 197] > test266151307():
                revert with 'NH{q', 65
            if (6 * ceil32(return_data.size)) + ceil32(return_data.size) + floor32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 197]) + 198 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 197]) + 1 < 0:
                revert with 'NH{q', 65
            mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] + 197]
            require _367 + (32 * _371) + 32 <= return_data.size
            idx = 0
            s = (4 * ceil32(return_data.size)) + ceil32(return_data.size) + _367 + 229
            t = (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 229
            while idx < _371:
                require mem[s] == mem[s]
                mem[t] = mem[s]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
    if uint8(cd[(calldata.size - 97)]) and 64 > 65535 / uint8(cd[(calldata.size - 97)]):
        revert with 'NH{q', 17
    if 64 * uint8(cd[(calldata.size - 97)]) > 65503:
        revert with 'NH{q', 17
    if call.data[calldata.size - 33] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 'ECDSA: invalid signature 's' value'
    revert with 0, 'ECDSA: invalid signature 'v' value'
}



}
