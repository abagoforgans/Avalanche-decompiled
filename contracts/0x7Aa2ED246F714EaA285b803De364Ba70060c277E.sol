contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
uint256 startTime;
uint256 endTime;
mapping of uint256 tokensUnclaimed;
address sub_0ae410f7Address;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;
uint256 totalTokensSold;
uint256 tokenPrice;
uint256 sub_241d50de;
uint256 sub_d3ebb9de;
uint256 softCap;
uint256 minimumDepositEthAmount;
mapping of uint8 stor13;

function sub_0ae410f7(?) {
    return sub_0ae410f7Address
}

function sub_241d50de(?) {
    return sub_241d50de
}

function minimumDepositEthAmount() {
    return minimumDepositEthAmount
}

function endTime() {
    return endTime
}

function isSaleActive() {
    return bool(uint8(stor6.field_160))
}

function totalTokensSold() {
    return totalTokensSold
}

function startTime() {
    return startTime
}

function tokenPrice() {
    return tokenPrice
}

function tokensUnclaimed(address arg1) {
    require calldata.size - 4 >= 32
    return tokensUnclaimed[arg1]
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function sub_d3ebb9de(?) {
    return sub_d3ebb9de
}

function whiteListed(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function _fallback() payable {
  stop
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateSoftCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    softCap = arg1
}

function setTokenPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    tokenPrice = arg1
}

function updateMinimumAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    minimumDepositEthAmount = arg1
}

function setSaleActive(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    Mask(96, 0, stor6.field_160) = Mask(96, 0, arg1)
}

function updateHardCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 <= softCap:
        revert with 0, 'hardCap should be over soft cap'
    sub_d3ebb9de = arg1
}

function sub_d68a096b(?) {
    require ext_code.size(sub_0ae410f7Address)
    staticcall sub_0ae410f7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a165b975(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x72656e6454696d652073686f756c64206265206c61746572207468616e2073746172742074696d,
                    mem[203 len 25]
    startTime = arg1
    endTime = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x644f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setWhitelist(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 13
        stor13[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
}

function sub_caa315c2(?) {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(sub_0ae410f7Address)
    staticcall sub_0ae410f7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_0ae410f7Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0 len 28]
    mem[324 len 0] = 0
    call sub_0ae410f7Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function sub_327400a8(?) {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(sub_0ae410f7Address)
    staticcall sub_0ae410f7Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x64416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(sub_0ae410f7Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ext_call.return_data[0] - totalTokensSold) >> 32
    mem[324 len 0] = 0
    call sub_0ae410f7Address with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] - totalTokensSold) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0] - totalTokensSold
        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 32, 42, 0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeBEP20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0xfe5361666542455032303a204245503230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function buy() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not uint8(stor6.field_160):
        revert with 0, 'Presale is not active'
    if block.timestamp <= startTime:
        revert with 0, 'Presal is out of duration'
    if block.timestamp >= endTime:
        revert with 0, 'Presal is out of duration'
    if not stor13[msg.sender]:
        revert with 0, 'You were not registryed'
    if sub_241d50de + msg.value > sub_d3ebb9de:
        revert with 0, 'Presale hardcap reached'
    if msg.value < minimumDepositEthAmount:
        revert with 0, 'low amount than min'
    if not msg.value:
        if tokenPrice <= 0:
            revert with 0, 'SafeMath: division by zero'
        require tokenPrice
        require ext_code.size(sub_0ae410f7Address)
        call sub_0ae410f7Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0 / tokenPrice
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (0 / tokenPrice) + totalTokensSold < totalTokensSold:
            revert with 0, 'SafeMath: addition overflow'
        totalTokensSold += 0 / tokenPrice
        if msg.value + sub_241d50de < sub_241d50de:
            revert with 0, 'SafeMath: addition overflow'
        sub_241d50de += msg.value
        emit TokenBuy(msg.sender, 0 / tokenPrice);
    else:
        if 10^18 * msg.value / msg.value != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if tokenPrice <= 0:
            revert with 0, 'SafeMath: division by zero'
        require tokenPrice
        require ext_code.size(sub_0ae410f7Address)
        call sub_0ae410f7Address.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^18 * msg.value / tokenPrice
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (10^18 * msg.value / tokenPrice) + totalTokensSold < totalTokensSold:
            revert with 0, 'SafeMath: addition overflow'
        totalTokensSold += 10^18 * msg.value / tokenPrice
        if msg.value + sub_241d50de < sub_241d50de:
            revert with 0, 'SafeMath: addition overflow'
        sub_241d50de += msg.value
        emit TokenBuy(msg.sender, 10^18 * msg.value / tokenPrice);
    stor1 = 1
}

function sub_1c0310a5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not eth.balance(this.address):
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance'
        call arg1 with:
             gas gas_remaining wei
    else:
        if 90 * eth.balance(this.address) / eth.balance(this.address) != 90:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if eth.balance(this.address) < 90 * eth.balance(this.address) / 100:
            revert with 0, 'Address: insufficient balance'
        call arg1 with:
           value 90 * eth.balance(this.address) / 100 wei
             gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
        if not eth.balance(this.address):
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance'
            call address(stor6.field_0) with:
                 gas gas_remaining wei
        else:
            if 10 * eth.balance(this.address) / eth.balance(this.address) != 10:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if eth.balance(this.address) < 10 * eth.balance(this.address) / 100:
                revert with 0, 'Address: insufficient balance'
            call address(stor6.field_0) with:
               value 10 * eth.balance(this.address) / 100 wei
                 gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            58,
                            0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[222 len 6]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[ceil32(return_data.size) + 223 len 6]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
        if not eth.balance(this.address):
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance'
            call address(stor6.field_0) with:
                 gas gas_remaining wei
        else:
            if 10 * eth.balance(this.address) / eth.balance(this.address) != 10:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 198 len 31]
            if eth.balance(this.address) < 10 * eth.balance(this.address) / 100:
                revert with 0, 'Address: insufficient balance'
            call address(stor6.field_0) with:
               value 10 * eth.balance(this.address) / 100 wei
                 gas gas_remaining wei
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[ceil32(return_data.size) + 223 len 6]
        else:
            if not ext_call.success:
                revert with 0, 
                            32,
                            58,
                            0x73416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                            mem[(2 * ceil32(return_data.size)) + 224 len 6]
    ('bool', 'ext_call.success')
}



}
