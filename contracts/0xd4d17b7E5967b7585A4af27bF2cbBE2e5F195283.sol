contract main {




// =====================  Runtime code  =====================


const sub_7fc245f4(?) = 1


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor5; offset 168
address oracleAddress; offset 8
address stakeTokenAddress;
uint256 sub_0bb52153;
uint256 sub_ea3460cc;
address meltAddress;
uint128 stor1221; offset 160
address owner;
uint128 stor818A; offset 160
address stor818A;
address multiSignatureAddress;
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

function stakeToken() {
    return stakeTokenAddress
}

function melt() {
    return meltAddress
}

function getMultiSignatureAddress() {
    return multiSignatureAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getOracleAddress() {
    return oracleAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_ea3460cc(?) {
    return sub_ea3460cc
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
    return (msg.sender == address(stor818A.field_0))
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

function sub_2de5f588(?) {
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPriceInfo(address arg1) with:
            gas gas_remaining wei
           args stakeTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < 100:
        revert with 0, 'oracle price error'
    if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
        revert with 0, 'oracle price error'
    return ext_call.return_data[32]
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
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
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

function sub_15ffeea9(?) {
    require calldata.size - 4 >= 32
    if not sub_0bb52153:
        return 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPriceInfo(address arg1) with:
            gas gas_remaining wei
           args stakeTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < 100:
        revert with 0, 'oracle price error'
    if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
        revert with 0, 'oracle price error'
    if not arg1:
        return 0
    if ext_call.return_data[32] * arg1 / arg1 != ext_call.return_data[32]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[32] * arg1 / 10^18:
        return 0
    if sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / ext_call.return_data[32] * arg1 / 10^18 != sub_0bb52153:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18)
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

function withdraw(address arg1) {
    require calldata.size - 4 >= 32
    if address(storEE9B.field_0) != msg.sender:
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
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.getPriceInfo(address arg1) with:
                gas gas_remaining wei
               args stakeTokenAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] < 100:
            revert with 0, 'oracle price error'
        if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
            revert with 0, 'oracle price error'
        if not arg1:
            return 0
        if ext_call.return_data[32] * arg1 / arg1 != ext_call.return_data[32]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[32] * arg1 / 10^18:
            return 0
        if sub_ea3460cc * ext_call.return_data[32] * arg1 / 10^18 / ext_call.return_data[32] * arg1 / 10^18 != sub_ea3460cc:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (sub_ea3460cc * ext_call.return_data[32] * arg1 / 10^18 / 10^18)
    if not arg1:
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not sub_ea3460cc:
            return 0
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.getPriceInfo(address arg1) with:
                gas gas_remaining wei
               args stakeTokenAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[32] < 100:
            revert with 0, 'oracle price error'
        if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
            revert with 0, 'oracle price error'
        if not 0 / totalSupply:
            return 0
        if ext_call.return_data[32] * 0 / totalSupply / 0 / totalSupply != ext_call.return_data[32]:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not ext_call.return_data[32] * 0 / totalSupply / 10^18:
            return 0
        if sub_ea3460cc * ext_call.return_data[32] * 0 / totalSupply / 10^18 / ext_call.return_data[32] * 0 / totalSupply / 10^18 != sub_ea3460cc:
            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        return (sub_ea3460cc * ext_call.return_data[32] * 0 / totalSupply / 10^18 / 10^18)
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
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPriceInfo(address arg1) with:
            gas gas_remaining wei
           args stakeTokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[32] < 100:
        revert with 0, 'oracle price error'
    if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
        revert with 0, 'oracle price error'
    if not ext_call.return_data[0] * arg1 / totalSupply:
        return 0
    if ext_call.return_data[32] * ext_call.return_data[0] * arg1 / totalSupply / ext_call.return_data[0] * arg1 / totalSupply != ext_call.return_data[32]:
        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not ext_call.return_data[32] * ext_call.return_data[0] * arg1 / totalSupply / 10^18:
        return 0
    if sub_ea3460cc * ext_call.return_data[32] * ext_call.return_data[0] * arg1 / totalSupply / 10^18 / ext_call.return_data[32] * ext_call.return_data[0] * arg1 / totalSupply / 10^18 != sub_ea3460cc:
        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (sub_ea3460cc * ext_call.return_data[32] * ext_call.return_data[0] * arg1 / totalSupply / 10^18 / 10^18)
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
        mem[388 len 0] = 0
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
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceInfo(address arg1) with:
                    gas gas_remaining wei
                   args stakeTokenAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[32] < 100:
                revert with 0, 'oracle price error'
            if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                revert with 0, 'oracle price error'
            if 0 / totalSupply:
                if ext_call.return_data[32] * 0 / totalSupply / 0 / totalSupply != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                if ext_call.return_data[32] * 0 / totalSupply / 10^18:
                    if sub_ea3460cc * ext_call.return_data[32] * 0 / totalSupply / 10^18 / ext_call.return_data[32] * 0 / totalSupply / 10^18 != sub_ea3460cc:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if sub_ea3460cc * ext_call.return_data[32] * 0 / totalSupply / 10^18 / 10^18:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(meltAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 96] = 0, msg.sender, 1, Mask(224, 32, sub_ea3460cc * ext_call.return_data[32] * 0 / totalSupply / 10^18 / 10^18) >> 32
                        mem[ceil32(return_data.size) + 645 len 4] = 0
                        call meltAddress.0x1 with:
                             gas gas_remaining wei
                            args sub_ea3460cc * ext_call.return_data[32] * 0 / totalSupply / 10^18 / 10^18, mem[ceil32(return_data.size) + 457 len 60], mem[ceil32(return_data.size) + 617 len 4]
                        if not return_data.size:
                            require not ext_call.success
                            revert with 'SafeMath: division by zero'
                        mem[ceil32(return_data.size) + 553 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(return_data.size) + 553]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[(2 * ceil32(return_data.size)) + 632 len 22]
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
        mem[388 len 0] = 0
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
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceInfo(address arg1) with:
                    gas gas_remaining wei
                   args stakeTokenAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[32] < 100:
                revert with 0, 'oracle price error'
            if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                revert with 0, 'oracle price error'
            if ext_call.return_data[0] * arg1 / totalSupply:
                if ext_call.return_data[32] * ext_call.return_data[0] * arg1 / totalSupply / ext_call.return_data[0] * arg1 / totalSupply != ext_call.return_data[32]:
                    revert with 0, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 426 len 31]
                if ext_call.return_data[32] * ext_call.return_data[0] * arg1 / totalSupply / 10^18:
                    if sub_ea3460cc * ext_call.return_data[32] * ext_call.return_data[0] * arg1 / totalSupply / 10^18 / ext_call.return_data[32] * ext_call.return_data[0] * arg1 / totalSupply / 10^18 != sub_ea3460cc:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 426 len 31]
                    if sub_ea3460cc * ext_call.return_data[32] * ext_call.return_data[0] * arg1 / totalSupply / 10^18 / 10^18:
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 627 len 26]
                        if not ext_code.size(meltAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 521 len 96] = 0, msg.sender, 1, Mask(224, 32, sub_ea3460cc * ext_call.return_data[32] * ext_call.return_data[0] * arg1 / totalSupply / 10^18 / 10^18) >> 32
                        mem[ceil32(return_data.size) + 645 len 4] = 0
                        call meltAddress.0x1 with:
                             gas gas_remaining wei
                            args sub_ea3460cc * ext_call.return_data[32] * ext_call.return_data[0] * arg1 / totalSupply / 10^18 / 10^18, mem[ceil32(return_data.size) + 457 len 60], mem[ceil32(return_data.size) + 617 len 4]
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
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(stakeTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
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
        require ext_code.size(stakeTokenAddress)
        staticcall stakeTokenAddress.ratio() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg1:
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            emit Transfer(0, 0, msg.sender);
        else:
            if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            totalSupply += ext_call.return_data[0] * arg1 / 10^18
            balanceOf[address(msg.sender)] += ext_call.return_data[0] * arg1 / 10^18
            emit Transfer((ext_call.return_data[0] * arg1 / 10^18), 0, msg.sender);
        if sub_0bb52153:
            require ext_code.size(oracleAddress)
            staticcall oracleAddress.getPriceInfo(address arg1) with:
                    gas gas_remaining wei
                   args stakeTokenAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            if ext_call.return_data[32] < 100:
                revert with 0, 'oracle price error'
            if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                revert with 0, 'oracle price error'
            if arg1:
                if ext_call.return_data[32] * arg1 / arg1 != ext_call.return_data[32]:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                if ext_call.return_data[32] * arg1 / 10^18:
                    if sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / ext_call.return_data[32] * arg1 / 10^18 != sub_0bb52153:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[393 len 23], 0, mem[420 len 4]
                    if sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18:
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[594 len 26]
                        if not ext_code.size(meltAddress):
                            revert with 0, 'Address: call to non-contract'
                        mem[488 len 96] = 0, msg.sender, 1, Mask(224, 32, sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18) >> 32
                        mem[612 len 4] = 0
                        call meltAddress.0x1 with:
                             gas gas_remaining wei
                            args sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18, mem[424 len 60], mem[584 len 4]
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
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.ratio() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                emit Transfer(0, 0, msg.sender);
            else:
                if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                totalSupply += ext_call.return_data[0] * arg1 / 10^18
                balanceOf[address(msg.sender)] += ext_call.return_data[0] * arg1 / 10^18
                emit Transfer((ext_call.return_data[0] * arg1 / 10^18), 0, msg.sender);
            if sub_0bb52153:
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.getPriceInfo(address arg1) with:
                        gas gas_remaining wei
                       args stakeTokenAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                if ext_call.return_data[32] < 100:
                    revert with 0, 'oracle price error'
                if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                    revert with 0, 'oracle price error'
                if arg1:
                    if ext_call.return_data[32] * arg1 / arg1 != ext_call.return_data[32]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(return_data.size) + 394 len 31]
                    if ext_call.return_data[32] * arg1 / 10^18:
                        if sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / ext_call.return_data[32] * arg1 / 10^18 != sub_0bb52153:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18:
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 595 len 26]
                            if not ext_code.size(meltAddress):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, 1, Mask(224, 32, sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18) >> 32
                            mem[ceil32(return_data.size) + 613 len 4] = 0
                            call meltAddress.0x1 with:
                                 gas gas_remaining wei
                                args sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
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
            require ext_code.size(stakeTokenAddress)
            staticcall stakeTokenAddress.ratio() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not arg1:
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                emit Transfer(0, 0, msg.sender);
                if sub_0bb52153:
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceInfo(address arg1) with:
                            gas gas_remaining wei
                           args stakeTokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[32] < 100:
                        revert with 0, 'oracle price error'
                    if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                        revert with 0, 'oracle price error'
                    if arg1:
                        if ext_call.return_data[32] * arg1 / arg1 != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if ext_call.return_data[32] * arg1 / 10^18:
                            if sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / ext_call.return_data[32] * arg1 / 10^18 != sub_0bb52153:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 595 len 26]
                                if not ext_code.size(meltAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, 1, Mask(224, 32, sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18) >> 32
                                mem[ceil32(return_data.size) + 613 len 4] = 0
                                call meltAddress.0x1 with:
                                     gas gas_remaining wei
                                    args sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
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
                if ext_call.return_data[0] * arg1 / arg1 != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 394 len 31]
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                totalSupply += ext_call.return_data[0] * arg1 / 10^18
                balanceOf[address(msg.sender)] += ext_call.return_data[0] * arg1 / 10^18
                emit Transfer((ext_call.return_data[0] * arg1 / 10^18), 0, msg.sender);
                if sub_0bb52153:
                    require ext_code.size(oracleAddress)
                    staticcall oracleAddress.getPriceInfo(address arg1) with:
                            gas gas_remaining wei
                           args stakeTokenAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    if ext_call.return_data[32] < 100:
                        revert with 0, 'oracle price error'
                    if ext_call.return_data[32] > 1000000000000000000000000000 * 10^18:
                        revert with 0, 'oracle price error'
                    if arg1:
                        if ext_call.return_data[32] * arg1 / arg1 != ext_call.return_data[32]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(return_data.size) + 394 len 31]
                        if ext_call.return_data[32] * arg1 / 10^18:
                            if sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / ext_call.return_data[32] * arg1 / 10^18 != sub_0bb52153:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(return_data.size) + 394 len 31]
                            if sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18:
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 595 len 26]
                                if not ext_code.size(meltAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 489 len 96] = 0, msg.sender, 1, Mask(224, 32, sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18) >> 32
                                mem[ceil32(return_data.size) + 613 len 4] = 0
                                call meltAddress.0x1 with:
                                     gas gas_remaining wei
                                    args sub_0bb52153 * ext_call.return_data[32] * arg1 / 10^18 / 10^18, mem[ceil32(return_data.size) + 425 len 60], mem[ceil32(return_data.size) + 585 len 4]
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
    stor5 = 0
}



}
