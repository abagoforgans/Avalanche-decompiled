contract main {




// =====================  Runtime code  =====================


#
#  - leave(uint256 arg1)
#  - enter(uint256 arg1)
#  - compound()
#
const sub_085684a2(?) = 0x60ae616a2155ee3d9a68541ba4544862310933d4

const sub_cc0d00e2(?) = 0xd6a4f121ca35509af06a0be99093d08462f53052

const joeToken = 0x6e84a6216ea6dacc71ee8e6b0a5b7322eebc0fdd

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address oracleAddress; offset 8
address stakeTokenAddress;
address sub_f595416fAddress;
uint256 sub_62f7ef6b;
uint256 feeRate;
uint256 sub_b2df3dd5;
array of struct sub_447d10f1;
array of struct sub_89d6517f;
uint256 poolId;
address sub_a2ae5764Address;
address sub_972925f0Address;
uint128 stor1221; offset 160
address owner;
uint128 stor818A; offset 160
address stor818A;
address multiSignatureAddress;
array of uint256 stor101051993584849178915136821395265346177868384823507754984078593667947067386056;
uint128 storEE9B; offset 160
address storEE9B;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function poolId() {
    return poolId
}

function sub_447d10f1(?) {
    require calldata.size - 4 >= 96
    require arg3 < sub_447d10f1[arg1][arg2].field_0
    return address(sub_447d10f1[arg1][arg2][arg3].field_0)
}

function stakeToken() {
    return stakeTokenAddress
}

function sub_62f7ef6b(?) {
    return sub_62f7ef6b
}

function getMultiSignatureAddress() {
    return multiSignatureAddress
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

function sub_972925f0(?) {
    return sub_972925f0Address
}

function feeRate() {
    return feeRate
}

function sub_a2ae5764(?) {
    return sub_a2ae5764Address
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

function setOracleAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if address(storEE9B.field_0) != msg.sender:
            if address(stor818A.field_0) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            41,
                            0x6470726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f72696769,
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
                                0x6470726f78794f776e65723a2063616c6c6572206973206e6f74206f776e6572206f72206f72696769,
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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if address(storEE9B.field_0) == msg.sender:
        if not arg1:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            call arg1 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
    else:
        if address(stor818A.field_0) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x6c676c6f62616c204f7261636c652f6163636f756e742d6e6f742d617574686f72697a65,
                        mem[200 len 28]
        if not arg1:
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(arg1)
            staticcall arg1.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
            mem[324 len 0] = 0
            call arg1 with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
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
            emit 0xc9ed0cc3: arg1, arg2 << 248, arg3, address(arg4), arg5, msg.sender
        else:
            sub_89d6517f.length++
            uint8(sub_89d6517f[sub_89d6517f.length].field_0) = arg2
            uint8(sub_89d6517f[sub_89d6517f.length].field_8) = uint8(arg3)
            address(sub_89d6517f[sub_89d6517f.length].field_16) = arg4
            Mask(80, 0, sub_89d6517f[sub_89d6517f.length].field_176) = Mask(80, 168, arg3) >> 168
            storDF69[stor12.length] = arg5
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
        else:
            sub_89d6517f.length++
            uint8(sub_89d6517f[sub_89d6517f.length].field_0) = arg2
            uint8(sub_89d6517f[sub_89d6517f.length].field_8) = uint8(arg3)
            address(sub_89d6517f[sub_89d6517f.length].field_16) = arg4
            Mask(80, 0, sub_89d6517f[sub_89d6517f.length].field_176) = Mask(80, 168, arg3) >> 168
            storDF69[stor12.length] = arg5
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
}



}
