contract main {




// =====================  Runtime code  =====================


#
#  - compound()
#
const sub_085684a2(?) = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const sub_7fc245f4(?) = 0

const sub_fa2cc3c0(?) = 0x486af39519b4dc9a7fccd318217352830e8ad9b4

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor5; offset 168
address oracleAddress; offset 8
address stakeTokenAddress;
address sub_f595416fAddress;
uint256 sub_62f7ef6b;
uint256 feeRate;
uint256 sub_0bb52153;
uint256 sub_ea3460cc;
uint256 sub_b2df3dd5;
array of struct sub_447d10f1;
address meltAddress;
array of struct sub_89d6517f;
address underlyingAddress;
uint128 stor1221; offset 160
address owner;
uint128 stor818A; offset 160
address stor818A;
address multiSignatureAddress;
array of uint256 stor63806209331542711802848847270949280092855778197726125910674179583545433573379;
uint128 storEE9B; offset 160
address storEE9B;

function name() {
    return name[0 len name.length]
}

function sub_0bb52153(?) {
    return sub_0bb52153
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_447d10f1(?) {
    require calldata.size - 4 >= 96
    require arg3 < sub_447d10f1[arg1][arg2].field_0
    return address(sub_447d10f1[arg1][arg2][arg3].field_0)
}

function stakeToken() {
    return stakeTokenAddress
}

function melt() {
    return meltAddress
}

function sub_62f7ef6b(?) {
    return sub_62f7ef6b
}

function getMultiSignatureAddress() {
    return multiSignatureAddress
}

function underlying() {
    return underlyingAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_89d6517f(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_89d6517f.length
    return uint8(sub_89d6517f[arg1].field_0), 
           bool(uint8(sub_89d6517f[arg1].field_8)),
           address(sub_89d6517f[arg1].field_0),
           sub_89d6517f[arg1].field_256
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function feeRate() {
    return feeRate
}

function getOracleAddress() {
    return oracleAddress
}

function sub_b2df3dd5(?) {
    return sub_b2df3dd5
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ea3460cc(?) {
    return sub_ea3460cc
}

function sub_f595416f(?) {
    return sub_f595416fAddress
}

function _fallback() payable {
    revert
}

function txOrigin() {
    return address(storEE9B.field_0), address(stor818A.field_0)
}

function isOwner() {
    if owner != msg.sender:
        return (msg.sender == owner)
    return bool(ext_code.size(msg.sender))
}

function sub_b40643a9(?) {
    if address(storEE9B.field_0) == msg.sender:
        return True
    return (address(stor818A.field_0) == msg.sender)
}

function sub_93bc9dfe(?) {
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0x6570726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
                    mem[237 len 23]
    if not ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    73,
                    0x6570726f78794f776e65723a2063616c6c6572206d757374206265207468652070726f7879206f776e657220616e64206120636f6e747261637420616e64206e6f7420657870697265,
                    mem[237 len 23]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
    stor1221 = 0
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[202 len 26]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[201 len 27]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function sub_2de5f588(?) {
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPriceInfo(address arg1) with:
            gas gas_remaining wei
           args underlyingAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < 100:
        revert with 0, 'oracle price error'
    if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
        revert with 0, 'oracle price error'
    if not ext_call.return_data[32]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[32] / 10^18)
}

function sub_888eb377(?) {
    require calldata.size - 4 >= 64
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    sub_0bb52153 = arg1
    sub_ea3460cc = arg2
    emit 0x3500782c: arg1, arg2, msg.sender
}

function sub_b22a8ffb(?) {
    require calldata.size - 4 >= 32
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    if arg1 >= 10000:
        revert with 0, 'slipRate out of range!'
    sub_62f7ef6b = arg1
    emit 0x35ca6ad0: arg1, msg.sender
}

function setFeeRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    if arg1 >= 5000:
        revert with 0, 'feeRate out of range!'
    feeRate = arg1
    emit 0xcfb4ca72: arg1, msg.sender
}

function sub_d94969ad(?) {
    require calldata.size - 4 >= 32
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    if not arg1:
        revert with 0, 'superToken : input zero address'
    sub_f595416fAddress = arg1
    emit 0x120ec171: arg1, msg.sender
}

function sub_f6c1da1a(?) {
    require calldata.size - 4 >= 64
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    emit OriginTransferred(arg1, arg2);
    if address(storEE9B.field_0) == arg1:
        address(storEE9B.field_0) = arg2
        Mask(96, 0, storEE9B.field_160) = 0
    else:
        if address(stor818A.field_0) != arg1:
            revert with 0, 
                        32,
                        50,
                        0x6f4f726967696e5472616e73666572726564203a206f6c64206f726967696e20697320696c6c6567616c2061646472657373,
                        mem[calldata.size + 318 len 14]
        address(stor818A.field_0) = arg2
        Mask(96, 0, stor818A.field_160) = 0
}

function sub_3bb85711(?) {
    require calldata.size - 4 >= 32
    if not sub_447d10f1[address(arg1)][stor16].field_0:
        if sub_447d10f1[address(arg1)][stor16].field_0 <= 1:
            mem[(32 * sub_447d10f1[address(arg1)][stor16].field_0) + 288 len 0] = None
            return Array(len=2, data=mem[(32 * sub_447d10f1[address(arg1)][stor16].field_0) + 288 len 64])
        mem[(32 * sub_447d10f1[address(arg1)][stor16].field_0) + 128] = 32
        mem[(32 * sub_447d10f1[address(arg1)][stor16].field_0) + 160] = sub_447d10f1[address(arg1)][stor16].field_0
        mem[(32 * sub_447d10f1[address(arg1)][stor16].field_0) + 192 len floor32(sub_447d10f1[address(arg1)][stor16].field_0)] = mem[128 len floor32(sub_447d10f1[address(arg1)][stor16].field_0)]
        return memory
          from (32 * sub_447d10f1[address(arg1)][stor16].field_0) + 128
           len (96 * sub_447d10f1[address(arg1)][stor16].field_0) + 64
    mem[128] = address(sub_447d10f1[address(arg1)][stor16].field_0)
    idx = 128
    s = 0
    while (32 * sub_447d10f1[address(arg1)][stor16].field_0) + 96 > idx:
        mem[idx + 32] = address(sub_447d10f1[address(arg1)][stor16][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if sub_447d10f1[address(arg1)][stor16].field_0 > 1:
        mem[(32 * sub_447d10f1[address(arg1)][stor16].field_0) + 192 len floor32(sub_447d10f1[address(arg1)][stor16].field_0)] = mem[128 len floor32(sub_447d10f1[address(arg1)][stor16].field_0)]
        return Array(len=sub_447d10f1[address(arg1)][stor16].field_0, data=mem[128 len floor32(sub_447d10f1[address(arg1)][stor16].field_0)], mem[(32 * sub_447d10f1[address(arg1)][stor16].field_0) + floor32(sub_447d10f1[address(arg1)][stor16].field_0) + 192 len (32 * sub_447d10f1[address(arg1)][stor16].field_0) - floor32(sub_447d10f1[address(arg1)][stor16].field_0)]), 
    mem[(32 * sub_447d10f1[address(arg1)][stor16].field_0) + 288 len 0] = None
    return Array(len=2, data=mem[(32 * sub_447d10f1[address(arg1)][stor16].field_0) + 288 len 64])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[202 len 26]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[204 len 24]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6545524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_1d4c3b05(?) {
    require calldata.size - 4 >= 64
    if not sub_447d10f1[address(arg1)][address(arg2)].field_0:
        if sub_447d10f1[address(arg1)][address(arg2)].field_0 <= 1:
            mem[(32 * sub_447d10f1[address(arg1)][address(arg2)].field_0) + 288 len 0] = None
            return Array(len=2, data=mem[(32 * sub_447d10f1[address(arg1)][address(arg2)].field_0) + 288 len 64])
        mem[(32 * sub_447d10f1[address(arg1)][address(arg2)].field_0) + 128] = 32
        mem[(32 * sub_447d10f1[address(arg1)][address(arg2)].field_0) + 160] = sub_447d10f1[address(arg1)][address(arg2)].field_0
        mem[(32 * sub_447d10f1[address(arg1)][address(arg2)].field_0) + 192 len floor32(sub_447d10f1[address(arg1)][address(arg2)].field_0)] = mem[128 len floor32(sub_447d10f1[address(arg1)][address(arg2)].field_0)]
        return memory
          from (32 * sub_447d10f1[address(arg1)][address(arg2)].field_0) + 128
           len (96 * sub_447d10f1[address(arg1)][address(arg2)].field_0) + 64
    mem[128] = address(sub_447d10f1[address(arg1)][address(arg2)].field_0)
    idx = 128
    s = 0
    while (32 * sub_447d10f1[address(arg1)][address(arg2)].field_0) + 96 > idx:
        mem[idx + 32] = address(sub_447d10f1[address(arg1)][address(arg2)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    if sub_447d10f1[address(arg1)][address(arg2)].field_0 > 1:
        mem[(32 * sub_447d10f1[address(arg1)][address(arg2)].field_0) + 192 len floor32(sub_447d10f1[address(arg1)][address(arg2)].field_0)] = mem[128 len floor32(sub_447d10f1[address(arg1)][address(arg2)].field_0)]
        return Array(len=sub_447d10f1[address(arg1)][address(arg2)].field_0, data=mem[128 len floor32(sub_447d10f1[address(arg1)][address(arg2)].field_0)], mem[(32 * sub_447d10f1[address(arg1)][address(arg2)].field_0) + floor32(sub_447d10f1[address(arg1)][address(arg2)].field_0) + 192 len (32 * sub_447d10f1[address(arg1)][address(arg2)].field_0) - floor32(sub_447d10f1[address(arg1)][address(arg2)].field_0)]), 
    mem[(32 * sub_447d10f1[address(arg1)][address(arg2)].field_0) + 288 len 0] = None
    return Array(len=2, data=mem[(32 * sub_447d10f1[address(arg1)][address(arg2)].field_0) + 288 len 64])
}

function sub_afe5e5b6(?) {
    require calldata.size - 4 >= 96
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if address(storEE9B.field_0) != msg.sender:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
    require ext_code.size(multiSignatureAddress)
    staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
        revert with 0, 
                    32,
                    46,
                    0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                    mem[calldata.size + 314 len 18]
    stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    sub_447d10f1[address(cd[4])][address(cd[36])].field_0 = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while sub_447d10f1[address(cd[4])][address(cd[36])].field_0 > idx:
            sub_447d10f1[address(cd[4])][address(cd[36])][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            address(sub_447d10f1[address(cd[4])][address(cd[36])][s].field_0) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while sub_447d10f1[address(cd[4])][address(cd[36])].field_0 > idx:
            sub_447d10f1[address(cd[4])][address(cd[36])][idx].field_0 = 0
            idx = idx + 1
            continue 
    emit 0xa851f777: Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len floor32(('cd', 68).length)]), msg.sender, address(cd[4]), address(cd[36])
}

function sub_15ffeea9(?) {
    require calldata.size - 4 >= 32
    if not sub_0bb52153:
        return 0
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPriceInfo(address arg1) with:
            gas gas_remaining wei
           args underlyingAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < 100:
        revert with 0, 'oracle price error'
    if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
        revert with 0, 'oracle price error'
    if not ext_call.return_data[32]:
        if arg1:
            if 0 / arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            else:
                return 0
        else:
            return 0
    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg1:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / arg1 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18:
        return 0
    if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 != sub_0bb52153:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18)
}

function setOracleAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if address(storEE9B.field_0) != msg.sender:
            if address(stor818A.field_0) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x6c70726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f72696769,
                            mem[205 len 23]
        require ext_code.size(multiSignatureAddress)
        staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
            revert with 0, 
                        32,
                        46,
                        0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                        mem[calldata.size + 314 len 18]
        stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    else:
        if not ext_code.size(msg.sender):
            if address(storEE9B.field_0) != msg.sender:
                if address(stor818A.field_0) != msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                41,
                                0x6c70726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f72696769,
                                mem[205 len 23]
            require ext_code.size(multiSignatureAddress)
            staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
                    gas gas_remaining wei
                   args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
                revert with 0, 
                            32,
                            46,
                            0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                            mem[calldata.size + 314 len 18]
            stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
    oracleAddress = arg1
}

function sub_693ca371(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalSupply:
        if not sub_ea3460cc:
            return 0
        require ext_code.size(stakeTokenAddress)
        staticcall stakeTokenAddress.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.getPriceInfo(address arg1) with:
                gas gas_remaining wei
               args underlyingAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] < 100:
            revert with 0, 'oracle price error'
        if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
            revert with 0, 'oracle price error'
        if not ext_call.return_data[32]:
            if arg1:
                if 0 / arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                else:
                    return 0
            else:
                return 0
        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg1:
            return 0
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / arg1 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18:
            return 0
        if sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 != sub_ea3460cc:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18)
    if not arg1:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not sub_ea3460cc:
            return 0
        require ext_code.size(stakeTokenAddress)
        staticcall stakeTokenAddress.exchangeRateStored() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.getPriceInfo(address arg1) with:
                gas gas_remaining wei
               args underlyingAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] < 100:
            revert with 0, 'oracle price error'
        if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
            revert with 0, 'oracle price error'
        if not ext_call.return_data[32]:
            if 0 / totalSupply:
                if 0 / 0 / totalSupply:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                else:
                    return 0
            else:
                return 0
        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 0 / totalSupply:
            return 0
        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 0 / totalSupply / 0 / totalSupply != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 0 / totalSupply / 10^18:
            return 0
        if sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 0 / totalSupply / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 0 / totalSupply / 10^18 != sub_ea3460cc:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 0 / totalSupply / 10^18 / 10^18)
    if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not sub_ea3460cc:
        return 0
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPriceInfo(address arg1) with:
            gas gas_remaining wei
           args underlyingAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < 100:
        revert with 0, 'oracle price error'
    if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
        revert with 0, 'oracle price error'
    if not ext_call.return_data[32]:
        if ext_call.return_data[0] * arg1 / totalSupply:
            if 0 / ext_call.return_data[0] * arg1 / totalSupply:
                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            else:
                return 0
        else:
            return 0
    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0] * arg1 / totalSupply:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] * arg1 / totalSupply / ext_call.return_data[0] * arg1 / totalSupply != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] * arg1 / totalSupply / 10^18:
        return 0
    if sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] * arg1 / totalSupply / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] * arg1 / totalSupply / 10^18 != sub_ea3460cc:
        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] * arg1 / totalSupply / 10^18 / 10^18)
}

function sub_97c86edf(?) {
    require calldata.size - 4 >= 160
    if address(storEE9B.field_0) == msg.sender:
        require ext_code.size(multiSignatureAddress)
        staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
            revert with 0, 
                        32,
                        46,
                        0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                        mem[calldata.size + 314 len 18]
        stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
        if arg1 < sub_89d6517f.length:
            uint8(sub_89d6517f[arg1].field_0) = arg2
            uint8(sub_89d6517f[arg1].field_8) = uint8(arg3)
            address(sub_89d6517f[arg1].field_16) = arg4
            Mask(80, 0, sub_89d6517f[arg1].field_176) = Mask(80, 168, arg3) >> 168
            sub_89d6517f[arg1].field_256 = arg5
        else:
            sub_89d6517f.length++
            uint8(sub_89d6517f[sub_89d6517f.length].field_0) = arg2
            uint8(sub_89d6517f[sub_89d6517f.length].field_8) = uint8(arg3)
            address(sub_89d6517f[sub_89d6517f.length].field_16) = arg4
            Mask(80, 0, sub_89d6517f[sub_89d6517f.length].field_176) = Mask(80, 168, arg3) >> 168
            stor8D11[stor15.length] = arg5
            if arg4:
                require ext_code.size(arg4)
                staticcall arg4.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[calldata.size + 450 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[calldata.size + 598 len 26]
                if not ext_code.size(arg4):
                    revert with 0, 'Address: call to non-contract'
                mem[calldata.size + 492 len 64] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 822686676, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                call arg4.0x310933d4 with:
                     gas gas_remaining wei
                    args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[calldata.size + 556 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if calldata.size + 72:
                            revert with msg.sender, this.address, msg.value, call.data[0 len calldata.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if calldata.size + 72:
                        require calldata.size + 72 >= 32
                        if not msg.sender, Mask(96, 64, this.address) >> 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[calldata.size + 602 len 22]
                else:
                    mem[calldata.size + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[calldata.size + 524]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[calldata.size + ceil32(return_data.size) + 603 len 22]
        emit 0xc9ed0cc3: arg1, arg2 << 248, arg3, address(arg4), arg5, msg.sender
    else:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        40,
                        0x2170726f78794f776e65723a2063616c6c6572206973206e6f7420746865207478206f726967696e,
                        mem[204 len 24]
        require ext_code.size(multiSignatureAddress)
        staticcall multiSignatureAddress.getValidSignature(bytes32 arg1, uint256 arg2) with:
                gas gas_remaining wei
               args sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size]), stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])]:
            revert with 0, 
                        32,
                        46,
                        0x646d756c74695369676e6174757265436c69656e74203a2054686973207478206973206e6f7420617072726f7665,
                        mem[calldata.size + 314 len 18]
        stor[sha3(msg.sender, this.address, msg.value, call.data[0 len calldata.size])] = ext_call.return_data[0]
        if arg1 < sub_89d6517f.length:
            uint8(sub_89d6517f[arg1].field_0) = arg2
            uint8(sub_89d6517f[arg1].field_8) = uint8(arg3)
            address(sub_89d6517f[arg1].field_16) = arg4
            Mask(80, 0, sub_89d6517f[arg1].field_176) = Mask(80, 168, arg3) >> 168
            sub_89d6517f[arg1].field_256 = arg5
            emit 0xc9ed0cc3: arg1, arg2 << 248, arg3, address(arg4), arg5, msg.sender
        else:
            sub_89d6517f.length++
            uint8(sub_89d6517f[sub_89d6517f.length].field_0) = arg2
            uint8(sub_89d6517f[sub_89d6517f.length].field_8) = uint8(arg3)
            address(sub_89d6517f[sub_89d6517f.length].field_16) = arg4
            Mask(80, 0, sub_89d6517f[sub_89d6517f.length].field_176) = Mask(80, 168, arg3) >> 168
            stor8D11[stor15.length] = arg5
            if not arg4:
                emit 0xc9ed0cc3: arg1, arg2 << 248, arg3, address(arg4), arg5, msg.sender
            else:
                require ext_code.size(arg4)
                staticcall arg4.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, 0x60ae616a2155ee3d9a68541ba4544862310933d4
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[calldata.size + 450 len 10]
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[calldata.size + 598 len 26]
                if not ext_code.size(arg4):
                    revert with 0, 'Address: call to non-contract'
                mem[calldata.size + 492 len 64] = approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                mem[calldata.size + 556 len 0] = 0
                call arg4.0x310933d4 with:
                     gas gas_remaining wei
                    args Mask(480, -256, approve(address arg1, uint256 arg2), 0x60ae616a2155ee3d9a68541b, 0, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff) << 256, mem[calldata.size + 556 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if calldata.size + 72:
                            revert with msg.sender, this.address, msg.value, call.data[0 len calldata.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if calldata.size + 72:
                        require calldata.size + 72 >= 32
                        if not msg.sender, Mask(96, 64, this.address) >> 64:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[calldata.size + 602 len 22]
                    emit 0xc9ed0cc3: arg1, arg2, 0, arg3, address(arg4), arg5, msg.sender
                else:
                    mem[calldata.size + 524 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[calldata.size + 524]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[calldata.size + ceil32(return_data.size) + 603 len 22]
                    emit 0xc9ed0cc3: arg1, arg2 << 248, arg3, address(arg4), arg5, msg.sender
}

function leave(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor5
    stor5 = 1
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if balanceOf[address(msg.sender)] < arg1:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[262 len 30]
        balanceOf[address(msg.sender)] -= arg1
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(stakeTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
        call stakeTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0 / totalSupply) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        if sub_ea3460cc:
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceInfo(address arg1) with:
                    gas gas_remaining wei
                   args underlyingAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[32] < 100:
                revert with 0, 'oracle price error'
            if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                revert with 0, 'oracle price error'
            if not ext_call.return_data[32]:
                if 0 / totalSupply:
                    if 0 / 0 / totalSupply:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
            else:
                if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                if 0 / totalSupply:
                    if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 0 / totalSupply / 0 / totalSupply != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 0 / totalSupply / 10^18:
                        if sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 0 / totalSupply / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 0 / totalSupply / 10^18 != sub_ea3460cc:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 0 / totalSupply / 10^18 / 10^18:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 627 len 26]
                            if not ext_code.size(meltAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 96] = unknown_0x23b872dd(?????), msg.sender, 0, Mask(224, 32, sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 0 / totalSupply / 10^18 / 10^18) >> 32
                            mem[ceil32(return_data.size) + 645 len 4] = 0
                            call meltAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * 0 / totalSupply / 10^18 / 10^18) << 480, mem[ceil32(return_data.size) + 617 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[261 len 31]
        if balanceOf[address(msg.sender)] < arg1:
            revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[262 len 30]
        balanceOf[address(msg.sender)] -= arg1
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[430 len 26]
        if not ext_code.size(stakeTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[324 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] * arg1 / totalSupply) >> 32
        call stakeTokenAddress with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] * arg1 / totalSupply) << 224, mem[388 len 4]
        if not return_data.size:
            require not ext_call.success
            revert with 'SafeMath: division by zero'
        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[356]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 435 len 22]
        if sub_ea3460cc:
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.exchangeRateStored() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceInfo(address arg1) with:
                    gas gas_remaining wei
                   args underlyingAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[32] < 100:
                revert with 0, 'oracle price error'
            if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                revert with 0, 'oracle price error'
            if not ext_call.return_data[32]:
                if ext_call.return_data[0] * arg1 / totalSupply:
                    if 0 / ext_call.return_data[0] * arg1 / totalSupply:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
            else:
                if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                if ext_call.return_data[0] * arg1 / totalSupply:
                    if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] * arg1 / totalSupply / ext_call.return_data[0] * arg1 / totalSupply != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] * arg1 / totalSupply / 10^18:
                        if sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] * arg1 / totalSupply / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] * arg1 / totalSupply / 10^18 != sub_ea3460cc:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 426 len 31]
                        if sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] * arg1 / totalSupply / 10^18 / 10^18:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 627 len 26]
                            if not ext_code.size(meltAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 521 len 96] = unknown_0x23b872dd(?????), msg.sender, 0, Mask(224, 32, sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] * arg1 / totalSupply / 10^18 / 10^18) >> 32
                            mem[ceil32(return_data.size) + 645 len 4] = 0
                            call meltAddress with:
                                 gas gas_remaining wei
                                args Mask(224, 32, sub_ea3460cc * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * ext_call.return_data[0] * arg1 / totalSupply / 10^18 / 10^18) << 480, mem[ceil32(return_data.size) + 617 len 4]
                            if not return_data.size:
                                require not ext_call.success
                                revert with 'SafeMath: division by zero'
                            mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 622 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 553]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 632 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    stor5 = 0
}

function enter(uint256 arg1) {
    require calldata.size - 4 >= 32
    require not stor5
    stor5 = 1
    require ext_code.size(stakeTokenAddress)
    staticcall stakeTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        totalSupply += arg1
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if not ext_code.size(stakeTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        call stakeTokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
            if sub_0bb52153:
                require ext_code.size(stakeTokenAddress)
                staticcall stakeTokenAddress.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getPriceInfo(address arg1) with:
                        gas gas_remaining wei
                       args underlyingAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[32] < 100:
                    revert with 0, 'oracle price error'
                if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                    revert with 0, 'oracle price error'
                if not ext_call.return_data[32]:
                    if arg1:
                        if 0 / arg1:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                    if arg1:
                        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / arg1 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18:
                            if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 != sub_0bb52153:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                if not ext_code.size(meltAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, 0, Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) >> 32
                                mem[612 len 4] = 0
                                call meltAddress with:
                                     gas gas_remaining wei
                                    args Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) << 480, mem[584 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[598 len 14],
                                                    0,
                                                    mem[616 len 4]
                                else:
                                    mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[520]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 22]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                if sub_0bb52153:
                    require ext_code.size(stakeTokenAddress)
                    staticcall stakeTokenAddress.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceInfo(address arg1) with:
                            gas gas_remaining wei
                           args underlyingAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[32] < 100:
                        revert with 0, 'oracle price error'
                    if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                        revert with 0, 'oracle price error'
                    if not ext_call.return_data[32]:
                        if arg1:
                            if 0 / arg1:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if arg1:
                            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / arg1 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18:
                                if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 != sub_0bb52153:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if not ext_code.size(meltAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, 0, Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    mem[ceil32(return_data.size) + 585 len 0] = 0
                                    call meltAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len 22]
            else:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
                if sub_0bb52153:
                    require ext_code.size(stakeTokenAddress)
                    staticcall stakeTokenAddress.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceInfo(address arg1) with:
                            gas gas_remaining wei
                           args underlyingAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[32] < 100:
                        revert with 0, 'oracle price error'
                    if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                        revert with 0, 'oracle price error'
                    if not ext_call.return_data[32]:
                        if arg1:
                            if 0 / arg1:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if arg1:
                            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / arg1 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18:
                                if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 != sub_0bb52153:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                    mem[ceil32(return_data.size) + 595 len 26]
                                    if not ext_code.size(meltAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, 0, Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) >> 32
                                    mem[ceil32(return_data.size) + 613 len 4] = 0
                                    call meltAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 599 len 14],
                                                        0,
                                                        mem[ceil32(return_data.size) + 617 len 4]
                                    else:
                                        mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 
                                                        'SafeERC20: low-level call failed',
                                                        mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[ceil32(return_data.size) + 521]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
    else:
        if not ext_call.return_data[0]:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            totalSupply += arg1
            balanceOf[address(msg.sender)] += arg1
            emit Transfer(arg1, 0, msg.sender);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
            if not ext_code.size(stakeTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[416 len 4] = 0
            call stakeTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[388 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[402 len 14],
                                0,
                                mem[420 len 4]
                if sub_0bb52153:
                    require ext_code.size(stakeTokenAddress)
                    staticcall stakeTokenAddress.exchangeRateStored() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceInfo(address arg1) with:
                            gas gas_remaining wei
                           args underlyingAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[32] < 100:
                        revert with 0, 'oracle price error'
                    if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                        revert with 0, 'oracle price error'
                    if not ext_call.return_data[32]:
                        if arg1:
                            if 0 / arg1:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                        if arg1:
                            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / arg1 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                            if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18:
                                if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 != sub_0bb52153:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                                if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18:
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                                    if not ext_code.size(meltAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[488 len 96] = unknown_0x23b872dd(?????), msg.sender, 0, Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) >> 32
                                    mem[612 len 4] = 0
                                    mem[584 len 0] = 0
                                    call meltAddress with:
                                         gas gas_remaining wei
                                        args Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) << 480, mem[584 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[598 len 14],
                                                        0,
                                                        mem[616 len 4]
                                    else:
                                        mem[520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[520]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 22]
            else:
                mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    if sub_0bb52153:
                        require ext_code.size(stakeTokenAddress)
                        staticcall stakeTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.getPriceInfo(address arg1) with:
                                gas gas_remaining wei
                               args underlyingAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] < 100:
                            revert with 0, 'oracle price error'
                        if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                            revert with 0, 'oracle price error'
                        if not ext_call.return_data[32]:
                            if arg1:
                                if 0 / arg1:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if arg1:
                                if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / arg1 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18:
                                    if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 != sub_0bb52153:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 394 len 31]
                                    if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if not ext_code.size(meltAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, 0, Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        call meltAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 
                                                            'SafeERC20: low-level call failed',
                                                            mem[(2 * ceil32(return_data.size)) + 590 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                else:
                    require return_data.size >= 32
                    if not mem[324]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 403 len 22]
                    if sub_0bb52153:
                        require ext_code.size(stakeTokenAddress)
                        staticcall stakeTokenAddress.exchangeRateStored() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(oracleAddress)
                        staticcall oracleAddress.getPriceInfo(address arg1) with:
                                gas gas_remaining wei
                               args underlyingAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 64
                        if ext_call.return_data[32] < 100:
                            revert with 0, 'oracle price error'
                        if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                            revert with 0, 'oracle price error'
                        if not ext_call.return_data[32]:
                            if arg1:
                                if 0 / arg1:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if arg1:
                                if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / arg1 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[ceil32(return_data.size) + 394 len 31]
                                if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18:
                                    if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 != sub_0bb52153:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[ceil32(return_data.size) + 394 len 31]
                                    if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18:
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                        mem[ceil32(return_data.size) + 595 len 26]
                                        if not ext_code.size(meltAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(return_data.size) + 489 len 96] = unknown_0x23b872dd(?????), msg.sender, 0, Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) >> 32
                                        mem[ceil32(return_data.size) + 613 len 4] = 0
                                        mem[ceil32(return_data.size) + 585 len 0] = 0
                                        call meltAddress with:
                                             gas gas_remaining wei
                                            args Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) << 480, mem[ceil32(return_data.size) + 585 len 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
                                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 599 len 14],
                                                            0,
                                                            mem[ceil32(return_data.size) + 617 len 4]
                                        else:
                                            mem[ceil32(return_data.size) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                if not mem[ceil32(return_data.size) + 521]:
                                                    revert with 0, 
                                                                32,
                                                                42,
                                                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                                mem[(2 * ceil32(return_data.size)) + 600 len 22]
        else:
            if not arg1:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                totalSupply += 0 / ext_call.return_data[0]
                balanceOf[address(msg.sender)] += 0 / ext_call.return_data[0]
                emit Transfer((0 / ext_call.return_data[0]), 0, msg.sender);
            else:
                if totalSupply * arg1 / arg1 != totalSupply:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                totalSupply += totalSupply * arg1 / ext_call.return_data[0]
                balanceOf[address(msg.sender)] += totalSupply * arg1 / ext_call.return_data[0]
                emit Transfer((totalSupply * arg1 / ext_call.return_data[0]), 0, msg.sender);
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[462 len 26]
            if not ext_code.size(stakeTokenAddress):
                revert with 0, 'Address: call to non-contract'
            mem[356 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[480 len 4] = 0
            mem[452 len 0] = 0
            call stakeTokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg1) << 480, mem[452 len 4]
            if not return_data.size:
                require not ext_call.success
                revert with 'SafeMath: division by zero'
            mem[388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[388]:
                    revert with 0, 
                                32,
                                42,
                                0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 467 len 22]
            if sub_0bb52153:
                require ext_code.size(stakeTokenAddress)
                staticcall stakeTokenAddress.exchangeRateStored() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getPriceInfo(address arg1) with:
                        gas gas_remaining wei
                       args underlyingAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[32] < 100:
                    revert with 0, 'oracle price error'
                if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                    revert with 0, 'oracle price error'
                if not ext_call.return_data[32]:
                    if arg1:
                        if 0 / arg1:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 458 len 31]
                else:
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 458 len 31]
                    if arg1:
                        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / arg1 != ext_call.return_data[0] * ext_call.return_data[32] / 10^18:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 458 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18:
                            if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 != sub_0bb52153:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 458 len 31]
                            if sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 659 len 26]
                                if not ext_code.size(meltAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 553 len 96] = 0, msg.sender, 0, Mask(224, 32, sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18) >> 32
                                mem[ceil32(return_data.size) + 677 len 4] = 0
                                call meltAddress with:
                                     gas gas_remaining wei
                                    args sub_0bb52153 * ext_call.return_data[0] * ext_call.return_data[32] / 10^18 * arg1 / 10^18 / 10^18, mem[ceil32(return_data.size) + 489 len 60], mem[ceil32(return_data.size) + 649 len 4]
                                if not return_data.size:
                                    require not ext_call.success
                                    revert with 'SafeMath: division by zero'
                                mem[ceil32(return_data.size) + 585 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 585]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 664 len 22]
    stor5 = 0
}



}
