contract main {




// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 stor101;
address sub_ef10df3cAddress;
mapping of struct sub_3a033644;
address tokenForSaleAddress;
address partnerWalletAddress;
uint256 saleStartTime;
uint256 saleEndTime;
uint8 sub_010b7fc3;
uint256 coinPrice;
array of struct sub_21f6ed53;
mapping of uint8 sub_ed18c886;
array of struct sub_c6784641;
mapping of uint8 sub_f768e079;
uint256 totalTokensBought;
uint256 random;
uint256 sub_c7a354b7;
mapping of uint256 sub_e80957c4;
uint256 stor3DEA;
uint256 stor3DEA;
uint256 stor3DEA;
uint256 stor3DEA;
array of address stor45745005664663701202099487535202286597713757926078355546172753613236539042889;
uint256 stor8501;
uint256 stor8501;
uint256 stor8501;
uint256 stor8501;
array of address stor88452804657527067135923052393128476347342187794772379835979488160062335139304;
uint256 storE66B;
uint256 storE66B;
uint256 storE66B;
uint256 storE66B;
uint256 storF5F5;
uint256 storF5F5;
uint256 storF5F5;
uint256 storF5F5;
uint256 storFD16;
uint256 storFD16;
uint256 storFD16;
uint256 storFD16;

function sub_010b7fc3(?) {
    return bool(sub_010b7fc3)
}

function saleStartTime() {
    return saleStartTime
}

function partnerWallet() {
    return partnerWalletAddress
}

function sub_21f6ed53(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 5
    if not arg1:
        revert with 0, 'TalecraftIGO: wrong tier'
    require arg1 <= 5
    return sub_21f6ed53[arg1 << 248].field_0
}

function tokenForSale() {
    return tokenForSaleAddress
}

function sub_3a033644(?) {
    require calldata.size - 4 >= 32
    return sub_3a033644[arg1].field_0, sub_3a033644[arg1].field_256, sub_3a033644[arg1].field_512, sub_3a033644[arg1].field_768
}

function random() {
    return random
}

function sub_6a0483ef(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_21f6ed53[arg1].field_0
    return sub_21f6ed53[arg1][arg2].field_0
}

function owner() {
    return owner
}

function coinPrice() {
    return coinPrice
}

function totalTokensBought() {
    return totalTokensBought
}

function sub_c6784641(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_c6784641[arg1].field_0
    return sub_c6784641[arg1][arg2].field_0
}

function sub_c7a354b7(?) {
    return sub_c7a354b7
}

function sub_e80957c4(?) {
    require calldata.size - 4 >= 32
    return sub_e80957c4[arg1]
}

function sub_ed18c886(?) {
    require calldata.size - 4 >= 32
    require sub_ed18c886[arg1] <= 5
    return sub_ed18c886[arg1]
}

function saleEndTime() {
    return saleEndTime
}

function sub_ef10df3c(?) {
    return sub_ef10df3cAddress
}

function sub_f768e079(?) {
    require calldata.size - 4 >= 32
    require sub_f768e079[arg1] <= 5
    return sub_f768e079[arg1]
}

function sub_fc064b4a(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 5
    if not arg1:
        revert with 0, 'TalecraftIGO: wrong tier'
    require arg1 <= 5
    return sub_c6784641[arg1 << 248].field_0
}

function _fallback() payable {
    revert
}

function isInvestor(address arg1) {
    require calldata.size - 4 >= 32
    require sub_f768e079[address(arg1)] <= 5
    return not not sub_f768e079[address(arg1)]
}

function isWhitelisted(address arg1) {
    require calldata.size - 4 >= 32
    require sub_ed18c886[address(arg1)] <= 5
    return not not sub_ed18c886[address(arg1)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'yOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_cf16ce6a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'yOwnable: caller is not the owne'
    stor8501 = arg1
    return 1
}

function changeTime(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'yOwnable: caller is not the owne'
    saleStartTime = arg1
    saleEndTime = arg2
}

function currentPhase() {
    if not sub_010b7fc3:
        return 0
    if not coinPrice:
        return 0
    if block.timestamp >= saleEndTime:
        return 2
    if block.timestamp < saleStartTime:
        return 0
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'yOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x744f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setCoinPrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'yOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7254616c65637261667449474f3a207a65726f20707269636520696e20617267756d656e,
                    mem[200 len 28]
    if coinPrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6454616c65637261667449474f3a207468652070726963652068617320616c7265616479206265656e207365,
                    mem[208 len 20]
    coinPrice = arg1
    emit 0x21034570: arg1, block.timestamp, msg.sender
    return 1
}

function sub_372e6f31(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 5
    if not arg1:
        revert with 0, 'TalecraftIGO: wrong tier'
    require arg1 <= 5
    if not arg1:
        revert with 0, 'TalecraftIGO: wrong tier'
    if not coinPrice:
        return 0
    require arg1 <= 5
    if not sub_3a033644[arg1 << 248].field_512:
        if coinPrice <= 0:
            revert with 0, 'SafeMath: division by zero'
        if coinPrice:
            return (0 / coinPrice)
    else:
        if 10^18 * sub_3a033644[arg1 << 248].field_512 / sub_3a033644[arg1 << 248].field_512 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if coinPrice <= 0:
            revert with 0, 'SafeMath: division by zero'
        if coinPrice:
            return (10^18 * sub_3a033644[arg1 << 248].field_512 / coinPrice)
    ('iszero', ('stor', ('name', 'coinPrice', 158)))
    revert
}

function sub_94178c9c(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if owner != msg.sender:
        revert with 0, 'yOwnable: caller is not the owne'
    if not arg1.length:
        revert with 0, 
                    32,
                    37,
                    0x7754616c65637261667449474f3a20617267756d656e7420617272617920697320656d7074,
                    mem[(32 * arg1.length) + 233 len 27]
    require arg2 <= 5
    if not arg2:
        revert with 0, 'TalecraftIGO: wrong tier'
    idx = 0
    while idx < arg1.length:
        require arg2 <= 5
        require idx < arg1.length
        sub_21f6ed53[arg2 << 248].field_0++
        sub_21f6ed53[arg2 << 248][sub_21f6ed53[arg2 << 248].field_0].field_0 = mem[(32 * idx) + 140 len 20]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 160
        require arg2 <= 5
        sub_ed18c886[mem[(32 * idx) + 140 len 20]] = arg2
        idx = idx + 1
        continue 
    if not sub_010b7fc3:
        sub_010b7fc3 = 1
    require arg2 <= 5
    emit 0xc0bf2d81: block.timestamp, msg.sender, arg2
    return 1
}

function sub_004db3d3(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 5
    if not arg1:
        revert with 0, 'TalecraftIGO: wrong tier'
    require arg1 <= 5
    if not sub_21f6ed53[arg1 << 248].field_0:
        mem[(32 * sub_21f6ed53[arg1 << 248].field_0) + 128] = 32
        mem[(32 * sub_21f6ed53[arg1 << 248].field_0) + 160] = sub_21f6ed53[arg1 << 248].field_0
        mem[(32 * sub_21f6ed53[arg1 << 248].field_0) + 192 len floor32(sub_21f6ed53[arg1 << 248].field_0)] = mem[128 len floor32(sub_21f6ed53[arg1 << 248].field_0)]
        return memory
          from (32 * sub_21f6ed53[arg1 << 248].field_0) + 128
           len (96 * sub_21f6ed53[arg1 << 248].field_0) + 64
    mem[128] = sub_21f6ed53[arg1 << 248].field_0
    idx = 128
    s = 0
    while (32 * sub_21f6ed53[arg1 << 248].field_0) + 96 > idx:
        mem[idx + 32] = sub_21f6ed53[arg1 << 248][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_21f6ed53[arg1 << 248].field_0) + 192 len floor32(sub_21f6ed53[arg1 << 248].field_0)] = mem[128 len floor32(sub_21f6ed53[arg1 << 248].field_0)]
    return Array(len=sub_21f6ed53[arg1 << 248].field_0, data=mem[128 len floor32(sub_21f6ed53[arg1 << 248].field_0)], mem[(32 * sub_21f6ed53[arg1 << 248].field_0) + floor32(sub_21f6ed53[arg1 << 248].field_0) + 192 len (32 * sub_21f6ed53[arg1 << 248].field_0) - floor32(sub_21f6ed53[arg1 << 248].field_0)]), 
}

function sub_2d358bdb(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 5
    if not arg1:
        revert with 0, 'TalecraftIGO: wrong tier'
    require arg1 <= 5
    if not sub_c6784641[arg1 << 248].field_0:
        mem[(32 * sub_c6784641[arg1 << 248].field_0) + 128] = 32
        mem[(32 * sub_c6784641[arg1 << 248].field_0) + 160] = sub_c6784641[arg1 << 248].field_0
        mem[(32 * sub_c6784641[arg1 << 248].field_0) + 192 len floor32(sub_c6784641[arg1 << 248].field_0)] = mem[128 len floor32(sub_c6784641[arg1 << 248].field_0)]
        return memory
          from (32 * sub_c6784641[arg1 << 248].field_0) + 128
           len (96 * sub_c6784641[arg1 << 248].field_0) + 64
    mem[128] = sub_c6784641[arg1 << 248].field_0
    idx = 128
    s = 0
    while (32 * sub_c6784641[arg1 << 248].field_0) + 96 > idx:
        mem[idx + 32] = sub_c6784641[arg1 << 248][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_c6784641[arg1 << 248].field_0) + 192 len floor32(sub_c6784641[arg1 << 248].field_0)] = mem[128 len floor32(sub_c6784641[arg1 << 248].field_0)]
    return Array(len=sub_c6784641[arg1 << 248].field_0, data=mem[128 len floor32(sub_c6784641[arg1 << 248].field_0)], mem[(32 * sub_c6784641[arg1 << 248].field_0) + floor32(sub_c6784641[arg1 << 248].field_0) + 192 len (32 * sub_c6784641[arg1 << 248].field_0) - floor32(sub_c6784641[arg1 << 248].field_0)]), 
}

function randomize(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'yOwnable: caller is not the owne'
    if not sub_010b7fc3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if not coinPrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if block.timestamp < saleEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if arg1 <= 0:
        revert with 0, 'TalecraftIGO: wrong seed'
    if random:
        revert with 0, 'TalecraftIGO: already randomized'
    random = sha3(block.difficulty, block.timestamp, Mask(160, 96, block.coinbase) >> 96, block.hash(block.number - 1), arg1)
    emit 0x15997552: sha3(block.difficulty, block.timestamp, Mask(160, 96, block.coinbase) >> 96, block.hash(block.number - 1), arg1), block.timestamp, msg.sender
    return 1
}

function sub_5f5fd2e2(?) {
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if owner != msg.sender:
        revert with 0, 'yOwnable: caller is not the owne'
    if not sub_010b7fc3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if not coinPrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if block.timestamp < saleEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if sub_c7a354b7 > eth.balance(this.address):
        revert with 0, 'SafeMath: subtraction overflow'
    if eth.balance(this.address) < eth.balance(this.address) - sub_c7a354b7:
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value eth.balance(this.address) - sub_c7a354b7 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x64416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0x64416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
    ('bool', 'ext_call.success')
    emit 0xd6147a48: eth.balance(this.address) - sub_c7a354b7, block.timestamp, msg.sender
    stor101 = 1
    return (eth.balance(this.address) - sub_c7a354b7)
}

function sub_920a7f1c(?) {
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    require ext_code.size(sub_ef10df3cAddress)
    staticcall sub_ef10df3cAddress.checkAccess(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NeedAccess: access is denied'
    if not sub_010b7fc3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if not coinPrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if block.timestamp < saleEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if not sub_e80957c4[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x7454616c65637261667449474f3a206e6f2072656d61696e64657220746f6b656e,
                    mem[197 len 31]
    sub_e80957c4[msg.sender] = 0
    if sub_e80957c4[msg.sender] > sub_c7a354b7:
        revert with 0, 'SafeMath: subtraction overflow'
    sub_c7a354b7 -= sub_e80957c4[msg.sender]
    if eth.balance(this.address) < sub_e80957c4[msg.sender]:
        revert with 0, 'Address: insufficient balance'
    call msg.sender with:
       value sub_e80957c4[msg.sender] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        58,
                        0x64416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[222 len 6]
    else:
        if not ext_call.success:
            revert with 0, 
                        32,
                        58,
                        0x64416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                        mem[ceil32(return_data.size) + 223 len 6]
    ('bool', 'ext_call.success')
    emit 0x17466de1: sub_e80957c4[msg.sender], block.timestamp, msg.sender
    stor101 = 1
    return sub_e80957c4[msg.sender]
}

function buyTierTokens() payable {
    if stor101 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor101 = 2
    if msg.sender == owner:
        revert with 0, 'TalecraftIGO: not for admins'
    if msg.sender == partnerWalletAddress:
        revert with 0, 'TalecraftIGO: not for admins'
    require ext_code.size(sub_ef10df3cAddress)
    staticcall sub_ef10df3cAddress.checkAccess(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'NeedAccess: access is denied'
    if not sub_010b7fc3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7354616c65637261667449474f3a2053414c455f50484153452070686173652072657175697265,
                    mem[203 len 25]
    if not coinPrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7354616c65637261667449474f3a2053414c455f50484153452070686173652072657175697265,
                    mem[203 len 25]
    if block.timestamp >= saleEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7354616c65637261667449474f3a2053414c455f50484153452070686173652072657175697265,
                    mem[203 len 25]
    if block.timestamp < saleStartTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7354616c65637261667449474f3a2053414c455f50484153452070686173652072657175697265,
                    mem[203 len 25]
    require sub_f768e079[msg.sender] <= 5
    if sub_f768e079[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe54616c65637261667449474f3a20746865207469657220616c726561647920626f756768,
                    mem[201 len 27]
    require sub_ed18c886[msg.sender] <= 5
    if not sub_ed18c886[msg.sender]:
        revert with 0, 'TalecraftIGO: not in whitelist'
    require sub_ed18c886[msg.sender] <= 5
    if not sub_ed18c886[msg.sender]:
        revert with 0, 'TalecraftIGO: wrong tier'
    if not coinPrice:
        if msg.value:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x7254616c65637261667449474f3a2077726f6e67206d6573736167652076616c75,
                        mem[197 len 31]
    else:
        require sub_ed18c886[msg.sender] <= 5
        if not sub_3a033644[stor160[msg.sender]].field_512:
            if coinPrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            require coinPrice
            if 0 / coinPrice != msg.value:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7254616c65637261667449474f3a2077726f6e67206d6573736167652076616c75,
                            mem[197 len 31]
        else:
            if 10^18 * sub_3a033644[stor160[msg.sender]].field_512 / sub_3a033644[stor160[msg.sender]].field_512 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if coinPrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            require coinPrice
            if 10^18 * sub_3a033644[stor160[msg.sender]].field_512 / coinPrice != msg.value:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x7254616c65637261667449474f3a2077726f6e67206d6573736167652076616c75,
                            mem[197 len 31]
    require sub_ed18c886[msg.sender] <= 5
    sub_f768e079[msg.sender] = sub_ed18c886[msg.sender]
    sub_c6784641[stor160[msg.sender]].field_0++
    sub_c6784641[stor160[msg.sender]][sub_c6784641[stor160[msg.sender]].field_0].field_0 = msg.sender or Mask(96, 160, sub_c6784641[stor160[msg.sender]][sub_c6784641[stor160[msg.sender]].field_0].field_0)
    if sub_3a033644[stor160[msg.sender]].field_768 + totalTokensBought < totalTokensBought:
        revert with 0, 'SafeMath: addition overflow'
    totalTokensBought += sub_3a033644[stor160[msg.sender]].field_768
    require sub_ed18c886[msg.sender] <= 5
    emit 0x7fb6706d: msg.value, sub_3a033644[stor160[msg.sender]].field_768, block.timestamp, msg.sender, sub_ed18c886[msg.sender]
    stor101 = 1
    return 1
}

function sub_58b94635(?) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'yOwnable: caller is not the owne'
    if not sub_010b7fc3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if not coinPrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if block.timestamp < saleEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    mem[32] = 161
    mem[0] = 5
    mem[128] = random
    mem[160] = 0x72616e646f6d4b69636b46726f6d506f6f6c3200000000000000000000000000
    mem[179] = block.timestamp
    mem[211] = stor6522.length
    mem[96] = 115
    mem[64] = 243
    idx = 0
    s = 0
    while idx < arg2:
        if arg1 >= stor6522.length:
            return 1
        if stor6522.length <= 0:
            revert with 0, 'SafeMath: modulo by zero'
        require stor6522.length
        require s + sha3(mem[128 len mem[96]]) % stor6522.length < stor6522.length
        mem[0] = stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]
        mem[32] = 160
        require sub_ed18c886[stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]] <= 5
        if sub_ed18c886[stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]] != 5:
            idx = idx + 1
            s = s
            continue 
        if not coinPrice:
            if sub_e80957c4[stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]] < sub_e80957c4[stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]
            if sub_c7a354b7 < sub_c7a354b7:
                revert with 0, 'SafeMath: addition overflow'
            require stor6522.length - 1 < stor6522.length
            require s + sha3(mem[128 len mem[96]]) % stor6522.length < stor6522.length
            stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length] = stor6522[stor6522.length]
            require stor6522.length
            stor6522[stor6522.length] = 0
            stor6522.length--
            mem[mem[64]] = s + sha3(mem[128 len mem[96]]) % stor6522.length
            mem[mem[64] + 32] = block.timestamp
            emit 0x1f2f1cc6: mem[mem[64]], block.timestamp, 5, stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]
            mem[32] = 161
            mem[0] = 5
            mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
            mem[mem[64] + 64] = stor6522.length
            mem[mem[64] + 96] = idx
            _138 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            idx = idx + 1
            s = sha3(mem[_138 + 32 len mem[_138]])
            continue 
        if not sub_3a033644[5].field_512:
            if coinPrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            require coinPrice
            if (0 / coinPrice) + sub_e80957c4[stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]] < sub_e80957c4[stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]
            sub_e80957c4[stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]] += 0 / coinPrice
            if (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                revert with 0, 'SafeMath: addition overflow'
            sub_c7a354b7 += 0 / coinPrice
            require stor6522.length - 1 < stor6522.length
            require s + sha3(mem[128 len mem[96]]) % stor6522.length < stor6522.length
            stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length] = stor6522[stor6522.length]
            require stor6522.length
            stor6522[stor6522.length] = 0
            stor6522.length--
            mem[mem[64]] = s + sha3(mem[128 len mem[96]]) % stor6522.length
            mem[mem[64] + 32] = block.timestamp
            emit 0x1f2f1cc6: mem[mem[64]], block.timestamp, 5, stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]
            mem[32] = 161
            mem[0] = 5
            mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
            mem[mem[64] + 64] = stor6522.length
            mem[mem[64] + 96] = idx
            _164 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            idx = idx + 1
            s = sha3(mem[_164 + 32 len mem[_164]])
            continue 
        if 10^18 * sub_3a033644[5].field_512 / sub_3a033644[5].field_512 != 10^18:
            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if coinPrice <= 0:
            revert with 0, 'SafeMath: division by zero'
        require coinPrice
        if (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]] < sub_e80957c4[stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]
        sub_e80957c4[stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]] += 10^18 * sub_3a033644[5].field_512 / coinPrice
        if (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
            revert with 0, 'SafeMath: addition overflow'
        sub_c7a354b7 += 10^18 * sub_3a033644[5].field_512 / coinPrice
        require stor6522.length - 1 < stor6522.length
        require s + sha3(mem[128 len mem[96]]) % stor6522.length < stor6522.length
        stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length] = stor6522[stor6522.length]
        require stor6522.length
        stor6522[stor6522.length] = 0
        stor6522.length--
        mem[mem[64]] = s + sha3(mem[128 len mem[96]]) % stor6522.length
        mem[mem[64] + 32] = block.timestamp
        emit 0x1f2f1cc6: mem[mem[64]], block.timestamp, 5, stor6522[s + sha3(mem[128 len mem[96]]) % stor6522.length]
        mem[32] = 161
        mem[0] = 5
        mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
        mem[mem[64] + 64] = stor6522.length
        mem[mem[64] + 96] = idx
        _172 = mem[64]
        mem[mem[64]] = 96
        mem[64] = mem[64] + 128
        idx = idx + 1
        s = sha3(mem[_172 + 32 len mem[_172]])
        continue 
    return 1
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        stor101 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            stor101 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                stor101 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    stor101 = 1
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        stor101 = 1
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor101 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                stor101 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7354616c65637261667449474f3a207a65726f20616363657373206c69737420616464726573,
                    mem[202 len 26]
    if not arg2:
        revert with 0, 'TalecraftIGO: zero token address'
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xa754616c65637261667449474f3a207a65726f20706172746e657220616464726573,
                    mem[198 len 30]
    if arg4 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x6454616c65637261667449474f3a20696e76616c6964205f73616c65537461727454696d6520706172616d657465,
                    mem[210 len 18]
    if arg5 <= arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7454616c65637261667449474f3a20696e76616c6964205f73616c65456e6454696d6520706172616d657465,
                    mem[208 len 20]
    sub_ef10df3cAddress = arg1
    tokenForSaleAddress = arg2
    partnerWalletAddress = arg3
    saleStartTime = arg4
    saleEndTime = arg5
    storE66B = 25
    storE66B = 0
    storE66B = 750 * 10^18
    storE66B = 50000 * 10^18
    storFD16 = 25
    storFD16 = 1
    storFD16 = 625 * 10^18
    storFD16 = 41666 * 10^18
    stor3DEA = 25
    stor3DEA = 2
    stor3DEA = 375 * 10^18
    stor3DEA = 25000 * 10^18
    storF5F5 = 25
    storF5F5 = 4
    storF5F5 = 250 * 10^18
    storF5F5 = 16666 * 10^18
    stor8501 = 419
    stor8501 = 0
    stor8501 = 125 * 10^18
    stor8501 = 8333 * 10^18
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_2748a076(?) {
    if owner != msg.sender:
        revert with 0, 'yOwnable: caller is not the owne'
    if not sub_010b7fc3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if not coinPrice:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    if block.timestamp < saleEndTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x7354616c65637261667449474f3a2052414e444f4d495a455f50484153452070686173652072657175697265,
                    mem[208 len 20]
    mem[128] = random
    mem[96] = 32
    mem[64] = 160
    if sub_c6784641[2].field_0 > sub_3a033644[2].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_3a033644[2].field_0 - sub_c6784641[2].field_0 >= sub_3a033644[2].field_256:
        mem[192] = sha3(random)
        mem[160] = 32
        mem[64] = 224
        if sub_c6784641[3].field_0 > sub_3a033644[3].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_3a033644[3].field_0 - sub_c6784641[3].field_0 >= sub_3a033644[3].field_256:
            mem[256] = sha3(sha3(random))
            mem[224] = 32
            mem[64] = 288
            if sub_c6784641[4].field_0 > sub_3a033644[4].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_3a033644[4].field_0 - sub_c6784641[4].field_0 < sub_3a033644[4].field_256:
                mem[0] = 4
                mem[32] = 152
                if sub_3a033644[4].field_0 - sub_c6784641[4].field_0 > sub_3a033644[4].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = 0
                t = 0
                while idx < sub_3a033644[4].field_256 - sub_3a033644[4].field_0 + sub_c6784641[4].field_0:
                    mem[0] = 4
                    if sub_c6784641[4].field_0 <= 0:
                        revert with 0, 'SafeMath: modulo by zero'
                    require sub_c6784641[4].field_0
                    require s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                    mem[mem[64]] = s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0
                    mem[mem[64] + 32] = block.timestamp
                    emit 0xa0f614a7: mem[mem[64]], block.timestamp, 4, sub_c6784641[4][s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0].field_0
                    stor6522.length++
                    storC38E[stor6522.length] = sub_c6784641[4][s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0].field_0
                    sub_f768e079[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] = 5
                    if not coinPrice:
                        if not coinPrice:
                            if sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s + sha3(mem[256 len mem[224]])
                            mem[mem[64] + 64] = 4
                            _1657 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_1657 + 32 len mem[_1657]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if not sub_3a033644[4].field_512:
                            if coinPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require coinPrice
                            if 0 > 0 / coinPrice:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (0 / coinPrice) + sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] += 0 / coinPrice
                            if (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_c7a354b7 += 0 / coinPrice
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s + sha3(mem[256 len mem[224]])
                            mem[mem[64] + 64] = 4
                            _1841 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_1841 + 32 len mem[_1841]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if 10^18 * sub_3a033644[4].field_512 / sub_3a033644[4].field_512 != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 0 > 10^18 * sub_3a033644[4].field_512 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) + sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] += 10^18 * sub_3a033644[4].field_512 / coinPrice
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 += 10^18 * sub_3a033644[4].field_512 / coinPrice
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s + sha3(mem[256 len mem[224]])
                        mem[mem[64] + 64] = 4
                        _1878 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_1878 + 32 len mem[_1878]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if not sub_3a033644[5].field_512:
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if not coinPrice:
                            if 0 / coinPrice > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -(0 / coinPrice) + sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] -= 0 / coinPrice
                            if -(0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_c7a354b7 -= 0 / coinPrice
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s + sha3(mem[256 len mem[224]])
                            mem[mem[64] + 64] = 4
                            _1837 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_1837 + 32 len mem[_1837]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if not sub_3a033644[4].field_512:
                            if coinPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require coinPrice
                            if 0 / coinPrice > 0 / coinPrice:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s + sha3(mem[256 len mem[224]])
                            mem[mem[64] + 64] = 4
                            _1995 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_1995 + 32 len mem[_1995]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if 10^18 * sub_3a033644[4].field_512 / sub_3a033644[4].field_512 != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 0 / coinPrice > 10^18 * sub_3a033644[4].field_512 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0]
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s + sha3(mem[256 len mem[224]])
                        mem[mem[64] + 64] = 4
                        _2016 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_2016 + 32 len mem[_2016]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if 10^18 * sub_3a033644[5].field_512 / sub_3a033644[5].field_512 != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if not coinPrice:
                        if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                        if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s + sha3(mem[256 len mem[224]])
                        mem[mem[64] + 64] = 4
                        _1872 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_1872 + 32 len mem[_1872]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if not sub_3a033644[4].field_512:
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0]
                        if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s + sha3(mem[256 len mem[224]])
                        mem[mem[64] + 64] = 4
                        _2012 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_2012 + 32 len mem[_2012]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if 10^18 * sub_3a033644[4].field_512 / sub_3a033644[4].field_512 != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if 10^18 * sub_3a033644[5].field_512 / coinPrice > 10^18 * sub_3a033644[4].field_512 / coinPrice:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0] = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s + sha3(mem[256 len mem[224]]) % stor161[4].field_0].field_0]
                    if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                    mem[32] = 161
                    require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                    require s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                    sub_c6784641[4][s + sha3(mem[256 len mem[224]]) % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                    require sub_c6784641[4].field_0
                    mem[0] = sha3(4, 161)
                    sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                    sub_c6784641[4].field_0--
                    mem[mem[64] + 32] = s + sha3(mem[256 len mem[224]])
                    mem[mem[64] + 64] = 4
                    _2040 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_2040 + 32 len mem[_2040]])
                    t = s % sub_c6784641[4].field_0
                    continue 
        else:
            mem[0] = 3
            mem[32] = 152
            if sub_3a033644[3].field_0 - sub_c6784641[3].field_0 > sub_3a033644[3].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = 0
            t = 0
            while idx < sub_3a033644[3].field_256 - sub_3a033644[3].field_0 + sub_c6784641[3].field_0:
                mem[0] = 3
                if sub_c6784641[3].field_0 <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require sub_c6784641[3].field_0
                require s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                mem[mem[64]] = s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0
                mem[mem[64] + 32] = block.timestamp
                emit 0xa0f614a7: mem[mem[64]], block.timestamp, 3, sub_c6784641[3][s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0].field_0
                stor6522.length++
                storC38E[stor6522.length] = sub_c6784641[3][s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0].field_0
                sub_f768e079[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] = 5
                if not coinPrice:
                    if not coinPrice:
                        if sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[32] = 161
                        require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                        require s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                        sub_c6784641[3][s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                        require sub_c6784641[3].field_0
                        mem[0] = sha3(3, 161)
                        sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                        sub_c6784641[3].field_0--
                        mem[mem[64] + 32] = s + sha3(mem[192 len mem[160]])
                        mem[mem[64] + 64] = 3
                        _1667 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_1667 + 32 len mem[_1667]])
                        t = s % sub_c6784641[3].field_0
                        continue 
                    if not sub_3a033644[3].field_512:
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 0 > 0 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0 / coinPrice) + sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] += 0 / coinPrice
                        if (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 += 0 / coinPrice
                        mem[32] = 161
                        require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                        require s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                        sub_c6784641[3][s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                        require sub_c6784641[3].field_0
                        mem[0] = sha3(3, 161)
                        sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                        sub_c6784641[3].field_0--
                        mem[mem[64] + 32] = s + sha3(mem[192 len mem[160]])
                        mem[mem[64] + 64] = 3
                        _1854 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_1854 + 32 len mem[_1854]])
                        t = s % sub_c6784641[3].field_0
                        continue 
                    if 10^18 * sub_3a033644[3].field_512 / sub_3a033644[3].field_512 != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if 0 > 10^18 * sub_3a033644[3].field_512 / coinPrice:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10^18 * sub_3a033644[3].field_512 / coinPrice) + sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] += 10^18 * sub_3a033644[3].field_512 / coinPrice
                    if (10^18 * sub_3a033644[3].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 += 10^18 * sub_3a033644[3].field_512 / coinPrice
                    mem[32] = 161
                    require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                    require s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                    sub_c6784641[3][s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                    require sub_c6784641[3].field_0
                    mem[0] = sha3(3, 161)
                    sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                    sub_c6784641[3].field_0--
                    mem[mem[64] + 32] = s + sha3(mem[192 len mem[160]])
                    mem[mem[64] + 64] = 3
                    _1892 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_1892 + 32 len mem[_1892]])
                    t = s % sub_c6784641[3].field_0
                    continue 
                if not sub_3a033644[5].field_512:
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if not coinPrice:
                        if 0 / coinPrice > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -(0 / coinPrice) + sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] -= 0 / coinPrice
                        if -(0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 -= 0 / coinPrice
                        mem[32] = 161
                        require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                        require s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                        sub_c6784641[3][s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                        require sub_c6784641[3].field_0
                        mem[0] = sha3(3, 161)
                        sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                        sub_c6784641[3].field_0--
                        mem[mem[64] + 32] = s + sha3(mem[192 len mem[160]])
                        mem[mem[64] + 64] = 3
                        _1850 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_1850 + 32 len mem[_1850]])
                        t = s % sub_c6784641[3].field_0
                        continue 
                    if not sub_3a033644[3].field_512:
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 0 / coinPrice > 0 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[32] = 161
                        require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                        require s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                        sub_c6784641[3][s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                        require sub_c6784641[3].field_0
                        mem[0] = sha3(3, 161)
                        sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                        sub_c6784641[3].field_0--
                        mem[mem[64] + 32] = s + sha3(mem[192 len mem[160]])
                        mem[mem[64] + 64] = 3
                        _2002 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_2002 + 32 len mem[_2002]])
                        t = s % sub_c6784641[3].field_0
                        continue 
                    if 10^18 * sub_3a033644[3].field_512 / sub_3a033644[3].field_512 != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if 0 / coinPrice > 10^18 * sub_3a033644[3].field_512 / coinPrice:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10^18 * sub_3a033644[3].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] = (10^18 * sub_3a033644[3].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0]
                    if (10^18 * sub_3a033644[3].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 = (10^18 * sub_3a033644[3].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7
                    mem[32] = 161
                    require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                    require s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                    sub_c6784641[3][s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                    require sub_c6784641[3].field_0
                    mem[0] = sha3(3, 161)
                    sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                    sub_c6784641[3].field_0--
                    mem[mem[64] + 32] = s + sha3(mem[192 len mem[160]])
                    mem[mem[64] + 64] = 3
                    _2026 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_2026 + 32 len mem[_2026]])
                    t = s % sub_c6784641[3].field_0
                    continue 
                if 10^18 * sub_3a033644[5].field_512 / sub_3a033644[5].field_512 != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if coinPrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require coinPrice
                if not coinPrice:
                    if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                    if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                    mem[32] = 161
                    require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                    require s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                    sub_c6784641[3][s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                    require sub_c6784641[3].field_0
                    mem[0] = sha3(3, 161)
                    sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                    sub_c6784641[3].field_0--
                    mem[mem[64] + 32] = s + sha3(mem[192 len mem[160]])
                    mem[mem[64] + 64] = 3
                    _1886 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_1886 + 32 len mem[_1886]])
                    t = s % sub_c6784641[3].field_0
                    continue 
                if not sub_3a033644[3].field_512:
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0 / coinPrice:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0]
                    if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                    mem[32] = 161
                    require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                    require s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                    sub_c6784641[3][s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                    require sub_c6784641[3].field_0
                    mem[0] = sha3(3, 161)
                    sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                    sub_c6784641[3].field_0--
                    mem[mem[64] + 32] = s + sha3(mem[192 len mem[160]])
                    mem[mem[64] + 64] = 3
                    _2022 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_2022 + 32 len mem[_2022]])
                    t = s % sub_c6784641[3].field_0
                    continue 
                if 10^18 * sub_3a033644[3].field_512 / sub_3a033644[3].field_512 != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if coinPrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require coinPrice
                if 10^18 * sub_3a033644[5].field_512 / coinPrice > 10^18 * sub_3a033644[3].field_512 / coinPrice:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (10^18 * sub_3a033644[3].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0] = (10^18 * sub_3a033644[3].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[3][s + sha3(mem[192 len mem[160]]) % stor161[3].field_0].field_0]
                if (10^18 * sub_3a033644[3].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                    revert with 0, 'SafeMath: addition overflow'
                sub_c7a354b7 = (10^18 * sub_3a033644[3].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                mem[32] = 161
                require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                require s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                sub_c6784641[3][s + sha3(mem[192 len mem[160]]) % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                require sub_c6784641[3].field_0
                mem[0] = sha3(3, 161)
                sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                sub_c6784641[3].field_0--
                mem[mem[64] + 32] = s + sha3(mem[192 len mem[160]])
                mem[mem[64] + 64] = 3
                _2045 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_2045 + 32 len mem[_2045]])
                t = s % sub_c6784641[3].field_0
                continue 
            mem[mem[64] + 32] = sha3(sha3(random))
            _1374 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            _1376 = sha3(mem[_1374 + 32 len mem[_1374]])
            if sub_c6784641[4].field_0 > sub_3a033644[4].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_3a033644[4].field_0 - sub_c6784641[4].field_0 < sub_3a033644[4].field_256:
                mem[0] = 4
                mem[32] = 152
                if sub_3a033644[4].field_0 - sub_c6784641[4].field_0 > sub_3a033644[4].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = _1376
                t = 0
                while idx < sub_3a033644[4].field_256 - sub_3a033644[4].field_0 + sub_c6784641[4].field_0:
                    mem[0] = 4
                    if sub_c6784641[4].field_0 <= 0:
                        revert with 0, 'SafeMath: modulo by zero'
                    require sub_c6784641[4].field_0
                    require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                    mem[mem[64] + 32] = block.timestamp
                    emit 0xa0f614a7: s % sub_c6784641[4].field_0, block.timestamp, 4, sub_c6784641[4][s % sub_c6784641[4].field_0].field_0
                    stor6522.length++
                    storC38E[stor6522.length] = sub_c6784641[4][s % sub_c6784641[4].field_0].field_0
                    sub_f768e079[stor161[4][s % stor161[4].field_0].field_0] = 5
                    if not coinPrice:
                        if not coinPrice:
                            if sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s
                            mem[mem[64] + 64] = 4
                            _2942 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_2942 + 32 len mem[_2942]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if not sub_3a033644[4].field_512:
                            if coinPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require coinPrice
                            if 0 > 0 / coinPrice:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (0 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] += 0 / coinPrice
                            if (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_c7a354b7 += 0 / coinPrice
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s
                            mem[mem[64] + 64] = 4
                            _3105 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_3105 + 32 len mem[_3105]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if 10^18 * sub_3a033644[4].field_512 / sub_3a033644[4].field_512 != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 0 > 10^18 * sub_3a033644[4].field_512 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] += 10^18 * sub_3a033644[4].field_512 / coinPrice
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 += 10^18 * sub_3a033644[4].field_512 / coinPrice
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 4
                        _3141 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3141 + 32 len mem[_3141]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if not sub_3a033644[5].field_512:
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if not coinPrice:
                            if 0 / coinPrice > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -(0 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] -= 0 / coinPrice
                            if -(0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_c7a354b7 -= 0 / coinPrice
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s
                            mem[mem[64] + 64] = 4
                            _3101 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_3101 + 32 len mem[_3101]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if not sub_3a033644[4].field_512:
                            if coinPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require coinPrice
                            if 0 / coinPrice > 0 / coinPrice:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s
                            mem[mem[64] + 64] = 4
                            _3232 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_3232 + 32 len mem[_3232]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if 10^18 * sub_3a033644[4].field_512 / sub_3a033644[4].field_512 != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 0 / coinPrice > 10^18 * sub_3a033644[4].field_512 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 4
                        _3252 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3252 + 32 len mem[_3252]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if 10^18 * sub_3a033644[5].field_512 / sub_3a033644[5].field_512 != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if not coinPrice:
                        if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                        if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 4
                        _3135 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3135 + 32 len mem[_3135]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if not sub_3a033644[4].field_512:
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]
                        if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 4
                        _3248 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3248 + 32 len mem[_3248]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if 10^18 * sub_3a033644[4].field_512 / sub_3a033644[4].field_512 != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if 10^18 * sub_3a033644[5].field_512 / coinPrice > 10^18 * sub_3a033644[4].field_512 / coinPrice:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]
                    if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                    mem[32] = 161
                    require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                    require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                    sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                    require sub_c6784641[4].field_0
                    mem[0] = sha3(4, 161)
                    sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                    sub_c6784641[4].field_0--
                    mem[mem[64] + 32] = s
                    mem[mem[64] + 64] = 4
                    _3274 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_3274 + 32 len mem[_3274]])
                    t = s % sub_c6784641[4].field_0
                    continue 
    else:
        mem[0] = 2
        mem[32] = 152
        if sub_3a033644[2].field_0 - sub_c6784641[2].field_0 > sub_3a033644[2].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = 0
        t = 0
        while idx < sub_3a033644[2].field_256 - sub_3a033644[2].field_0 + sub_c6784641[2].field_0:
            mem[0] = 2
            if sub_c6784641[2].field_0 <= 0:
                revert with 0, 'SafeMath: modulo by zero'
            require sub_c6784641[2].field_0
            require s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0 < sub_c6784641[2].field_0
            mem[mem[64]] = s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0
            mem[mem[64] + 32] = block.timestamp
            emit 0xa0f614a7: mem[mem[64]], block.timestamp, 2, sub_c6784641[2][s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0].field_0
            stor6522.length++
            storC38E[stor6522.length] = sub_c6784641[2][s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0].field_0
            sub_f768e079[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] = 5
            if not coinPrice:
                if not coinPrice:
                    if sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] < sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[32] = 161
                    require sub_c6784641[2].field_0 - 1 < sub_c6784641[2].field_0
                    require s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0 < sub_c6784641[2].field_0
                    sub_c6784641[2][s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0].field_0 = sub_c6784641[2][sub_c6784641[2].field_0].field_0
                    require sub_c6784641[2].field_0
                    mem[0] = sha3(2, 161)
                    sub_c6784641[2][sub_c6784641[2].field_0].field_0 = 0
                    sub_c6784641[2].field_0--
                    mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
                    mem[mem[64] + 64] = 2
                    _1678 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_1678 + 32 len mem[_1678]])
                    t = s % sub_c6784641[2].field_0
                    continue 
                if not sub_3a033644[2].field_512:
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if 0 > 0 / coinPrice:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (0 / coinPrice) + sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] < sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] += 0 / coinPrice
                    if (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 += 0 / coinPrice
                    mem[32] = 161
                    require sub_c6784641[2].field_0 - 1 < sub_c6784641[2].field_0
                    require s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0 < sub_c6784641[2].field_0
                    sub_c6784641[2][s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0].field_0 = sub_c6784641[2][sub_c6784641[2].field_0].field_0
                    require sub_c6784641[2].field_0
                    mem[0] = sha3(2, 161)
                    sub_c6784641[2][sub_c6784641[2].field_0].field_0 = 0
                    sub_c6784641[2].field_0--
                    mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
                    mem[mem[64] + 64] = 2
                    _1866 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_1866 + 32 len mem[_1866]])
                    t = s % sub_c6784641[2].field_0
                    continue 
                if 10^18 * sub_3a033644[2].field_512 / sub_3a033644[2].field_512 != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if coinPrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require coinPrice
                if 0 > 10^18 * sub_3a033644[2].field_512 / coinPrice:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (10^18 * sub_3a033644[2].field_512 / coinPrice) + sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] < sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] += 10^18 * sub_3a033644[2].field_512 / coinPrice
                if (10^18 * sub_3a033644[2].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                    revert with 0, 'SafeMath: addition overflow'
                sub_c7a354b7 += 10^18 * sub_3a033644[2].field_512 / coinPrice
                mem[32] = 161
                require sub_c6784641[2].field_0 - 1 < sub_c6784641[2].field_0
                require s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0 < sub_c6784641[2].field_0
                sub_c6784641[2][s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0].field_0 = sub_c6784641[2][sub_c6784641[2].field_0].field_0
                require sub_c6784641[2].field_0
                mem[0] = sha3(2, 161)
                sub_c6784641[2][sub_c6784641[2].field_0].field_0 = 0
                sub_c6784641[2].field_0--
                mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
                mem[mem[64] + 64] = 2
                _1906 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_1906 + 32 len mem[_1906]])
                t = s % sub_c6784641[2].field_0
                continue 
            if not sub_3a033644[5].field_512:
                if coinPrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require coinPrice
                if not coinPrice:
                    if 0 / coinPrice > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -(0 / coinPrice) + sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] < sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] -= 0 / coinPrice
                    if -(0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 -= 0 / coinPrice
                    mem[32] = 161
                    require sub_c6784641[2].field_0 - 1 < sub_c6784641[2].field_0
                    require s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0 < sub_c6784641[2].field_0
                    sub_c6784641[2][s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0].field_0 = sub_c6784641[2][sub_c6784641[2].field_0].field_0
                    require sub_c6784641[2].field_0
                    mem[0] = sha3(2, 161)
                    sub_c6784641[2][sub_c6784641[2].field_0].field_0 = 0
                    sub_c6784641[2].field_0--
                    mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
                    mem[mem[64] + 64] = 2
                    _1862 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_1862 + 32 len mem[_1862]])
                    t = s % sub_c6784641[2].field_0
                    continue 
                if not sub_3a033644[2].field_512:
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if 0 / coinPrice > 0 / coinPrice:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] < sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    mem[32] = 161
                    require sub_c6784641[2].field_0 - 1 < sub_c6784641[2].field_0
                    require s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0 < sub_c6784641[2].field_0
                    sub_c6784641[2][s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0].field_0 = sub_c6784641[2][sub_c6784641[2].field_0].field_0
                    require sub_c6784641[2].field_0
                    mem[0] = sha3(2, 161)
                    sub_c6784641[2][sub_c6784641[2].field_0].field_0 = 0
                    sub_c6784641[2].field_0--
                    mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
                    mem[mem[64] + 64] = 2
                    _2008 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_2008 + 32 len mem[_2008]])
                    t = s % sub_c6784641[2].field_0
                    continue 
                if 10^18 * sub_3a033644[2].field_512 / sub_3a033644[2].field_512 != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if coinPrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require coinPrice
                if 0 / coinPrice > 10^18 * sub_3a033644[2].field_512 / coinPrice:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (10^18 * sub_3a033644[2].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] < sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] = (10^18 * sub_3a033644[2].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0]
                if (10^18 * sub_3a033644[2].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                    revert with 0, 'SafeMath: addition overflow'
                sub_c7a354b7 = (10^18 * sub_3a033644[2].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7
                mem[32] = 161
                require sub_c6784641[2].field_0 - 1 < sub_c6784641[2].field_0
                require s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0 < sub_c6784641[2].field_0
                sub_c6784641[2][s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0].field_0 = sub_c6784641[2][sub_c6784641[2].field_0].field_0
                require sub_c6784641[2].field_0
                mem[0] = sha3(2, 161)
                sub_c6784641[2][sub_c6784641[2].field_0].field_0 = 0
                sub_c6784641[2].field_0--
                mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
                mem[mem[64] + 64] = 2
                _2036 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_2036 + 32 len mem[_2036]])
                t = s % sub_c6784641[2].field_0
                continue 
            if 10^18 * sub_3a033644[5].field_512 / sub_3a033644[5].field_512 != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if coinPrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            require coinPrice
            if not coinPrice:
                if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] < sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                    revert with 0, 'SafeMath: addition overflow'
                sub_c7a354b7 -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                mem[32] = 161
                require sub_c6784641[2].field_0 - 1 < sub_c6784641[2].field_0
                require s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0 < sub_c6784641[2].field_0
                sub_c6784641[2][s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0].field_0 = sub_c6784641[2][sub_c6784641[2].field_0].field_0
                require sub_c6784641[2].field_0
                mem[0] = sha3(2, 161)
                sub_c6784641[2][sub_c6784641[2].field_0].field_0 = 0
                sub_c6784641[2].field_0--
                mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
                mem[mem[64] + 64] = 2
                _1900 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_1900 + 32 len mem[_1900]])
                t = s % sub_c6784641[2].field_0
                continue 
            if not sub_3a033644[2].field_512:
                if coinPrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require coinPrice
                if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0 / coinPrice:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] < sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0]
                if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                    revert with 0, 'SafeMath: addition overflow'
                sub_c7a354b7 = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                mem[32] = 161
                require sub_c6784641[2].field_0 - 1 < sub_c6784641[2].field_0
                require s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0 < sub_c6784641[2].field_0
                sub_c6784641[2][s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0].field_0 = sub_c6784641[2][sub_c6784641[2].field_0].field_0
                require sub_c6784641[2].field_0
                mem[0] = sha3(2, 161)
                sub_c6784641[2][sub_c6784641[2].field_0].field_0 = 0
                sub_c6784641[2].field_0--
                mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
                mem[mem[64] + 64] = 2
                _2032 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_2032 + 32 len mem[_2032]])
                t = s % sub_c6784641[2].field_0
                continue 
            if 10^18 * sub_3a033644[2].field_512 / sub_3a033644[2].field_512 != 10^18:
                revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if coinPrice <= 0:
                revert with 0, 'SafeMath: division by zero'
            require coinPrice
            if 10^18 * sub_3a033644[5].field_512 / coinPrice > 10^18 * sub_3a033644[2].field_512 / coinPrice:
                revert with 0, 'SafeMath: subtraction overflow'
            if (10^18 * sub_3a033644[2].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] < sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0]:
                revert with 0, 'SafeMath: addition overflow'
            sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0] = (10^18 * sub_3a033644[2].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[2][s + sha3(mem[128 len mem[96]]) % stor161[2].field_0].field_0]
            if (10^18 * sub_3a033644[2].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                revert with 0, 'SafeMath: addition overflow'
            sub_c7a354b7 = (10^18 * sub_3a033644[2].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
            mem[32] = 161
            require sub_c6784641[2].field_0 - 1 < sub_c6784641[2].field_0
            require s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0 < sub_c6784641[2].field_0
            sub_c6784641[2][s + sha3(mem[128 len mem[96]]) % sub_c6784641[2].field_0].field_0 = sub_c6784641[2][sub_c6784641[2].field_0].field_0
            require sub_c6784641[2].field_0
            mem[0] = sha3(2, 161)
            sub_c6784641[2][sub_c6784641[2].field_0].field_0 = 0
            sub_c6784641[2].field_0--
            mem[mem[64] + 32] = s + sha3(mem[128 len mem[96]])
            mem[mem[64] + 64] = 2
            _2055 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            idx = idx + 1
            s = sha3(mem[_2055 + 32 len mem[_2055]])
            t = s % sub_c6784641[2].field_0
            continue 
        _1377 = mem[64]
        mem[mem[64] + 32] = sha3(random)
        _1378 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        _1380 = sha3(mem[_1378 + 32 len mem[_1378]])
        if sub_c6784641[3].field_0 > sub_3a033644[3].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_3a033644[3].field_0 - sub_c6784641[3].field_0 >= sub_3a033644[3].field_256:
            mem[_1377 + 96] = sha3(mem[_1378 + 32 len mem[_1378]])
            mem[_1377 + 64] = 32
            mem[64] = _1377 + 128
            _1435 = sha3(mem[_1377 + 96])
            if sub_c6784641[4].field_0 > sub_3a033644[4].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_3a033644[4].field_0 - sub_c6784641[4].field_0 < sub_3a033644[4].field_256:
                mem[0] = 4
                mem[32] = 152
                if sub_3a033644[4].field_0 - sub_c6784641[4].field_0 > sub_3a033644[4].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = _1435
                t = 0
                while idx < sub_3a033644[4].field_256 - sub_3a033644[4].field_0 + sub_c6784641[4].field_0:
                    mem[0] = 4
                    if sub_c6784641[4].field_0 <= 0:
                        revert with 0, 'SafeMath: modulo by zero'
                    require sub_c6784641[4].field_0
                    require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                    mem[mem[64] + 32] = block.timestamp
                    emit 0xa0f614a7: s % sub_c6784641[4].field_0, block.timestamp, 4, sub_c6784641[4][s % sub_c6784641[4].field_0].field_0
                    stor6522.length++
                    storC38E[stor6522.length] = sub_c6784641[4][s % sub_c6784641[4].field_0].field_0
                    sub_f768e079[stor161[4][s % stor161[4].field_0].field_0] = 5
                    if not coinPrice:
                        if not coinPrice:
                            if sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s
                            mem[mem[64] + 64] = 4
                            _2952 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_2952 + 32 len mem[_2952]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if not sub_3a033644[4].field_512:
                            if coinPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require coinPrice
                            if 0 > 0 / coinPrice:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (0 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] += 0 / coinPrice
                            if (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_c7a354b7 += 0 / coinPrice
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s
                            mem[mem[64] + 64] = 4
                            _3116 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_3116 + 32 len mem[_3116]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if 10^18 * sub_3a033644[4].field_512 / sub_3a033644[4].field_512 != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 0 > 10^18 * sub_3a033644[4].field_512 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] += 10^18 * sub_3a033644[4].field_512 / coinPrice
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 += 10^18 * sub_3a033644[4].field_512 / coinPrice
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 4
                        _3153 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3153 + 32 len mem[_3153]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if not sub_3a033644[5].field_512:
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if not coinPrice:
                            if 0 / coinPrice > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -(0 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] -= 0 / coinPrice
                            if -(0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_c7a354b7 -= 0 / coinPrice
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s
                            mem[mem[64] + 64] = 4
                            _3112 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_3112 + 32 len mem[_3112]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if not sub_3a033644[4].field_512:
                            if coinPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require coinPrice
                            if 0 / coinPrice > 0 / coinPrice:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s
                            mem[mem[64] + 64] = 4
                            _3237 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_3237 + 32 len mem[_3237]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if 10^18 * sub_3a033644[4].field_512 / sub_3a033644[4].field_512 != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 0 / coinPrice > 10^18 * sub_3a033644[4].field_512 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 4
                        _3260 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3260 + 32 len mem[_3260]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if 10^18 * sub_3a033644[5].field_512 / sub_3a033644[5].field_512 != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if not coinPrice:
                        if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                        if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 4
                        _3147 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3147 + 32 len mem[_3147]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if not sub_3a033644[4].field_512:
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]
                        if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 4
                        _3256 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3256 + 32 len mem[_3256]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if 10^18 * sub_3a033644[4].field_512 / sub_3a033644[4].field_512 != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if 10^18 * sub_3a033644[5].field_512 / coinPrice > 10^18 * sub_3a033644[4].field_512 / coinPrice:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]
                    if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                    mem[32] = 161
                    require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                    require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                    sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                    require sub_c6784641[4].field_0
                    mem[0] = sha3(4, 161)
                    sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                    sub_c6784641[4].field_0--
                    mem[mem[64] + 32] = s
                    mem[mem[64] + 64] = 4
                    _3278 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_3278 + 32 len mem[_3278]])
                    t = s % sub_c6784641[4].field_0
                    continue 
        else:
            mem[0] = 3
            mem[32] = 152
            if sub_3a033644[3].field_0 - sub_c6784641[3].field_0 > sub_3a033644[3].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = _1380
            t = 0
            while idx < sub_3a033644[3].field_256 - sub_3a033644[3].field_0 + sub_c6784641[3].field_0:
                mem[0] = 3
                if sub_c6784641[3].field_0 <= 0:
                    revert with 0, 'SafeMath: modulo by zero'
                require sub_c6784641[3].field_0
                require s % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                mem[mem[64] + 32] = block.timestamp
                emit 0xa0f614a7: s % sub_c6784641[3].field_0, block.timestamp, 3, sub_c6784641[3][s % sub_c6784641[3].field_0].field_0
                stor6522.length++
                storC38E[stor6522.length] = sub_c6784641[3][s % sub_c6784641[3].field_0].field_0
                sub_f768e079[stor161[3][s % stor161[3].field_0].field_0] = 5
                if not coinPrice:
                    if not coinPrice:
                        if sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[32] = 161
                        require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                        require s % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                        sub_c6784641[3][s % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                        require sub_c6784641[3].field_0
                        mem[0] = sha3(3, 161)
                        sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                        sub_c6784641[3].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 3
                        _2962 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_2962 + 32 len mem[_2962]])
                        t = s % sub_c6784641[3].field_0
                        continue 
                    if not sub_3a033644[3].field_512:
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 0 > 0 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0 / coinPrice) + sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] += 0 / coinPrice
                        if (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 += 0 / coinPrice
                        mem[32] = 161
                        require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                        require s % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                        sub_c6784641[3][s % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                        require sub_c6784641[3].field_0
                        mem[0] = sha3(3, 161)
                        sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                        sub_c6784641[3].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 3
                        _3129 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3129 + 32 len mem[_3129]])
                        t = s % sub_c6784641[3].field_0
                        continue 
                    if 10^18 * sub_3a033644[3].field_512 / sub_3a033644[3].field_512 != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if 0 > 10^18 * sub_3a033644[3].field_512 / coinPrice:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10^18 * sub_3a033644[3].field_512 / coinPrice) + sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] += 10^18 * sub_3a033644[3].field_512 / coinPrice
                    if (10^18 * sub_3a033644[3].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 += 10^18 * sub_3a033644[3].field_512 / coinPrice
                    mem[32] = 161
                    require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                    require s % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                    sub_c6784641[3][s % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                    require sub_c6784641[3].field_0
                    mem[0] = sha3(3, 161)
                    sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                    sub_c6784641[3].field_0--
                    mem[mem[64] + 32] = s
                    mem[mem[64] + 64] = 3
                    _3167 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_3167 + 32 len mem[_3167]])
                    t = s % sub_c6784641[3].field_0
                    continue 
                if not sub_3a033644[5].field_512:
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if not coinPrice:
                        if 0 / coinPrice > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -(0 / coinPrice) + sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] -= 0 / coinPrice
                        if -(0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 -= 0 / coinPrice
                        mem[32] = 161
                        require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                        require s % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                        sub_c6784641[3][s % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                        require sub_c6784641[3].field_0
                        mem[0] = sha3(3, 161)
                        sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                        sub_c6784641[3].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 3
                        _3125 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3125 + 32 len mem[_3125]])
                        t = s % sub_c6784641[3].field_0
                        continue 
                    if not sub_3a033644[3].field_512:
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 0 / coinPrice > 0 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[32] = 161
                        require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                        require s % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                        sub_c6784641[3][s % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                        require sub_c6784641[3].field_0
                        mem[0] = sha3(3, 161)
                        sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                        sub_c6784641[3].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 3
                        _3244 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3244 + 32 len mem[_3244]])
                        t = s % sub_c6784641[3].field_0
                        continue 
                    if 10^18 * sub_3a033644[3].field_512 / sub_3a033644[3].field_512 != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if 0 / coinPrice > 10^18 * sub_3a033644[3].field_512 / coinPrice:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10^18 * sub_3a033644[3].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] = (10^18 * sub_3a033644[3].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0]
                    if (10^18 * sub_3a033644[3].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 = (10^18 * sub_3a033644[3].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7
                    mem[32] = 161
                    require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                    require s % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                    sub_c6784641[3][s % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                    require sub_c6784641[3].field_0
                    mem[0] = sha3(3, 161)
                    sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                    sub_c6784641[3].field_0--
                    mem[mem[64] + 32] = s
                    mem[mem[64] + 64] = 3
                    _3270 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_3270 + 32 len mem[_3270]])
                    t = s % sub_c6784641[3].field_0
                    continue 
                if 10^18 * sub_3a033644[5].field_512 / sub_3a033644[5].field_512 != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if coinPrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require coinPrice
                if not coinPrice:
                    if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                    if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                    mem[32] = 161
                    require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                    require s % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                    sub_c6784641[3][s % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                    require sub_c6784641[3].field_0
                    mem[0] = sha3(3, 161)
                    sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                    sub_c6784641[3].field_0--
                    mem[mem[64] + 32] = s
                    mem[mem[64] + 64] = 3
                    _3161 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_3161 + 32 len mem[_3161]])
                    t = s % sub_c6784641[3].field_0
                    continue 
                if not sub_3a033644[3].field_512:
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0 / coinPrice:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0]
                    if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                    mem[32] = 161
                    require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                    require s % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                    sub_c6784641[3][s % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                    require sub_c6784641[3].field_0
                    mem[0] = sha3(3, 161)
                    sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                    sub_c6784641[3].field_0--
                    mem[mem[64] + 32] = s
                    mem[mem[64] + 64] = 3
                    _3266 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_3266 + 32 len mem[_3266]])
                    t = s % sub_c6784641[3].field_0
                    continue 
                if 10^18 * sub_3a033644[3].field_512 / sub_3a033644[3].field_512 != 10^18:
                    revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if coinPrice <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require coinPrice
                if 10^18 * sub_3a033644[5].field_512 / coinPrice > 10^18 * sub_3a033644[3].field_512 / coinPrice:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (10^18 * sub_3a033644[3].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] < sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0] = (10^18 * sub_3a033644[3].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[3][s % stor161[3].field_0].field_0]
                if (10^18 * sub_3a033644[3].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                    revert with 0, 'SafeMath: addition overflow'
                sub_c7a354b7 = (10^18 * sub_3a033644[3].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                mem[32] = 161
                require sub_c6784641[3].field_0 - 1 < sub_c6784641[3].field_0
                require s % sub_c6784641[3].field_0 < sub_c6784641[3].field_0
                sub_c6784641[3][s % sub_c6784641[3].field_0].field_0 = sub_c6784641[3][sub_c6784641[3].field_0].field_0
                require sub_c6784641[3].field_0
                mem[0] = sha3(3, 161)
                sub_c6784641[3][sub_c6784641[3].field_0].field_0 = 0
                sub_c6784641[3].field_0--
                mem[mem[64] + 32] = s
                mem[mem[64] + 64] = 3
                _3283 = mem[64]
                mem[mem[64]] = 64
                mem[64] = mem[64] + 96
                idx = idx + 1
                s = sha3(mem[_3283 + 32 len mem[_3283]])
                t = s % sub_c6784641[3].field_0
                continue 
            mem[mem[64] + 32] = _1380
            _2696 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            _2698 = sha3(mem[_2696 + 32 len mem[_2696]])
            if sub_c6784641[4].field_0 > sub_3a033644[4].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_3a033644[4].field_0 - sub_c6784641[4].field_0 < sub_3a033644[4].field_256:
                mem[0] = 4
                mem[32] = 152
                if sub_3a033644[4].field_0 - sub_c6784641[4].field_0 > sub_3a033644[4].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = _2698
                t = 0
                while idx < sub_3a033644[4].field_256 - sub_3a033644[4].field_0 + sub_c6784641[4].field_0:
                    mem[0] = 4
                    if sub_c6784641[4].field_0 <= 0:
                        revert with 0, 'SafeMath: modulo by zero'
                    require sub_c6784641[4].field_0
                    require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                    mem[mem[64] + 32] = block.timestamp
                    emit 0xa0f614a7: s % sub_c6784641[4].field_0, block.timestamp, 4, sub_c6784641[4][s % sub_c6784641[4].field_0].field_0
                    stor6522.length++
                    storC38E[stor6522.length] = sub_c6784641[4][s % sub_c6784641[4].field_0].field_0
                    sub_f768e079[stor161[4][s % stor161[4].field_0].field_0] = 5
                    if not coinPrice:
                        if not coinPrice:
                            if sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s
                            mem[mem[64] + 64] = 4
                            _3514 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_3514 + 32 len mem[_3514]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if not sub_3a033644[4].field_512:
                            if coinPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require coinPrice
                            if 0 > 0 / coinPrice:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (0 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] += 0 / coinPrice
                            if (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_c7a354b7 += 0 / coinPrice
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s
                            mem[mem[64] + 64] = 4
                            _3568 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_3568 + 32 len mem[_3568]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if 10^18 * sub_3a033644[4].field_512 / sub_3a033644[4].field_512 != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 0 > 10^18 * sub_3a033644[4].field_512 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] += 10^18 * sub_3a033644[4].field_512 / coinPrice
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 += 10^18 * sub_3a033644[4].field_512 / coinPrice
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 4
                        _3580 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3580 + 32 len mem[_3580]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if not sub_3a033644[5].field_512:
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if not coinPrice:
                            if 0 / coinPrice > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if -(0 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] -= 0 / coinPrice
                            if -(0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_c7a354b7 -= 0 / coinPrice
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s
                            mem[mem[64] + 64] = 4
                            _3564 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_3564 + 32 len mem[_3564]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if not sub_3a033644[4].field_512:
                            if coinPrice <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require coinPrice
                            if 0 / coinPrice > 0 / coinPrice:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_c7a354b7 < sub_c7a354b7:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[32] = 161
                            require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                            require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                            sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                            require sub_c6784641[4].field_0
                            mem[0] = sha3(4, 161)
                            sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                            sub_c6784641[4].field_0--
                            mem[mem[64] + 32] = s
                            mem[mem[64] + 64] = 4
                            _3602 = mem[64]
                            mem[mem[64]] = 64
                            mem[64] = mem[64] + 96
                            idx = idx + 1
                            s = sha3(mem[_3602 + 32 len mem[_3602]])
                            t = s % sub_c6784641[4].field_0
                            continue 
                        if 10^18 * sub_3a033644[4].field_512 / sub_3a033644[4].field_512 != 10^18:
                            revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 0 / coinPrice > 10^18 * sub_3a033644[4].field_512 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]
                        if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (0 / coinPrice) + sub_c7a354b7
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 4
                        _3610 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3610 + 32 len mem[_3610]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if 10^18 * sub_3a033644[5].field_512 / sub_3a033644[5].field_512 != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if not coinPrice:
                        if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                        if -(10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 -= 10^18 * sub_3a033644[5].field_512 / coinPrice
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 4
                        _3574 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3574 + 32 len mem[_3574]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if not sub_3a033644[4].field_512:
                        if coinPrice <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require coinPrice
                        if 10^18 * sub_3a033644[5].field_512 / coinPrice > 0 / coinPrice:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]
                        if (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_c7a354b7 = (0 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                        mem[32] = 161
                        require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                        require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                        sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                        require sub_c6784641[4].field_0
                        mem[0] = sha3(4, 161)
                        sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                        sub_c6784641[4].field_0--
                        mem[mem[64] + 32] = s
                        mem[mem[64] + 64] = 4
                        _3606 = mem[64]
                        mem[mem[64]] = 64
                        mem[64] = mem[64] + 96
                        idx = idx + 1
                        s = sha3(mem[_3606 + 32 len mem[_3606]])
                        t = s % sub_c6784641[4].field_0
                        continue 
                    if 10^18 * sub_3a033644[4].field_512 / sub_3a033644[4].field_512 != 10^18:
                        revert with 0, 32, 33, 0x72536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if coinPrice <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require coinPrice
                    if 10^18 * sub_3a033644[5].field_512 / coinPrice > 10^18 * sub_3a033644[4].field_512 / coinPrice:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] < sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0] = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_e80957c4[stor161[4][s % stor161[4].field_0].field_0]
                    if (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7 < sub_c7a354b7:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_c7a354b7 = (10^18 * sub_3a033644[4].field_512 / coinPrice) - (10^18 * sub_3a033644[5].field_512 / coinPrice) + sub_c7a354b7
                    mem[32] = 161
                    require sub_c6784641[4].field_0 - 1 < sub_c6784641[4].field_0
                    require s % sub_c6784641[4].field_0 < sub_c6784641[4].field_0
                    sub_c6784641[4][s % sub_c6784641[4].field_0].field_0 = sub_c6784641[4][sub_c6784641[4].field_0].field_0
                    require sub_c6784641[4].field_0
                    mem[0] = sha3(4, 161)
                    sub_c6784641[4][sub_c6784641[4].field_0].field_0 = 0
                    sub_c6784641[4].field_0--
                    mem[mem[64] + 32] = s
                    mem[mem[64] + 64] = 4
                    _3614 = mem[64]
                    mem[mem[64]] = 64
                    mem[64] = mem[64] + 96
                    idx = idx + 1
                    s = sha3(mem[_3614 + 32 len mem[_3614]])
                    t = s % sub_c6784641[4].field_0
                    continue 
    return 1
}



}
