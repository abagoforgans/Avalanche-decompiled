contract main {




// =====================  Runtime code  =====================


#
#  - sub_e2415548(?)
#
const sub_1dcffd87(?) = 10000

const sub_68aab357(?) = 10000


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint8 paused;
uint256 stor151;
address sub_b870029cAddress;
array of address sub_7494bc56;
mapping of uint256 sub_3faeae6c;
address sub_30144f96Address;
address sub_4319ebe4Address;
address sub_66a57941Address;
uint256 sub_f2c9e170;
address sub_df1ac905Address;
array of address sub_5b5ce3a0;
mapping of uint256 sub_6a9fa0c2;
array of uint256 productList;
mapping of uint256 sub_e4152466;
mapping of uint256 sub_32aabf2d;
uint256 coverAmtPPMaxRatio;
uint256 sub_6c6f4542;
address sub_59ed9a3aAddress;
mapping of uint256 sub_5442c9c5;
uint256 sub_9a110852;
address baseTokenAddress;
uint256 sub_fe1df86e;
mapping of uint256 sub_4fe8bd8c;
address exchangeRateAddress;
mapping of uint256 sub_7e035c26;
array of address stor30232785535072749652971633506012447853310042529756156461386917081222683561697;
array of address stor47661935505114017385622961611032274432992609817870001481508015138701782973667;
array of uint256 stor65748345884687279104705167928541120391246617999136278198548921689436223979942;

function sub_2a41a2b8(?) payable {
    return coverAmtPPMaxRatio
}

function sub_30144f96(?) payable {
    return sub_30144f96Address
}

function sub_32aabf2d(?) payable {
    require calldata.size - 4 >= 64
    return sub_32aabf2d[arg1][arg2]
}

function exchangeRate() payable {
    return exchangeRateAddress
}

function sub_3faeae6c(?) payable {
    require calldata.size - 4 >= 32
    return sub_3faeae6c[arg1]
}

function sub_4319ebe4(?) payable {
    return sub_4319ebe4Address
}

function sub_4fe8bd8c(?) payable {
    require calldata.size - 4 >= 32
    return sub_4fe8bd8c[arg1]
}

function productList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < productList.length
    return productList[arg1]
}

function sub_5442c9c5(?) payable {
    require calldata.size - 4 >= 32
    return sub_5442c9c5[arg1]
}

function sub_59ed9a3a(?) payable {
    return sub_59ed9a3aAddress
}

function sub_5b5ce3a0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_5b5ce3a0.length
    return sub_5b5ce3a0[arg1]
}

function paused() payable {
    return bool(paused)
}

function sub_66a57941(?) payable {
    return sub_66a57941Address
}

function sub_6a9fa0c2(?) payable {
    require calldata.size - 4 >= 32
    return sub_6a9fa0c2[arg1]
}

function sub_6c6f4542(?) payable {
    return sub_6c6f4542
}

function sub_7494bc56(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_7494bc56.length
    return sub_7494bc56[arg1]
}

function sub_7e035c26(?) payable {
    require calldata.size - 4 >= 32
    return sub_7e035c26[arg1]
}

function owner() payable {
    return owner
}

function getBaseToken() payable {
    return baseTokenAddress
}

function sub_9a110852(?) payable {
    return sub_9a110852
}

function sub_b870029c(?) payable {
    return sub_b870029cAddress
}

function baseToken() payable {
    return baseTokenAddress
}

function sub_df1ac905(?) payable {
    return sub_df1ac905Address
}

function getCoverAmtPPMaxRatio() payable {
    return coverAmtPPMaxRatio
}

function sub_e4152466(?) payable {
    require calldata.size - 4 >= 32
    return sub_e4152466[arg1]
}

function sub_f2c9e170(?) payable {
    return sub_f2c9e170
}

function sub_fe1df86e(?) payable {
    return sub_fe1df86e
}

function _fallback() payable {
    revert
}

function hasTokenInStakersPool(address arg1) payable {
    require calldata.size - 4 >= 32
    return (1 == sub_3faeae6c[address(arg1)])
}

function sub_40fb799e(?) payable {
    require calldata.size - 4 >= 32
    if sub_7e035c26[arg1]:
        return sub_7e035c26[arg1]
    return coverAmtPPMaxRatio
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addStakersPoolData(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'ASPD:1'
    if 1 == sub_3faeae6c[address(arg1)]:
        revert with 0, 'ASPD:2'
    sub_3faeae6c[address(arg1)] = 1
    sub_7494bc56.length++
    stor42D7[stor202.length] = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setData(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    coverAmtPPMaxRatio = arg1
    sub_f2c9e170 = arg2
}

function removeStakersPoolDataByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= sub_7494bc56.length:
        revert with 0, 'RSPDBI:1'
    sub_3faeae6c[stor202[arg1]] = 0
    if arg1 != sub_7494bc56.length - 1:
        require sub_7494bc56.length - 1 < sub_7494bc56.length
        require arg1 < sub_7494bc56.length
        sub_7494bc56[arg1] = sub_7494bc56[sub_7494bc56.length]
    require sub_7494bc56.length
    sub_7494bc56[sub_7494bc56.length] = 0
    sub_7494bc56.length--
}

function updateCap2CapacityRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if arg1 <= 0:
        revert with 0, 'UPDC2CR:1'
    sub_9a110852 = arg1
    emit UpdateCap2CapacityRatioEvent(arg1);
}

function updateMT(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if baseTokenAddress != arg1:
        revert with 0, 'UPDMT:1'
    if arg2 <= 0:
        revert with 0, 'UPDMT:2'
    sub_fe1df86e = arg2
    emit UpdateMTEvent(arg2, arg1);
}

function setup(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'S:1'
    if not arg2:
        revert with 0, 'S:2'
    if not arg3:
        revert with 0, 'S:3'
    if not arg4:
        revert with 0, 'S:4'
    if not arg5:
        revert with 0, 'S:5'
    if not arg6:
        revert with 0, 'S:6'
    sub_b870029cAddress = arg1
    baseTokenAddress = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    sub_59ed9a3aAddress = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee
    sub_4319ebe4Address = arg2
    sub_66a57941Address = arg3
    sub_df1ac905Address = arg4
    sub_30144f96Address = arg5
    exchangeRateAddress = arg6
}

function buyCoverPerProduct(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not sub_e4152466[arg1]:
        productList.length++
        stor915C[stor211.length] = arg1
        sub_e4152466[arg1] = 1
    if not sub_6a9fa0c2[address(arg3)]:
        sub_5b5ce3a0.length++
        stor695F[stor209.length] = arg3
        sub_6a9fa0c2[address(arg3)] = 1
    if arg2 + sub_32aabf2d[arg1][address(arg3)] < sub_32aabf2d[arg1][address(arg3)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_32aabf2d[arg1][address(arg3)] += arg2
    if arg2 + sub_5442c9c5[address(arg3)] < sub_5442c9c5[address(arg3)]:
        revert with 0, 'SafeMath: addition overflow'
    sub_5442c9c5[address(arg3)] += arg2
}

function getTVLinBaseToken() payable {
    idx = 0
    s = 0
    while idx < sub_7494bc56.length:
        mem[0] = 202
        mem[100] = sub_7494bc56[idx]
        require ext_code.size(sub_30144f96Address)
        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                gas gas_remaining wei
               args sub_7494bc56[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if baseTokenAddress != sub_7494bc56[idx]:
            if ext_call.return_data[0]:
                mem[100] = sub_7494bc56[idx]
                mem[132] = baseTokenAddress
                mem[164] = ext_call.return_data[0]
                require ext_code.size(exchangeRateAddress)
                staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args sub_7494bc56[idx], baseTokenAddress, ext_call.return_data[0]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return baseTokenAddress, s
}

function getCoverAmtPPInBaseToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < sub_5b5ce3a0.length:
        mem[0] = sub_5b5ce3a0[idx]
        mem[32] = sha3(arg1, 213)
        if baseTokenAddress == sub_5b5ce3a0[idx]:
            if sub_32aabf2d[arg1][stor209[idx]] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = sub_32aabf2d[arg1][stor209[idx]] + s
            continue 
        if not sub_32aabf2d[arg1][stor209[idx]]:
            if sub_32aabf2d[arg1][stor209[idx]] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = sub_32aabf2d[arg1][stor209[idx]] + s
            continue 
        mem[100] = sub_5b5ce3a0[idx]
        mem[132] = baseTokenAddress
        mem[164] = sub_32aabf2d[arg1][stor209[idx]]
        require ext_code.size(exchangeRateAddress)
        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args sub_5b5ce3a0[idx], baseTokenAddress, sub_32aabf2d[arg1][stor209[idx]]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return s
}

function sub_30dd85a5(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 164] = this.address
    mem[(32 * arg3.length) + (32 * arg4.length) + 196] = msg.sender
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
    if not arg1:
        revert with 0, 'UPDSCR:1'
    if arg2 <= 0:
        revert with 0, 'UPDSCR:2'
    if arg3.length != arg4.length:
        revert with 0, 'UPDSCR:3'
    sub_59ed9a3aAddress = arg1
    sub_6c6f4542 = arg2
    idx = 0
    while idx < arg3.length:
        require idx < arg4.length
        require idx < arg3.length
        if mem[(32 * idx) + (32 * arg3.length) + 160] > sub_5442c9c5[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'SafeMath: subtraction overflow'
        require idx < arg3.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 217
        sub_5442c9c5[mem[(32 * idx) + 140 len 20]] -= mem[(32 * idx) + (32 * arg3.length) + 160]
        idx = idx + 1
        continue 
    emit UpdateSCREvent(arg2, arg1);
}

function getStakingPercentageX10000() payable {
    idx = 0
    s = 0
    while idx < sub_7494bc56.length:
        mem[0] = 202
        mem[100] = sub_7494bc56[idx]
        require ext_code.size(sub_30144f96Address)
        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                gas gas_remaining wei
               args sub_7494bc56[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if baseTokenAddress != sub_7494bc56[idx]:
            if ext_call.return_data[0]:
                mem[100] = sub_7494bc56[idx]
                mem[132] = baseTokenAddress
                mem[164] = ext_call.return_data[0]
                require ext_code.size(exchangeRateAddress)
                staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args sub_7494bc56[idx], baseTokenAddress, ext_call.return_data[0]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    if not s:
        if sub_fe1df86e <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_fe1df86e:
            return (0 / sub_fe1df86e)
    else:
        if 10000 * s / s != 10000:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if sub_fe1df86e <= 0:
            revert with 0, 'SafeMath: division by zero'
        if sub_fe1df86e:
            return (10000 * s / sub_fe1df86e)
    ('iszero', ('stor', ('name', 'sub_fe1df86e', 220)))
    revert
}

function sub_ab8d3d1f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 164] = this.address
    mem[(32 * arg1.length) + (32 * arg2.length) + 196] = msg.sender
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if arg1.length != arg2.length:
            revert with 0, 'UPDCAPPR:1'
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _41 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _45 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 223
            if sub_7e035c26[mem[(32 * idx) + 128]] != mem[(32 * idx) + (32 * arg1.length) + 160]:
                mem[32] = 223
                _49 = sha3(mem[(32 * idx) + 128], 223)
                mem[mem[64]] = mem[(32 * idx) + 128]
                mem[mem[64] + 32] = stor[_49]
                mem[mem[64] + 64] = _45
                emit 0x58f36977: mem[mem[64]], stor[_49], _45
                mem[0] = _41
                mem[32] = 223
                sub_7e035c26[_41] = _45
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
        if arg1.length != arg2.length:
            revert with 0, 'UPDCAPPR:1'
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _43 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + 128]
            _47 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 223
            if sub_7e035c26[mem[(32 * idx) + 128]] != mem[(32 * idx) + (32 * arg1.length) + 160]:
                mem[32] = 223
                _53 = sha3(mem[(32 * idx) + 128], 223)
                mem[mem[64]] = mem[(32 * idx) + 128]
                mem[mem[64] + 32] = stor[_53]
                mem[mem[64] + 64] = _47
                emit 0x58f36977: mem[mem[64]], stor[_53], _47
                mem[0] = _43
                mem[32] = 223
                sub_7e035c26[_43] = _47
            idx = idx + 1
            continue 
}

function sub_07d5c697(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[64] = (32 * arg3.length) + (32 * arg4.length) + 160
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg3.length) + (32 * arg4.length) + 164] = this.address
    mem[(32 * arg3.length) + (32 * arg4.length) + 196] = msg.sender
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not arg1:
            revert with 0, 'UPDECAMT:1'
        if arg3.length <= 0:
            revert with 0, 'UPDECAMT:2'
        if arg3.length != arg4.length:
            revert with 0, 'UPDECAMT:3'
        if arg2 <= sub_4fe8bd8c[address(arg1)]:
            revert with 0, 'UPDECAMT:4'
        sub_4fe8bd8c[address(arg1)] = arg2
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _65 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _69 = mem[(32 * idx) + (32 * arg3.length) + 160]
            if mem[(32 * idx) + (32 * arg3.length) + 160] > sub_32aabf2d[mem[(32 * idx) + 128]][address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 213)
            sub_32aabf2d[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + (32 * arg3.length) + 160]
            mem[mem[64]] = arg2
            mem[mem[64] + 32] = _65
            mem[mem[64] + 64] = _69
            emit UpdateExpiredCoverAmountEvent(arg2, _65, _69, arg1);
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
        if not arg1:
            revert with 0, 'UPDECAMT:1'
        if arg3.length <= 0:
            revert with 0, 'UPDECAMT:2'
        if arg3.length != arg4.length:
            revert with 0, 'UPDECAMT:3'
        if arg2 <= sub_4fe8bd8c[address(arg1)]:
            revert with 0, 'UPDECAMT:4'
        sub_4fe8bd8c[address(arg1)] = arg2
        idx = 0
        while idx < arg3.length:
            require idx < mem[96]
            _67 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg3.length) + 128]
            _72 = mem[(32 * idx) + (32 * arg3.length) + 160]
            if mem[(32 * idx) + (32 * arg3.length) + 160] > sub_32aabf2d[mem[(32 * idx) + 128]][address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 213)
            sub_32aabf2d[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + (32 * arg3.length) + 160]
            mem[mem[64]] = arg2
            mem[mem[64] + 32] = _67
            mem[mem[64] + 64] = _72
            emit UpdateExpiredCoverAmountEvent(arg2, _67, _72, arg1);
            idx = idx + 1
            continue 
}

function initializeCapitalPool() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
        paused = 0
        stor151 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
            paused = 0
            stor151 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
                paused = 0
                stor151 = 1
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                    paused = 0
                    stor151 = 1
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
                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        paused = 0
                        stor151 = 1
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
                                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            paused = 0
                            stor151 = 1
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            if ext_code.size(this.address):
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                46,
                                                0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                mem[210 len 18]
                            if uint8(stor0.field_8):
                                paused = 0
                                stor151 = 1
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
                                                    0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                    mem[210 len 18]
                                if uint8(stor0.field_8):
                                    paused = 0
                                    stor151 = 1
                                else:
                                    uint8(stor0.field_0) = 1
                                    uint8(stor0.field_8) = 1
                                    Mask(248, 0, stor0.field_8) = 0
                                    paused = 0
                                    uint8(stor0.field_8) = 0
                                    uint8(stor0.field_8) = 0
                                    if ext_code.size(this.address):
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        46,
                                                        0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                        mem[210 len 18]
                                    if uint8(stor0.field_8):
                                        stor151 = 1
                                    else:
                                        uint8(stor0.field_0) = 1
                                        uint8(stor0.field_8) = 1
                                        Mask(248, 0, stor0.field_8) = 0
                                        if ext_code.size(this.address):
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            46,
                                                            0x73496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                                            mem[210 len 18]
                                        if uint8(stor0.field_8):
                                            stor151 = 1
                                        else:
                                            uint8(stor0.field_0) = 1
                                            uint8(stor0.field_8) = 1
                                            Mask(248, 0, stor0.field_8) = 0
                                            stor151 = 1
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
                                            uint8(stor0.field_8) = 0
}

function getCapacityInfo() payable {
    idx = 0
    s = 0
    while idx < sub_7494bc56.length:
        mem[0] = 202
        mem[100] = sub_7494bc56[idx]
        require ext_code.size(sub_30144f96Address)
        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                gas gas_remaining wei
               args sub_7494bc56[idx]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if baseTokenAddress != sub_7494bc56[idx]:
            if ext_call.return_data[0]:
                mem[100] = sub_7494bc56[idx]
                mem[132] = baseTokenAddress
                mem[164] = ext_call.return_data[0]
                require ext_code.size(exchangeRateAddress)
                staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args sub_7494bc56[idx], baseTokenAddress, ext_call.return_data[0]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    if baseTokenAddress == sub_59ed9a3aAddress:
        idx = 0
        t = 0
        while idx < sub_5b5ce3a0.length:
            mem[0] = sub_5b5ce3a0[idx]
            mem[32] = 217
            if baseTokenAddress == sub_5b5ce3a0[idx]:
                if sub_5442c9c5[stor209[idx]] + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                t = sub_5442c9c5[stor209[idx]] + t
                continue 
            if not sub_5442c9c5[stor209[idx]]:
                if sub_5442c9c5[stor209[idx]] + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                t = sub_5442c9c5[stor209[idx]] + t
                continue 
            mem[100] = sub_5b5ce3a0[idx]
            mem[132] = baseTokenAddress
            mem[164] = sub_5442c9c5[stor209[idx]]
            require ext_code.size(exchangeRateAddress)
            staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + t < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = ext_call.return_data[0] + t
            continue 
        if not t:
            if sub_9a110852 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9a110852
            if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                revert with 0, 'SafeMath: addition overflow'
            if s <= (0 / sub_9a110852) + sub_6c6f4542:
                if t + sub_6c6f4542 < sub_6c6f4542:
                    revert with 0, 'SafeMath: addition overflow'
                return 0, t + sub_6c6f4542
        else:
            if 10000 * t / t != 10000:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if sub_9a110852 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9a110852
            if (10000 * t / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                revert with 0, 'SafeMath: addition overflow'
            if s <= (10000 * t / sub_9a110852) + sub_6c6f4542:
                if t + sub_6c6f4542 < sub_6c6f4542:
                    revert with 0, 'SafeMath: addition overflow'
                return 0, t + sub_6c6f4542
        if sub_6c6f4542 > s:
            revert with 0, 'SafeMath: subtraction overflow'
        if not s - sub_6c6f4542:
            if t > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_6c6f4542 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return -t, sub_6c6f4542
        if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
            revert with 0, 'SafeMath: addition overflow'
        return ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t, 
               sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000)
    if not sub_6c6f4542:
        idx = 0
        t = 0
        while idx < sub_5b5ce3a0.length:
            mem[0] = sub_5b5ce3a0[idx]
            mem[32] = 217
            if baseTokenAddress == sub_5b5ce3a0[idx]:
                if sub_5442c9c5[stor209[idx]] + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                t = sub_5442c9c5[stor209[idx]] + t
                continue 
            if not sub_5442c9c5[stor209[idx]]:
                if sub_5442c9c5[stor209[idx]] + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                t = sub_5442c9c5[stor209[idx]] + t
                continue 
            mem[100] = sub_5b5ce3a0[idx]
            mem[132] = baseTokenAddress
            mem[164] = sub_5442c9c5[stor209[idx]]
            require ext_code.size(exchangeRateAddress)
            staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + t < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = ext_call.return_data[0] + t
            continue 
        if not t:
            if sub_9a110852 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9a110852
            if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                revert with 0, 'SafeMath: addition overflow'
            if s <= (0 / sub_9a110852) + sub_6c6f4542:
                if t + sub_6c6f4542 < sub_6c6f4542:
                    revert with 0, 'SafeMath: addition overflow'
                return 0, t + sub_6c6f4542
        else:
            if 10000 * t / t != 10000:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
            if sub_9a110852 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require sub_9a110852
            if (10000 * t / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                revert with 0, 'SafeMath: addition overflow'
            if s <= (10000 * t / sub_9a110852) + sub_6c6f4542:
                if t + sub_6c6f4542 < sub_6c6f4542:
                    revert with 0, 'SafeMath: addition overflow'
                return 0, t + sub_6c6f4542
        if sub_6c6f4542 > s:
            revert with 0, 'SafeMath: subtraction overflow'
        if not s - sub_6c6f4542:
            if t > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if sub_6c6f4542 < 0:
                revert with 0, 'SafeMath: addition overflow'
            return -t, sub_6c6f4542
        if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
            revert with 0, 'SafeMath: addition overflow'
        return ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t, 
               sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000)
    require ext_code.size(exchangeRateAddress)
    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
            gas gas_remaining wei
           args sub_59ed9a3aAddress, baseTokenAddress, sub_6c6f4542
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    t = 0
    while idx < sub_5b5ce3a0.length:
        mem[0] = sub_5b5ce3a0[idx]
        mem[32] = 217
        if baseTokenAddress == sub_5b5ce3a0[idx]:
            if sub_5442c9c5[stor209[idx]] + t < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = sub_5442c9c5[stor209[idx]] + t
            continue 
        if not sub_5442c9c5[stor209[idx]]:
            if sub_5442c9c5[stor209[idx]] + t < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = sub_5442c9c5[stor209[idx]] + t
            continue 
        mem[100] = sub_5b5ce3a0[idx]
        mem[132] = baseTokenAddress
        mem[164] = sub_5442c9c5[stor209[idx]]
        require ext_code.size(exchangeRateAddress)
        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + t < t:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        t = ext_call.return_data[0] + t
        continue 
    if not t:
        if sub_9a110852 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_9a110852
        if (0 / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if s <= (0 / sub_9a110852) + ext_call.return_data[0]:
            if t + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return 0, t + ext_call.return_data[0]
    else:
        if 10000 * t / t != 10000:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
        if sub_9a110852 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require sub_9a110852
        if (10000 * t / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        if s <= (10000 * t / sub_9a110852) + ext_call.return_data[0]:
            if t + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return 0, t + ext_call.return_data[0]
    if ext_call.return_data[0] > s:
        revert with 0, 'SafeMath: subtraction overflow'
    if not s - ext_call.return_data[0]:
        if t > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        return -t, ext_call.return_data[0]
    if (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / s - ext_call.return_data[0] != sub_9a110852:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
    if t > (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] + ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
        revert with 0, 'SafeMath: addition overflow'
    return ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - t, 
           ext_call.return_data[0] + ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000)
}

function canBuyCover(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if baseTokenAddress == arg2:
        idx = 0
        s = 0
        while idx < sub_7494bc56.length:
            mem[0] = 202
            mem[100] = sub_7494bc56[idx]
            require ext_code.size(sub_30144f96Address)
            staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                    gas gas_remaining wei
                   args sub_7494bc56[idx]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if baseTokenAddress != sub_7494bc56[idx]:
                if ext_call.return_data[0]:
                    mem[100] = sub_7494bc56[idx]
                    mem[132] = baseTokenAddress
                    mem[164] = ext_call.return_data[0]
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_7494bc56[idx], baseTokenAddress, ext_call.return_data[0]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            if ext_call.return_data[0] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        if baseTokenAddress == sub_59ed9a3aAddress:
            idx = 0
            t = 0
            while idx < sub_5b5ce3a0.length:
                mem[0] = sub_5b5ce3a0[idx]
                mem[32] = 217
                if baseTokenAddress == sub_5b5ce3a0[idx]:
                    if sub_5442c9c5[stor209[idx]] + t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    t = sub_5442c9c5[stor209[idx]] + t
                    continue 
                if not sub_5442c9c5[stor209[idx]]:
                    if sub_5442c9c5[stor209[idx]] + t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    t = sub_5442c9c5[stor209[idx]] + t
                    continue 
                mem[100] = sub_5b5ce3a0[idx]
                mem[132] = baseTokenAddress
                mem[164] = sub_5442c9c5[stor209[idx]]
                require ext_code.size(exchangeRateAddress)
                staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                t = ext_call.return_data[0] + t
                continue 
            if not t:
                if sub_9a110852 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_9a110852
                if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                    revert with 0, 'SafeMath: addition overflow'
                if s <= (0 / sub_9a110852) + sub_6c6f4542:
                    if t + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 <= 0:
                        return 1
                else:
                    if sub_6c6f4542 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not s - sub_6c6f4542:
                        if t > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_6c6f4542 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 <= -t:
                            return 1
                    else:
                        if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 <= ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t:
                            return 1
            else:
                if 10000 * t / t != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if sub_9a110852 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_9a110852
                if (10000 * t / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                    revert with 0, 'SafeMath: addition overflow'
                if s <= (10000 * t / sub_9a110852) + sub_6c6f4542:
                    if t + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 <= 0:
                        return 1
                else:
                    if sub_6c6f4542 > s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not s - sub_6c6f4542:
                        if t > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_6c6f4542 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 <= -t:
                            return 1
                    else:
                        if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 <= ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t:
                            return 1
        else:
            if not sub_6c6f4542:
                idx = 0
                t = 0
                while idx < sub_5b5ce3a0.length:
                    mem[0] = sub_5b5ce3a0[idx]
                    mem[32] = 217
                    if baseTokenAddress == sub_5b5ce3a0[idx]:
                        if sub_5442c9c5[stor209[idx]] + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        t = sub_5442c9c5[stor209[idx]] + t
                        continue 
                    if not sub_5442c9c5[stor209[idx]]:
                        if sub_5442c9c5[stor209[idx]] + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        t = sub_5442c9c5[stor209[idx]] + t
                        continue 
                    mem[100] = sub_5b5ce3a0[idx]
                    mem[132] = baseTokenAddress
                    mem[164] = sub_5442c9c5[stor209[idx]]
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    t = ext_call.return_data[0] + t
                    continue 
                if not t:
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if s <= (0 / sub_9a110852) + sub_6c6f4542:
                        if t + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 <= 0:
                            return 1
                    else:
                        if sub_6c6f4542 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not s - sub_6c6f4542:
                            if t > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= -t:
                                return 1
                        else:
                            if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t:
                                return 1
                else:
                    if 10000 * t / t != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (10000 * t / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if s <= (10000 * t / sub_9a110852) + sub_6c6f4542:
                        if t + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 <= 0:
                            return 1
                    else:
                        if sub_6c6f4542 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not s - sub_6c6f4542:
                            if t > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= -t:
                                return 1
                        else:
                            if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t:
                                return 1
            else:
                require ext_code.size(exchangeRateAddress)
                staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args sub_59ed9a3aAddress, baseTokenAddress, sub_6c6f4542
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                t = 0
                while idx < sub_5b5ce3a0.length:
                    mem[0] = sub_5b5ce3a0[idx]
                    mem[32] = 217
                    if baseTokenAddress == sub_5b5ce3a0[idx]:
                        if sub_5442c9c5[stor209[idx]] + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        t = sub_5442c9c5[stor209[idx]] + t
                        continue 
                    if not sub_5442c9c5[stor209[idx]]:
                        if sub_5442c9c5[stor209[idx]] + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        t = sub_5442c9c5[stor209[idx]] + t
                        continue 
                    mem[100] = sub_5b5ce3a0[idx]
                    mem[132] = baseTokenAddress
                    mem[164] = sub_5442c9c5[stor209[idx]]
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    t = ext_call.return_data[0] + t
                    continue 
                if not t:
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (0 / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if s <= (0 / sub_9a110852) + ext_call.return_data[0]:
                        if t + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 <= 0:
                            return 1
                    else:
                        if ext_call.return_data[0] > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not s - ext_call.return_data[0]:
                            if t > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= -t:
                                return 1
                        else:
                            if (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / s - ext_call.return_data[0] != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if t > (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] + ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - t:
                                return 1
                else:
                    if 10000 * t / t != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (10000 * t / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if s <= (10000 * t / sub_9a110852) + ext_call.return_data[0]:
                        if t + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 <= 0:
                            return 1
                    else:
                        if ext_call.return_data[0] > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not s - ext_call.return_data[0]:
                            if t > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= -t:
                                return 1
                        else:
                            if (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / s - ext_call.return_data[0] != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if t > (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] + ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - t:
                                return 1
    else:
        if not arg1:
            idx = 0
            s = 0
            while idx < sub_7494bc56.length:
                mem[0] = 202
                mem[100] = sub_7494bc56[idx]
                require ext_code.size(sub_30144f96Address)
                staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                        gas gas_remaining wei
                       args sub_7494bc56[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if baseTokenAddress != sub_7494bc56[idx]:
                    if ext_call.return_data[0]:
                        mem[100] = sub_7494bc56[idx]
                        mem[132] = baseTokenAddress
                        mem[164] = ext_call.return_data[0]
                        require ext_code.size(exchangeRateAddress)
                        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args sub_7494bc56[idx], baseTokenAddress, ext_call.return_data[0]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if ext_call.return_data[0] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            if baseTokenAddress == sub_59ed9a3aAddress:
                idx = 0
                t = 0
                while idx < sub_5b5ce3a0.length:
                    mem[0] = sub_5b5ce3a0[idx]
                    mem[32] = 217
                    if baseTokenAddress == sub_5b5ce3a0[idx]:
                        if sub_5442c9c5[stor209[idx]] + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        t = sub_5442c9c5[stor209[idx]] + t
                        continue 
                    if not sub_5442c9c5[stor209[idx]]:
                        if sub_5442c9c5[stor209[idx]] + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        t = sub_5442c9c5[stor209[idx]] + t
                        continue 
                    mem[100] = sub_5b5ce3a0[idx]
                    mem[132] = baseTokenAddress
                    mem[164] = sub_5442c9c5[stor209[idx]]
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    t = ext_call.return_data[0] + t
                    continue 
                if not t:
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if s <= (0 / sub_9a110852) + sub_6c6f4542:
                        if t + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 <= 0:
                            return 1
                    else:
                        if sub_6c6f4542 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not s - sub_6c6f4542:
                            if t > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= -t:
                                return 1
                        else:
                            if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t:
                                return 1
                else:
                    if 10000 * t / t != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (10000 * t / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if s <= (10000 * t / sub_9a110852) + sub_6c6f4542:
                        if t + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg1 <= 0:
                            return 1
                    else:
                        if sub_6c6f4542 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not s - sub_6c6f4542:
                            if t > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= -t:
                                return 1
                        else:
                            if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t:
                                return 1
            else:
                if not sub_6c6f4542:
                    idx = 0
                    t = 0
                    while idx < sub_5b5ce3a0.length:
                        mem[0] = sub_5b5ce3a0[idx]
                        mem[32] = 217
                        if baseTokenAddress == sub_5b5ce3a0[idx]:
                            if sub_5442c9c5[stor209[idx]] + t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            t = sub_5442c9c5[stor209[idx]] + t
                            continue 
                        if not sub_5442c9c5[stor209[idx]]:
                            if sub_5442c9c5[stor209[idx]] + t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            t = sub_5442c9c5[stor209[idx]] + t
                            continue 
                        mem[100] = sub_5b5ce3a0[idx]
                        mem[132] = baseTokenAddress
                        mem[164] = sub_5442c9c5[stor209[idx]]
                        require ext_code.size(exchangeRateAddress)
                        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        t = ext_call.return_data[0] + t
                        continue 
                    if not t:
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if s <= (0 / sub_9a110852) + sub_6c6f4542:
                            if t + sub_6c6f4542 < sub_6c6f4542:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= 0:
                                return 1
                        else:
                            if sub_6c6f4542 > s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not s - sub_6c6f4542:
                                if t > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg1 <= -t:
                                    return 1
                            else:
                                if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg1 <= ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t:
                                    return 1
                    else:
                        if 10000 * t / t != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (10000 * t / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if s <= (10000 * t / sub_9a110852) + sub_6c6f4542:
                            if t + sub_6c6f4542 < sub_6c6f4542:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= 0:
                                return 1
                        else:
                            if sub_6c6f4542 > s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not s - sub_6c6f4542:
                                if t > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg1 <= -t:
                                    return 1
                            else:
                                if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg1 <= ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t:
                                    return 1
                else:
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_59ed9a3aAddress, baseTokenAddress, sub_6c6f4542
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    t = 0
                    while idx < sub_5b5ce3a0.length:
                        mem[0] = sub_5b5ce3a0[idx]
                        mem[32] = 217
                        if baseTokenAddress == sub_5b5ce3a0[idx]:
                            if sub_5442c9c5[stor209[idx]] + t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            t = sub_5442c9c5[stor209[idx]] + t
                            continue 
                        if not sub_5442c9c5[stor209[idx]]:
                            if sub_5442c9c5[stor209[idx]] + t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            t = sub_5442c9c5[stor209[idx]] + t
                            continue 
                        mem[100] = sub_5b5ce3a0[idx]
                        mem[132] = baseTokenAddress
                        mem[164] = sub_5442c9c5[stor209[idx]]
                        require ext_code.size(exchangeRateAddress)
                        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        t = ext_call.return_data[0] + t
                        continue 
                    if not t:
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (0 / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if s <= (0 / sub_9a110852) + ext_call.return_data[0]:
                            if t + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= 0:
                                return 1
                        else:
                            if ext_call.return_data[0] > s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not s - ext_call.return_data[0]:
                                if t > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg1 <= -t:
                                    return 1
                            else:
                                if (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / s - ext_call.return_data[0] != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if t > (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] + ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg1 <= ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - t:
                                    return 1
                    else:
                        if 10000 * t / t != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (10000 * t / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if s <= (10000 * t / sub_9a110852) + ext_call.return_data[0]:
                            if t + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg1 <= 0:
                                return 1
                        else:
                            if ext_call.return_data[0] > s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not s - ext_call.return_data[0]:
                                if t > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg1 <= -t:
                                    return 1
                            else:
                                if (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / s - ext_call.return_data[0] != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if t > (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] + ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg1 <= ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - t:
                                    return 1
        else:
            require ext_code.size(exchangeRateAddress)
            staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(arg2), baseTokenAddress, arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            s = 0
            while idx < sub_7494bc56.length:
                mem[0] = 202
                mem[100] = sub_7494bc56[idx]
                require ext_code.size(sub_30144f96Address)
                staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                        gas gas_remaining wei
                       args sub_7494bc56[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if baseTokenAddress != sub_7494bc56[idx]:
                    if ext_call.return_data[0]:
                        mem[100] = sub_7494bc56[idx]
                        mem[132] = baseTokenAddress
                        mem[164] = ext_call.return_data[0]
                        require ext_code.size(exchangeRateAddress)
                        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args sub_7494bc56[idx], baseTokenAddress, ext_call.return_data[0]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if ext_call.return_data[0] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = ext_call.return_data[0] + s
                continue 
            if baseTokenAddress == sub_59ed9a3aAddress:
                idx = 0
                t = 0
                while idx < sub_5b5ce3a0.length:
                    mem[0] = sub_5b5ce3a0[idx]
                    mem[32] = 217
                    if baseTokenAddress == sub_5b5ce3a0[idx]:
                        if sub_5442c9c5[stor209[idx]] + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        t = sub_5442c9c5[stor209[idx]] + t
                        continue 
                    if not sub_5442c9c5[stor209[idx]]:
                        if sub_5442c9c5[stor209[idx]] + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        t = sub_5442c9c5[stor209[idx]] + t
                        continue 
                    mem[100] = sub_5b5ce3a0[idx]
                    mem[132] = baseTokenAddress
                    mem[164] = sub_5442c9c5[stor209[idx]]
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + t < t:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    t = ext_call.return_data[0] + t
                    continue 
                if not t:
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if s <= (0 / sub_9a110852) + sub_6c6f4542:
                        if t + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            return 1
                    else:
                        if sub_6c6f4542 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not s - sub_6c6f4542:
                            if t > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= -t:
                                return 1
                        else:
                            if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t:
                                return 1
                else:
                    if 10000 * t / t != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (10000 * t / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if s <= (10000 * t / sub_9a110852) + sub_6c6f4542:
                        if t + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if ext_call.return_data[0] <= 0:
                            return 1
                    else:
                        if sub_6c6f4542 > s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not s - sub_6c6f4542:
                            if t > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= -t:
                                return 1
                        else:
                            if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t:
                                return 1
            else:
                if not sub_6c6f4542:
                    idx = 0
                    t = 0
                    while idx < sub_5b5ce3a0.length:
                        mem[0] = sub_5b5ce3a0[idx]
                        mem[32] = 217
                        if baseTokenAddress == sub_5b5ce3a0[idx]:
                            if sub_5442c9c5[stor209[idx]] + t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            t = sub_5442c9c5[stor209[idx]] + t
                            continue 
                        if not sub_5442c9c5[stor209[idx]]:
                            if sub_5442c9c5[stor209[idx]] + t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            t = sub_5442c9c5[stor209[idx]] + t
                            continue 
                        mem[100] = sub_5b5ce3a0[idx]
                        mem[132] = baseTokenAddress
                        mem[164] = sub_5442c9c5[stor209[idx]]
                        require ext_code.size(exchangeRateAddress)
                        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        t = ext_call.return_data[0] + t
                        continue 
                    if not t:
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if s <= (0 / sub_9a110852) + sub_6c6f4542:
                            if t + sub_6c6f4542 < sub_6c6f4542:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= 0:
                                return 1
                        else:
                            if sub_6c6f4542 > s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not s - sub_6c6f4542:
                                if t > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] <= -t:
                                    return 1
                            else:
                                if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] <= ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t:
                                    return 1
                    else:
                        if 10000 * t / t != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (10000 * t / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if s <= (10000 * t / sub_9a110852) + sub_6c6f4542:
                            if t + sub_6c6f4542 < sub_6c6f4542:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= 0:
                                return 1
                        else:
                            if sub_6c6f4542 > s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not s - sub_6c6f4542:
                                if t > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] <= -t:
                                    return 1
                            else:
                                if (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / s - sub_6c6f4542 != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if t > (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 + ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] <= ((s * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - t:
                                    return 1
                else:
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_59ed9a3aAddress, baseTokenAddress, sub_6c6f4542
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    t = 0
                    while idx < sub_5b5ce3a0.length:
                        mem[0] = sub_5b5ce3a0[idx]
                        mem[32] = 217
                        if baseTokenAddress == sub_5b5ce3a0[idx]:
                            if sub_5442c9c5[stor209[idx]] + t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            t = sub_5442c9c5[stor209[idx]] + t
                            continue 
                        if not sub_5442c9c5[stor209[idx]]:
                            if sub_5442c9c5[stor209[idx]] + t < t:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            t = sub_5442c9c5[stor209[idx]] + t
                            continue 
                        mem[100] = sub_5b5ce3a0[idx]
                        mem[132] = baseTokenAddress
                        mem[164] = sub_5442c9c5[stor209[idx]]
                        require ext_code.size(exchangeRateAddress)
                        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + t < t:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        t = ext_call.return_data[0] + t
                        continue 
                    if not t:
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (0 / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if s <= (0 / sub_9a110852) + ext_call.return_data[0]:
                            if t + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= 0:
                                return 1
                        else:
                            if ext_call.return_data[0] > s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not s - ext_call.return_data[0]:
                                if t > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] <= -t:
                                    return 1
                            else:
                                if (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / s - ext_call.return_data[0] != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if t > (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] + ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] <= ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - t:
                                    return 1
                    else:
                        if 10000 * t / t != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (10000 * t / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if s <= (10000 * t / sub_9a110852) + ext_call.return_data[0]:
                            if t + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if ext_call.return_data[0] <= 0:
                                return 1
                        else:
                            if ext_call.return_data[0] > s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not s - ext_call.return_data[0]:
                                if t > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] <= -t:
                                    return 1
                            else:
                                if (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / s - ext_call.return_data[0] != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if t > (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] + ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if ext_call.return_data[0] <= ((s * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - t:
                                    return 1
    return 0
}

function settlePaymentForClaim(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    mem[132] = msg.sender
    require ext_code.size(sub_b870029cAddress)
    staticcall sub_b870029cAddress.0x2a1450ea with:
            gas gas_remaining wei
           args address(this.address), msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if arg2 <= 0:
            revert with 0, 'PPFC:1'
        mem[100] = arg1
        require ext_code.size(sub_66a57941Address)
        staticcall sub_66a57941Address.getPremiumPoolAmtInPaymentToken(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not arg2:
            require sub_7494bc56.length <= test266151307()
            if not sub_7494bc56.length:
                idx = 0
                while idx < sub_7494bc56.length:
                    mem[0] = 202
                    mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                    require ext_code.size(sub_30144f96Address)
                    staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                            gas gas_remaining wei
                           args sub_7494bc56[idx]
                    mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require idx < sub_7494bc56.length
                        mem[(32 * idx) + 128] = 0
                    else:
                        if sub_7494bc56[idx] != arg1:
                            mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                            mem[(32 * sub_7494bc56.length) + 164] = arg1
                            mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                            require ext_code.size(exchangeRateAddress)
                            staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                            mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '_GET2PT:1'
                        require idx < sub_7494bc56.length
                        mem[(32 * idx) + 128] = ext_call.return_data[0]
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                require sub_7494bc56.length <= test266151307()
                mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                if not sub_7494bc56.length:
                    if 0 >= sub_7494bc56.length:
                    if 1 > sub_7494bc56.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 == sub_7494bc56.length - 1:
                        require 0 < sub_7494bc56.length
                        mem[(32 * sub_7494bc56.length) + 160] = arg2
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                            if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                require ext_code.size(sub_30144f96Address)
                                staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                        gas gas_remaining wei
                                       args sub_7494bc56[idx]
                                mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < sub_7494bc56.length
                                _2755 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 128] != 0:
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    _2843 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                    mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 196] = arg1
                                    mem[(64 * sub_7494bc56.length) + 228] = _2843
                                    mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                    mem[(64 * sub_7494bc56.length) + 292] = arg3
                                    mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                    mem[(64 * sub_7494bc56.length) + 356] = _2755
                                    require ext_code.size(sub_30144f96Address)
                                    call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                         gas gas_remaining wei
                                        args sub_7494bc56[idx], address(arg1), _2843, sub_df1ac905Address, arg3, ext_call.return_data[0], _2755
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                    if 0 >= sub_7494bc56.length:
                    if 1 > sub_7494bc56.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 == sub_7494bc56.length - 1:
                        require 0 < sub_7494bc56.length
                        mem[(32 * sub_7494bc56.length) + 160] = arg2
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                            if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                require ext_code.size(sub_30144f96Address)
                                staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                        gas gas_remaining wei
                                       args sub_7494bc56[idx]
                                mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < sub_7494bc56.length
                                _2756 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 128] != 0:
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    _2846 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                    mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 196] = arg1
                                    mem[(64 * sub_7494bc56.length) + 228] = _2846
                                    mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                    mem[(64 * sub_7494bc56.length) + 292] = arg3
                                    mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                    mem[(64 * sub_7494bc56.length) + 356] = _2756
                                    require ext_code.size(sub_30144f96Address)
                                    call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                         gas gas_remaining wei
                                        args sub_7494bc56[idx], address(arg1), _2846, sub_df1ac905Address, arg3, ext_call.return_data[0], _2756
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[128 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                idx = 0
                while idx < sub_7494bc56.length:
                    mem[0] = 202
                    mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                    require ext_code.size(sub_30144f96Address)
                    staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                            gas gas_remaining wei
                           args sub_7494bc56[idx]
                    mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require idx < sub_7494bc56.length
                        mem[(32 * idx) + 128] = 0
                    else:
                        if sub_7494bc56[idx] != arg1:
                            mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                            mem[(32 * sub_7494bc56.length) + 164] = arg1
                            mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                            require ext_code.size(exchangeRateAddress)
                            staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                            mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '_GET2PT:1'
                        require idx < sub_7494bc56.length
                        mem[(32 * idx) + 128] = ext_call.return_data[0]
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                require sub_7494bc56.length <= test266151307()
                mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                if not sub_7494bc56.length:
                    if 0 >= sub_7494bc56.length:
                    if 1 > sub_7494bc56.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 == sub_7494bc56.length - 1:
                        require 0 < sub_7494bc56.length
                        mem[(32 * sub_7494bc56.length) + 160] = arg2
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                            if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                require ext_code.size(sub_30144f96Address)
                                staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                        gas gas_remaining wei
                                       args sub_7494bc56[idx]
                                mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < sub_7494bc56.length
                                _2757 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 128] != 0:
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    _2849 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                    mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 196] = arg1
                                    mem[(64 * sub_7494bc56.length) + 228] = _2849
                                    mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                    mem[(64 * sub_7494bc56.length) + 292] = arg3
                                    mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                    mem[(64 * sub_7494bc56.length) + 356] = _2757
                                    require ext_code.size(sub_30144f96Address)
                                    call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                         gas gas_remaining wei
                                        args sub_7494bc56[idx], address(arg1), _2849, sub_df1ac905Address, arg3, ext_call.return_data[0], _2757
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                    if 0 >= sub_7494bc56.length:
                    if 1 > sub_7494bc56.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 == sub_7494bc56.length - 1:
                        require 0 < sub_7494bc56.length
                        mem[(32 * sub_7494bc56.length) + 160] = arg2
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                            if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                require ext_code.size(sub_30144f96Address)
                                staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                        gas gas_remaining wei
                                       args sub_7494bc56[idx]
                                mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < sub_7494bc56.length
                                _2758 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 128] != 0:
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    _2852 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                    mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 196] = arg1
                                    mem[(64 * sub_7494bc56.length) + 228] = _2852
                                    mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                    mem[(64 * sub_7494bc56.length) + 292] = arg3
                                    mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                    mem[(64 * sub_7494bc56.length) + 356] = _2758
                                    require ext_code.size(sub_30144f96Address)
                                    call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                         gas gas_remaining wei
                                        args sub_7494bc56[idx], address(arg1), _2852, sub_df1ac905Address, arg3, ext_call.return_data[0], _2758
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            ('iszero', ('eq', 0, ('add', -1, ('stor', ('length', ('name', 'sub_7494bc56', 202))))))
            require 0 < sub_7494bc56.length
            if arg2:
                if mem[128] * arg2 / arg2 != mem[128]:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(64 * sub_7494bc56.length) + 261 len 31]
                if mem[128] * arg2:
                    if 10^10 * mem[128] * arg2 / mem[128] * arg2 != 10^10:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(64 * sub_7494bc56.length) + 261 len 31]
        else:
            if sub_f2c9e170 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f2c9e170:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_f2c9e170 * ext_call.return_data[0] / 10000:
                if not arg2:
                require sub_7494bc56.length <= test266151307()
                if not sub_7494bc56.length:
                    idx = 0
                    while idx < sub_7494bc56.length:
                        mem[0] = 202
                        mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                        require ext_code.size(sub_30144f96Address)
                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                gas gas_remaining wei
                               args sub_7494bc56[idx]
                        mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require idx < sub_7494bc56.length
                            mem[(32 * idx) + 128] = 0
                        else:
                            if sub_7494bc56[idx] != arg1:
                                mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                                mem[(32 * sub_7494bc56.length) + 164] = arg1
                                mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                                require ext_code.size(exchangeRateAddress)
                                staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                                mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '_GET2PT:1'
                            require idx < sub_7494bc56.length
                            mem[(32 * idx) + 128] = ext_call.return_data[0]
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    require sub_7494bc56.length <= test266151307()
                    mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                    if not sub_7494bc56.length:
                        if 0 >= sub_7494bc56.length:
                        if 1 > sub_7494bc56.length:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 == sub_7494bc56.length - 1:
                            require 0 < sub_7494bc56.length
                            mem[(32 * sub_7494bc56.length) + 160] = arg2
                            idx = 0
                            while idx < sub_7494bc56.length:
                                mem[0] = 202
                                require idx < mem[(32 * sub_7494bc56.length) + 128]
                                if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    require ext_code.size(sub_30144f96Address)
                                    staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < sub_7494bc56.length
                                    _2743 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] != 0:
                                        require idx < mem[(32 * sub_7494bc56.length) + 128]
                                        _2807 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                        mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 196] = arg1
                                        mem[(64 * sub_7494bc56.length) + 228] = _2807
                                        mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                        mem[(64 * sub_7494bc56.length) + 292] = arg3
                                        mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                        mem[(64 * sub_7494bc56.length) + 356] = _2743
                                        require ext_code.size(sub_30144f96Address)
                                        call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                             gas gas_remaining wei
                                            args sub_7494bc56[idx], address(arg1), _2807, sub_df1ac905Address, arg3, ext_call.return_data[0], _2743
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                        if 0 >= sub_7494bc56.length:
                        if 1 > sub_7494bc56.length:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 == sub_7494bc56.length - 1:
                            require 0 < sub_7494bc56.length
                            mem[(32 * sub_7494bc56.length) + 160] = arg2
                            idx = 0
                            while idx < sub_7494bc56.length:
                                mem[0] = 202
                                require idx < mem[(32 * sub_7494bc56.length) + 128]
                                if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    require ext_code.size(sub_30144f96Address)
                                    staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < sub_7494bc56.length
                                    _2744 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] != 0:
                                        require idx < mem[(32 * sub_7494bc56.length) + 128]
                                        _2810 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                        mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 196] = arg1
                                        mem[(64 * sub_7494bc56.length) + 228] = _2810
                                        mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                        mem[(64 * sub_7494bc56.length) + 292] = arg3
                                        mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                        mem[(64 * sub_7494bc56.length) + 356] = _2744
                                        require ext_code.size(sub_30144f96Address)
                                        call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                             gas gas_remaining wei
                                            args sub_7494bc56[idx], address(arg1), _2810, sub_df1ac905Address, arg3, ext_call.return_data[0], _2744
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    mem[128 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                    idx = 0
                    while idx < sub_7494bc56.length:
                        mem[0] = 202
                        mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                        require ext_code.size(sub_30144f96Address)
                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                gas gas_remaining wei
                               args sub_7494bc56[idx]
                        mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require idx < sub_7494bc56.length
                            mem[(32 * idx) + 128] = 0
                        else:
                            if sub_7494bc56[idx] != arg1:
                                mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                                mem[(32 * sub_7494bc56.length) + 164] = arg1
                                mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                                require ext_code.size(exchangeRateAddress)
                                staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                                mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '_GET2PT:1'
                            require idx < sub_7494bc56.length
                            mem[(32 * idx) + 128] = ext_call.return_data[0]
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    require sub_7494bc56.length <= test266151307()
                    mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                    if not sub_7494bc56.length:
                        if 0 >= sub_7494bc56.length:
                        if 1 > sub_7494bc56.length:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 == sub_7494bc56.length - 1:
                            require 0 < sub_7494bc56.length
                            mem[(32 * sub_7494bc56.length) + 160] = arg2
                            idx = 0
                            while idx < sub_7494bc56.length:
                                mem[0] = 202
                                require idx < mem[(32 * sub_7494bc56.length) + 128]
                                if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    require ext_code.size(sub_30144f96Address)
                                    staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < sub_7494bc56.length
                                    _2745 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] != 0:
                                        require idx < mem[(32 * sub_7494bc56.length) + 128]
                                        _2813 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                        mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 196] = arg1
                                        mem[(64 * sub_7494bc56.length) + 228] = _2813
                                        mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                        mem[(64 * sub_7494bc56.length) + 292] = arg3
                                        mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                        mem[(64 * sub_7494bc56.length) + 356] = _2745
                                        require ext_code.size(sub_30144f96Address)
                                        call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                             gas gas_remaining wei
                                            args sub_7494bc56[idx], address(arg1), _2813, sub_df1ac905Address, arg3, ext_call.return_data[0], _2745
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                        if 0 >= sub_7494bc56.length:
                        if 1 > sub_7494bc56.length:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 == sub_7494bc56.length - 1:
                            require 0 < sub_7494bc56.length
                            mem[(32 * sub_7494bc56.length) + 160] = arg2
                            idx = 0
                            while idx < sub_7494bc56.length:
                                mem[0] = 202
                                require idx < mem[(32 * sub_7494bc56.length) + 128]
                                if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    require ext_code.size(sub_30144f96Address)
                                    staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < sub_7494bc56.length
                                    _2746 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] != 0:
                                        require idx < mem[(32 * sub_7494bc56.length) + 128]
                                        _2816 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                        mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 196] = arg1
                                        mem[(64 * sub_7494bc56.length) + 228] = _2816
                                        mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                        mem[(64 * sub_7494bc56.length) + 292] = arg3
                                        mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                        mem[(64 * sub_7494bc56.length) + 356] = _2746
                                        require ext_code.size(sub_30144f96Address)
                                        call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                             gas gas_remaining wei
                                            args sub_7494bc56[idx], address(arg1), _2816, sub_df1ac905Address, arg3, ext_call.return_data[0], _2746
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                ('iszero', ('eq', 0, ('add', -1, ('stor', ('length', ('name', 'sub_7494bc56', 202))))))
                require 0 < sub_7494bc56.length
                if arg2:
                    if mem[128] * arg2 / arg2 != mem[128]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(64 * sub_7494bc56.length) + 261 len 31]
                    if mem[128] * arg2:
                        if 10^10 * mem[128] * arg2 / mem[128] * arg2 != 10^10:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(64 * sub_7494bc56.length) + 261 len 31]
            else:
                mem[100] = arg1
                if sub_f2c9e170 * ext_call.return_data[0] / 10000 < arg2:
                    mem[132] = sub_f2c9e170 * ext_call.return_data[0] / 10000
                    mem[164] = sub_df1ac905Address
                    require ext_code.size(sub_66a57941Address)
                    call sub_66a57941Address.settlePayoutFromPremium(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(arg1), sub_f2c9e170 * ext_call.return_data[0] / 10000, sub_df1ac905Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_f2c9e170 * ext_call.return_data[0] / 10000 < ext_call.return_data[0]:
                        revert with 0, 'PPFC:2'
                    if ext_call.return_data[0] > sub_f2c9e170 * ext_call.return_data[0] / 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 < (sub_f2c9e170 * ext_call.return_data[0] / 10000) - ext_call.return_data[0]:
                        revert with 0, 'PPFC:3'
                    if ext_call.return_data[0] > sub_f2c9e170 * ext_call.return_data[0] / 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (sub_f2c9e170 * ext_call.return_data[0] / 10000) - ext_call.return_data[0] > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]:
                    require sub_7494bc56.length <= test266151307()
                    if not sub_7494bc56.length:
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                            require ext_code.size(sub_30144f96Address)
                            staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                    gas gas_remaining wei
                                   args sub_7494bc56[idx]
                            mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = 0
                            else:
                                if sub_7494bc56[idx] != arg1:
                                    mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                                    mem[(32 * sub_7494bc56.length) + 164] = arg1
                                    mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                                    require ext_code.size(exchangeRateAddress)
                                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                                    mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, '_GET2PT:1'
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = ext_call.return_data[0]
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        require sub_7494bc56.length <= test266151307()
                        mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                        if not sub_7494bc56.length:
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2747 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2819 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2819
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2747
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2819, sub_df1ac905Address, arg3, ext_call.return_data[0], _2747
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2748 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2822 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2822
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2748
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2822, sub_df1ac905Address, arg3, ext_call.return_data[0], _2748
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        mem[128 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                            require ext_code.size(sub_30144f96Address)
                            staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                    gas gas_remaining wei
                                   args sub_7494bc56[idx]
                            mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = 0
                            else:
                                if sub_7494bc56[idx] != arg1:
                                    mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                                    mem[(32 * sub_7494bc56.length) + 164] = arg1
                                    mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                                    require ext_code.size(exchangeRateAddress)
                                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                                    mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, '_GET2PT:1'
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = ext_call.return_data[0]
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        require sub_7494bc56.length <= test266151307()
                        mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                        if not sub_7494bc56.length:
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2749 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2825 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2825
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2749
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2825, sub_df1ac905Address, arg3, ext_call.return_data[0], _2749
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2750 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2828 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2828
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2750
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2828, sub_df1ac905Address, arg3, ext_call.return_data[0], _2750
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    ('iszero', ('eq', 0, ('add', -1, ('stor', ('length', ('name', 'sub_7494bc56', 202))))))
                    require 0 < sub_7494bc56.length
                    if arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]:
                        if (arg2 * mem[128]) - (sub_f2c9e170 * ext_call.return_data[0] / 10000 * mem[128]) + (ext_call.return_data[0] * mem[128]) / arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0] != mem[128]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(64 * sub_7494bc56.length) + 261 len 31]
                        if (arg2 * mem[128]) - (sub_f2c9e170 * ext_call.return_data[0] / 10000 * mem[128]) + (ext_call.return_data[0] * mem[128]):
                            if (10^10 * arg2 * mem[128]) - (10^10 * sub_f2c9e170 * ext_call.return_data[0] / 10000 * mem[128]) + (10^10 * ext_call.return_data[0] * mem[128]) / (arg2 * mem[128]) - (sub_f2c9e170 * ext_call.return_data[0] / 10000 * mem[128]) + (ext_call.return_data[0] * mem[128]) != 10^10:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(64 * sub_7494bc56.length) + 261 len 31]
                else:
                    mem[132] = arg2
                    mem[164] = sub_df1ac905Address
                    require ext_code.size(sub_66a57941Address)
                    call sub_66a57941Address.settlePayoutFromPremium(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(arg1), arg2, sub_df1ac905Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 < ext_call.return_data[0]:
                        revert with 0, 'PPFC:2'
                    if ext_call.return_data[0] > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 < arg2 - ext_call.return_data[0]:
                        revert with 0, 'PPFC:3'
                    if ext_call.return_data[0] > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 - ext_call.return_data[0] > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_call.return_data[0]:
                    require sub_7494bc56.length <= test266151307()
                    if not sub_7494bc56.length:
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                            require ext_code.size(sub_30144f96Address)
                            staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                    gas gas_remaining wei
                                   args sub_7494bc56[idx]
                            mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = 0
                            else:
                                if sub_7494bc56[idx] != arg1:
                                    mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                                    mem[(32 * sub_7494bc56.length) + 164] = arg1
                                    mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                                    require ext_code.size(exchangeRateAddress)
                                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                                    mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, '_GET2PT:1'
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = ext_call.return_data[0]
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        require sub_7494bc56.length <= test266151307()
                        mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                        if not sub_7494bc56.length:
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2751 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2831 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2831
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2751
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2831, sub_df1ac905Address, arg3, ext_call.return_data[0], _2751
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2752 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2834 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2834
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2752
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2834, sub_df1ac905Address, arg3, ext_call.return_data[0], _2752
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        mem[128 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                            require ext_code.size(sub_30144f96Address)
                            staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                    gas gas_remaining wei
                                   args sub_7494bc56[idx]
                            mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = 0
                            else:
                                if sub_7494bc56[idx] != arg1:
                                    mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                                    mem[(32 * sub_7494bc56.length) + 164] = arg1
                                    mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                                    require ext_code.size(exchangeRateAddress)
                                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                                    mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, '_GET2PT:1'
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = ext_call.return_data[0]
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        require sub_7494bc56.length <= test266151307()
                        mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                        if not sub_7494bc56.length:
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2753 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2837 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2837
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2753
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2837, sub_df1ac905Address, arg3, ext_call.return_data[0], _2753
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2754 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2840 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2840
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2754
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2840, sub_df1ac905Address, arg3, ext_call.return_data[0], _2754
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    ('iszero', ('eq', 0, ('add', -1, ('stor', ('length', ('name', 'sub_7494bc56', 202))))))
                    require 0 < sub_7494bc56.length
                    if ext_call.return_data[0]:
                        if mem[128] * ext_call.return_data[0] / ext_call.return_data[0] != mem[128]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(64 * sub_7494bc56.length) + 261 len 31]
                        if mem[128] * ext_call.return_data[0]:
                            if 10^10 * mem[128] * ext_call.return_data[0] / mem[128] * ext_call.return_data[0] != 10^10:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(64 * sub_7494bc56.length) + 261 len 31]
    else:
        if owner != msg.sender:
            revert with 0, 'allowedCaller'
        if arg2 <= 0:
            revert with 0, 'PPFC:1'
        mem[100] = arg1
        require ext_code.size(sub_66a57941Address)
        staticcall sub_66a57941Address.getPremiumPoolAmtInPaymentToken(address rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if not arg2:
            require sub_7494bc56.length <= test266151307()
            if not sub_7494bc56.length:
                idx = 0
                while idx < sub_7494bc56.length:
                    mem[0] = 202
                    mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                    require ext_code.size(sub_30144f96Address)
                    staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                            gas gas_remaining wei
                           args sub_7494bc56[idx]
                    mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require idx < sub_7494bc56.length
                        mem[(32 * idx) + 128] = 0
                    else:
                        if sub_7494bc56[idx] != arg1:
                            mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                            mem[(32 * sub_7494bc56.length) + 164] = arg1
                            mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                            require ext_code.size(exchangeRateAddress)
                            staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                            mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '_GET2PT:1'
                        require idx < sub_7494bc56.length
                        mem[(32 * idx) + 128] = ext_call.return_data[0]
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                require sub_7494bc56.length <= test266151307()
                mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                if not sub_7494bc56.length:
                    if 0 >= sub_7494bc56.length:
                    if 1 > sub_7494bc56.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 == sub_7494bc56.length - 1:
                        require 0 < sub_7494bc56.length
                        mem[(32 * sub_7494bc56.length) + 160] = arg2
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                            if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                require ext_code.size(sub_30144f96Address)
                                staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                        gas gas_remaining wei
                                       args sub_7494bc56[idx]
                                mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < sub_7494bc56.length
                                _2771 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 128] != 0:
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    _2891 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                    mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 196] = arg1
                                    mem[(64 * sub_7494bc56.length) + 228] = _2891
                                    mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                    mem[(64 * sub_7494bc56.length) + 292] = arg3
                                    mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                    mem[(64 * sub_7494bc56.length) + 356] = _2771
                                    require ext_code.size(sub_30144f96Address)
                                    call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                         gas gas_remaining wei
                                        args sub_7494bc56[idx], address(arg1), _2891, sub_df1ac905Address, arg3, ext_call.return_data[0], _2771
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                    if 0 >= sub_7494bc56.length:
                    if 1 > sub_7494bc56.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 == sub_7494bc56.length - 1:
                        require 0 < sub_7494bc56.length
                        mem[(32 * sub_7494bc56.length) + 160] = arg2
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                            if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                require ext_code.size(sub_30144f96Address)
                                staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                        gas gas_remaining wei
                                       args sub_7494bc56[idx]
                                mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < sub_7494bc56.length
                                _2772 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 128] != 0:
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    _2894 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                    mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 196] = arg1
                                    mem[(64 * sub_7494bc56.length) + 228] = _2894
                                    mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                    mem[(64 * sub_7494bc56.length) + 292] = arg3
                                    mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                    mem[(64 * sub_7494bc56.length) + 356] = _2772
                                    require ext_code.size(sub_30144f96Address)
                                    call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                         gas gas_remaining wei
                                        args sub_7494bc56[idx], address(arg1), _2894, sub_df1ac905Address, arg3, ext_call.return_data[0], _2772
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            else:
                mem[128 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                idx = 0
                while idx < sub_7494bc56.length:
                    mem[0] = 202
                    mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                    require ext_code.size(sub_30144f96Address)
                    staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                            gas gas_remaining wei
                           args sub_7494bc56[idx]
                    mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[0]:
                        require idx < sub_7494bc56.length
                        mem[(32 * idx) + 128] = 0
                    else:
                        if sub_7494bc56[idx] != arg1:
                            mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                            mem[(32 * sub_7494bc56.length) + 164] = arg1
                            mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                            require ext_code.size(exchangeRateAddress)
                            staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                    gas gas_remaining wei
                                   args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                            mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                revert with 0, '_GET2PT:1'
                        require idx < sub_7494bc56.length
                        mem[(32 * idx) + 128] = ext_call.return_data[0]
                        if ext_call.return_data[0] < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    continue 
                require sub_7494bc56.length <= test266151307()
                mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                if not sub_7494bc56.length:
                    if 0 >= sub_7494bc56.length:
                    if 1 > sub_7494bc56.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 == sub_7494bc56.length - 1:
                        require 0 < sub_7494bc56.length
                        mem[(32 * sub_7494bc56.length) + 160] = arg2
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                            if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                require ext_code.size(sub_30144f96Address)
                                staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                        gas gas_remaining wei
                                       args sub_7494bc56[idx]
                                mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < sub_7494bc56.length
                                _2773 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 128] != 0:
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    _2897 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                    mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 196] = arg1
                                    mem[(64 * sub_7494bc56.length) + 228] = _2897
                                    mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                    mem[(64 * sub_7494bc56.length) + 292] = arg3
                                    mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                    mem[(64 * sub_7494bc56.length) + 356] = _2773
                                    require ext_code.size(sub_30144f96Address)
                                    call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                         gas gas_remaining wei
                                        args sub_7494bc56[idx], address(arg1), _2897, sub_df1ac905Address, arg3, ext_call.return_data[0], _2773
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
                else:
                    mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                    if 0 >= sub_7494bc56.length:
                    if 1 > sub_7494bc56.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 == sub_7494bc56.length - 1:
                        require 0 < sub_7494bc56.length
                        mem[(32 * sub_7494bc56.length) + 160] = arg2
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                            if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                require ext_code.size(sub_30144f96Address)
                                staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                        gas gas_remaining wei
                                       args sub_7494bc56[idx]
                                mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require idx < sub_7494bc56.length
                                _2774 = mem[(32 * idx) + 128]
                                if mem[(32 * idx) + 128] != 0:
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    _2900 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                    mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 196] = arg1
                                    mem[(64 * sub_7494bc56.length) + 228] = _2900
                                    mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                    mem[(64 * sub_7494bc56.length) + 292] = arg3
                                    mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                    mem[(64 * sub_7494bc56.length) + 356] = _2774
                                    require ext_code.size(sub_30144f96Address)
                                    call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                         gas gas_remaining wei
                                        args sub_7494bc56[idx], address(arg1), _2900, sub_df1ac905Address, arg3, ext_call.return_data[0], _2774
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                            idx = idx + 1
                            continue 
            ('iszero', ('eq', 0, ('add', -1, ('stor', ('length', ('name', 'sub_7494bc56', 202))))))
            require 0 < sub_7494bc56.length
            if arg2:
                if mem[128] * arg2 / arg2 != mem[128]:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(64 * sub_7494bc56.length) + 261 len 31]
                if mem[128] * arg2:
                    if 10^10 * mem[128] * arg2 / mem[128] * arg2 != 10^10:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(64 * sub_7494bc56.length) + 261 len 31]
        else:
            if sub_f2c9e170 * ext_call.return_data[0] / ext_call.return_data[0] != sub_f2c9e170:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not sub_f2c9e170 * ext_call.return_data[0] / 10000:
                if not arg2:
                require sub_7494bc56.length <= test266151307()
                if not sub_7494bc56.length:
                    idx = 0
                    while idx < sub_7494bc56.length:
                        mem[0] = 202
                        mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                        require ext_code.size(sub_30144f96Address)
                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                gas gas_remaining wei
                               args sub_7494bc56[idx]
                        mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require idx < sub_7494bc56.length
                            mem[(32 * idx) + 128] = 0
                        else:
                            if sub_7494bc56[idx] != arg1:
                                mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                                mem[(32 * sub_7494bc56.length) + 164] = arg1
                                mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                                require ext_code.size(exchangeRateAddress)
                                staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                                mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '_GET2PT:1'
                            require idx < sub_7494bc56.length
                            mem[(32 * idx) + 128] = ext_call.return_data[0]
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    require sub_7494bc56.length <= test266151307()
                    mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                    if not sub_7494bc56.length:
                        if 0 >= sub_7494bc56.length:
                        if 1 > sub_7494bc56.length:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 == sub_7494bc56.length - 1:
                            require 0 < sub_7494bc56.length
                            mem[(32 * sub_7494bc56.length) + 160] = arg2
                            idx = 0
                            while idx < sub_7494bc56.length:
                                mem[0] = 202
                                require idx < mem[(32 * sub_7494bc56.length) + 128]
                                if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    require ext_code.size(sub_30144f96Address)
                                    staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < sub_7494bc56.length
                                    _2759 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] != 0:
                                        require idx < mem[(32 * sub_7494bc56.length) + 128]
                                        _2855 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                        mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 196] = arg1
                                        mem[(64 * sub_7494bc56.length) + 228] = _2855
                                        mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                        mem[(64 * sub_7494bc56.length) + 292] = arg3
                                        mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                        mem[(64 * sub_7494bc56.length) + 356] = _2759
                                        require ext_code.size(sub_30144f96Address)
                                        call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                             gas gas_remaining wei
                                            args sub_7494bc56[idx], address(arg1), _2855, sub_df1ac905Address, arg3, ext_call.return_data[0], _2759
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                        if 0 >= sub_7494bc56.length:
                        if 1 > sub_7494bc56.length:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 == sub_7494bc56.length - 1:
                            require 0 < sub_7494bc56.length
                            mem[(32 * sub_7494bc56.length) + 160] = arg2
                            idx = 0
                            while idx < sub_7494bc56.length:
                                mem[0] = 202
                                require idx < mem[(32 * sub_7494bc56.length) + 128]
                                if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    require ext_code.size(sub_30144f96Address)
                                    staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < sub_7494bc56.length
                                    _2760 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] != 0:
                                        require idx < mem[(32 * sub_7494bc56.length) + 128]
                                        _2858 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                        mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 196] = arg1
                                        mem[(64 * sub_7494bc56.length) + 228] = _2858
                                        mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                        mem[(64 * sub_7494bc56.length) + 292] = arg3
                                        mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                        mem[(64 * sub_7494bc56.length) + 356] = _2760
                                        require ext_code.size(sub_30144f96Address)
                                        call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                             gas gas_remaining wei
                                            args sub_7494bc56[idx], address(arg1), _2858, sub_df1ac905Address, arg3, ext_call.return_data[0], _2760
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                else:
                    mem[128 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                    idx = 0
                    while idx < sub_7494bc56.length:
                        mem[0] = 202
                        mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                        require ext_code.size(sub_30144f96Address)
                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                gas gas_remaining wei
                               args sub_7494bc56[idx]
                        mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require idx < sub_7494bc56.length
                            mem[(32 * idx) + 128] = 0
                        else:
                            if sub_7494bc56[idx] != arg1:
                                mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                                mem[(32 * sub_7494bc56.length) + 164] = arg1
                                mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                                require ext_code.size(exchangeRateAddress)
                                staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                        gas gas_remaining wei
                                       args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                                mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    revert with 0, '_GET2PT:1'
                            require idx < sub_7494bc56.length
                            mem[(32 * idx) + 128] = ext_call.return_data[0]
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        continue 
                    require sub_7494bc56.length <= test266151307()
                    mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                    if not sub_7494bc56.length:
                        if 0 >= sub_7494bc56.length:
                        if 1 > sub_7494bc56.length:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 == sub_7494bc56.length - 1:
                            require 0 < sub_7494bc56.length
                            mem[(32 * sub_7494bc56.length) + 160] = arg2
                            idx = 0
                            while idx < sub_7494bc56.length:
                                mem[0] = 202
                                require idx < mem[(32 * sub_7494bc56.length) + 128]
                                if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    require ext_code.size(sub_30144f96Address)
                                    staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < sub_7494bc56.length
                                    _2761 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] != 0:
                                        require idx < mem[(32 * sub_7494bc56.length) + 128]
                                        _2861 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                        mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 196] = arg1
                                        mem[(64 * sub_7494bc56.length) + 228] = _2861
                                        mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                        mem[(64 * sub_7494bc56.length) + 292] = arg3
                                        mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                        mem[(64 * sub_7494bc56.length) + 356] = _2761
                                        require ext_code.size(sub_30144f96Address)
                                        call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                             gas gas_remaining wei
                                            args sub_7494bc56[idx], address(arg1), _2861, sub_df1ac905Address, arg3, ext_call.return_data[0], _2761
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                    else:
                        mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                        if 0 >= sub_7494bc56.length:
                        if 1 > sub_7494bc56.length:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 == sub_7494bc56.length - 1:
                            require 0 < sub_7494bc56.length
                            mem[(32 * sub_7494bc56.length) + 160] = arg2
                            idx = 0
                            while idx < sub_7494bc56.length:
                                mem[0] = 202
                                require idx < mem[(32 * sub_7494bc56.length) + 128]
                                if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                    mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                    require ext_code.size(sub_30144f96Address)
                                    staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx]
                                    mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require idx < sub_7494bc56.length
                                    _2762 = mem[(32 * idx) + 128]
                                    if mem[(32 * idx) + 128] != 0:
                                        require idx < mem[(32 * sub_7494bc56.length) + 128]
                                        _2864 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                        mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 196] = arg1
                                        mem[(64 * sub_7494bc56.length) + 228] = _2864
                                        mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                        mem[(64 * sub_7494bc56.length) + 292] = arg3
                                        mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                        mem[(64 * sub_7494bc56.length) + 356] = _2762
                                        require ext_code.size(sub_30144f96Address)
                                        call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                             gas gas_remaining wei
                                            args sub_7494bc56[idx], address(arg1), _2864, sub_df1ac905Address, arg3, ext_call.return_data[0], _2762
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                idx = idx + 1
                                continue 
                ('iszero', ('eq', 0, ('add', -1, ('stor', ('length', ('name', 'sub_7494bc56', 202))))))
                require 0 < sub_7494bc56.length
                if arg2:
                    if mem[128] * arg2 / arg2 != mem[128]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(64 * sub_7494bc56.length) + 261 len 31]
                    if mem[128] * arg2:
                        if 10^10 * mem[128] * arg2 / mem[128] * arg2 != 10^10:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(64 * sub_7494bc56.length) + 261 len 31]
            else:
                mem[100] = arg1
                if sub_f2c9e170 * ext_call.return_data[0] / 10000 < arg2:
                    mem[132] = sub_f2c9e170 * ext_call.return_data[0] / 10000
                    mem[164] = sub_df1ac905Address
                    require ext_code.size(sub_66a57941Address)
                    call sub_66a57941Address.settlePayoutFromPremium(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(arg1), sub_f2c9e170 * ext_call.return_data[0] / 10000, sub_df1ac905Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if sub_f2c9e170 * ext_call.return_data[0] / 10000 < ext_call.return_data[0]:
                        revert with 0, 'PPFC:2'
                    if ext_call.return_data[0] > sub_f2c9e170 * ext_call.return_data[0] / 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 < (sub_f2c9e170 * ext_call.return_data[0] / 10000) - ext_call.return_data[0]:
                        revert with 0, 'PPFC:3'
                    if ext_call.return_data[0] > sub_f2c9e170 * ext_call.return_data[0] / 10000:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (sub_f2c9e170 * ext_call.return_data[0] / 10000) - ext_call.return_data[0] > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]:
                    require sub_7494bc56.length <= test266151307()
                    if not sub_7494bc56.length:
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                            require ext_code.size(sub_30144f96Address)
                            staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                    gas gas_remaining wei
                                   args sub_7494bc56[idx]
                            mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = 0
                            else:
                                if sub_7494bc56[idx] != arg1:
                                    mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                                    mem[(32 * sub_7494bc56.length) + 164] = arg1
                                    mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                                    require ext_code.size(exchangeRateAddress)
                                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                                    mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, '_GET2PT:1'
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = ext_call.return_data[0]
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        require sub_7494bc56.length <= test266151307()
                        mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                        if not sub_7494bc56.length:
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2763 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2867 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2867
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2763
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2867, sub_df1ac905Address, arg3, ext_call.return_data[0], _2763
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2764 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2870 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2870
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2764
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2870, sub_df1ac905Address, arg3, ext_call.return_data[0], _2764
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        mem[128 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                            require ext_code.size(sub_30144f96Address)
                            staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                    gas gas_remaining wei
                                   args sub_7494bc56[idx]
                            mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = 0
                            else:
                                if sub_7494bc56[idx] != arg1:
                                    mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                                    mem[(32 * sub_7494bc56.length) + 164] = arg1
                                    mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                                    require ext_code.size(exchangeRateAddress)
                                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                                    mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, '_GET2PT:1'
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = ext_call.return_data[0]
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        require sub_7494bc56.length <= test266151307()
                        mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                        if not sub_7494bc56.length:
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2765 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2873 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2873
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2765
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2873, sub_df1ac905Address, arg3, ext_call.return_data[0], _2765
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2766 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2876 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2876
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2766
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2876, sub_df1ac905Address, arg3, ext_call.return_data[0], _2766
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    ('iszero', ('eq', 0, ('add', -1, ('stor', ('length', ('name', 'sub_7494bc56', 202))))))
                    require 0 < sub_7494bc56.length
                    if arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0]:
                        if (arg2 * mem[128]) - (sub_f2c9e170 * ext_call.return_data[0] / 10000 * mem[128]) + (ext_call.return_data[0] * mem[128]) / arg2 - (sub_f2c9e170 * ext_call.return_data[0] / 10000) + ext_call.return_data[0] != mem[128]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(64 * sub_7494bc56.length) + 261 len 31]
                        if (arg2 * mem[128]) - (sub_f2c9e170 * ext_call.return_data[0] / 10000 * mem[128]) + (ext_call.return_data[0] * mem[128]):
                            if (10^10 * arg2 * mem[128]) - (10^10 * sub_f2c9e170 * ext_call.return_data[0] / 10000 * mem[128]) + (10^10 * ext_call.return_data[0] * mem[128]) / (arg2 * mem[128]) - (sub_f2c9e170 * ext_call.return_data[0] / 10000 * mem[128]) + (ext_call.return_data[0] * mem[128]) != 10^10:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(64 * sub_7494bc56.length) + 261 len 31]
                else:
                    mem[132] = arg2
                    mem[164] = sub_df1ac905Address
                    require ext_code.size(sub_66a57941Address)
                    call sub_66a57941Address.settlePayoutFromPremium(address rg1, uint256 rg2, address rg3) with:
                         gas gas_remaining wei
                        args address(arg1), arg2, sub_df1ac905Address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if arg2 < ext_call.return_data[0]:
                        revert with 0, 'PPFC:2'
                    if ext_call.return_data[0] > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 < arg2 - ext_call.return_data[0]:
                        revert with 0, 'PPFC:3'
                    if ext_call.return_data[0] > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 - ext_call.return_data[0] > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not ext_call.return_data[0]:
                    require sub_7494bc56.length <= test266151307()
                    if not sub_7494bc56.length:
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                            require ext_code.size(sub_30144f96Address)
                            staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                    gas gas_remaining wei
                                   args sub_7494bc56[idx]
                            mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = 0
                            else:
                                if sub_7494bc56[idx] != arg1:
                                    mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                                    mem[(32 * sub_7494bc56.length) + 164] = arg1
                                    mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                                    require ext_code.size(exchangeRateAddress)
                                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                                    mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, '_GET2PT:1'
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = ext_call.return_data[0]
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        require sub_7494bc56.length <= test266151307()
                        mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                        if not sub_7494bc56.length:
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2767 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2879 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2879
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2767
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2879, sub_df1ac905Address, arg3, ext_call.return_data[0], _2767
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2768 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2882 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2882
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2768
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2882, sub_df1ac905Address, arg3, ext_call.return_data[0], _2768
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    else:
                        mem[128 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                        idx = 0
                        while idx < sub_7494bc56.length:
                            mem[0] = 202
                            mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                            require ext_code.size(sub_30144f96Address)
                            staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                    gas gas_remaining wei
                                   args sub_7494bc56[idx]
                            mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = 0
                            else:
                                if sub_7494bc56[idx] != arg1:
                                    mem[(32 * sub_7494bc56.length) + 132] = sub_7494bc56[idx]
                                    mem[(32 * sub_7494bc56.length) + 164] = arg1
                                    mem[(32 * sub_7494bc56.length) + 196] = ext_call.return_data[0]
                                    require ext_code.size(exchangeRateAddress)
                                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                            gas gas_remaining wei
                                           args sub_7494bc56[idx], address(arg1), ext_call.return_data[0]
                                    mem[(32 * sub_7494bc56.length) + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        revert with 0, '_GET2PT:1'
                                require idx < sub_7494bc56.length
                                mem[(32 * idx) + 128] = ext_call.return_data[0]
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            continue 
                        require sub_7494bc56.length <= test266151307()
                        mem[(32 * sub_7494bc56.length) + 128] = sub_7494bc56.length
                        if not sub_7494bc56.length:
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2769 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2885 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2885
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2769
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2885, sub_df1ac905Address, arg3, ext_call.return_data[0], _2769
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                        else:
                            mem[(32 * sub_7494bc56.length) + 160 len 32 * sub_7494bc56.length] = call.data[calldata.size len 32 * sub_7494bc56.length]
                            if 0 >= sub_7494bc56.length:
                            if 1 > sub_7494bc56.length:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 == sub_7494bc56.length - 1:
                                require 0 < sub_7494bc56.length
                                mem[(32 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                idx = 0
                                while idx < sub_7494bc56.length:
                                    mem[0] = 202
                                    require idx < mem[(32 * sub_7494bc56.length) + 128]
                                    if mem[(32 * idx) + (32 * sub_7494bc56.length) + 160] != 0:
                                        mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                        require ext_code.size(sub_30144f96Address)
                                        staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                                                gas gas_remaining wei
                                               args sub_7494bc56[idx]
                                        mem[(64 * sub_7494bc56.length) + 160] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require idx < sub_7494bc56.length
                                        _2770 = mem[(32 * idx) + 128]
                                        if mem[(32 * idx) + 128] != 0:
                                            require idx < mem[(32 * sub_7494bc56.length) + 128]
                                            _2888 = mem[(32 * idx) + (32 * sub_7494bc56.length) + 160]
                                            mem[(64 * sub_7494bc56.length) + 160] = 0x153385c00000000000000000000000000000000000000000000000000000000
                                            mem[(64 * sub_7494bc56.length) + 164] = sub_7494bc56[idx]
                                            mem[(64 * sub_7494bc56.length) + 196] = arg1
                                            mem[(64 * sub_7494bc56.length) + 228] = _2888
                                            mem[(64 * sub_7494bc56.length) + 260] = sub_df1ac905Address
                                            mem[(64 * sub_7494bc56.length) + 292] = arg3
                                            mem[(64 * sub_7494bc56.length) + 324] = ext_call.return_data[0]
                                            mem[(64 * sub_7494bc56.length) + 356] = _2770
                                            require ext_code.size(sub_30144f96Address)
                                            call sub_30144f96Address.claimPayout(address rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, uint256 rg6, uint256 rg7) with:
                                                 gas gas_remaining wei
                                                args sub_7494bc56[idx], address(arg1), _2888, sub_df1ac905Address, arg3, ext_call.return_data[0], _2770
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                    idx = idx + 1
                                    continue 
                    ('iszero', ('eq', 0, ('add', -1, ('stor', ('length', ('name', 'sub_7494bc56', 202))))))
                    require 0 < sub_7494bc56.length
                    if ext_call.return_data[0]:
                        if mem[128] * ext_call.return_data[0] / ext_call.return_data[0] != mem[128]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(64 * sub_7494bc56.length) + 261 len 31]
                        if mem[128] * ext_call.return_data[0]:
                            if 10^10 * mem[128] * ext_call.return_data[0] / mem[128] * ext_call.return_data[0] != 10^10:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(64 * sub_7494bc56.length) + 261 len 31]
    revert with 0, 'SafeMath: division by zero'
}

function canBuyCoverPerProduct(uint256 arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    idx = 0
    s = 0
    while idx < sub_5b5ce3a0.length:
        mem[0] = sub_5b5ce3a0[idx]
        mem[32] = sha3(arg1, 213)
        if baseTokenAddress == sub_5b5ce3a0[idx]:
            if sub_32aabf2d[arg1][stor209[idx]] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = sub_32aabf2d[arg1][stor209[idx]] + s
            continue 
        if not sub_32aabf2d[arg1][stor209[idx]]:
            if sub_32aabf2d[arg1][stor209[idx]] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = sub_32aabf2d[arg1][stor209[idx]] + s
            continue 
        mem[100] = sub_5b5ce3a0[idx]
        mem[132] = baseTokenAddress
        mem[164] = sub_32aabf2d[arg1][stor209[idx]]
        require ext_code.size(exchangeRateAddress)
        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                gas gas_remaining wei
               args sub_5b5ce3a0[idx], baseTokenAddress, sub_32aabf2d[arg1][stor209[idx]]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    if baseTokenAddress == arg3:
        idx = 0
        t = 0
        while idx < sub_7494bc56.length:
            mem[0] = 202
            mem[100] = sub_7494bc56[idx]
            require ext_code.size(sub_30144f96Address)
            staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                    gas gas_remaining wei
                   args sub_7494bc56[idx]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if baseTokenAddress != sub_7494bc56[idx]:
                if ext_call.return_data[0]:
                    mem[100] = sub_7494bc56[idx]
                    mem[132] = baseTokenAddress
                    mem[164] = ext_call.return_data[0]
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_7494bc56[idx], baseTokenAddress, ext_call.return_data[0]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            if ext_call.return_data[0] + t < t:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            t = ext_call.return_data[0] + t
            continue 
        if baseTokenAddress == sub_59ed9a3aAddress:
            idx = 0
            u = 0
            while idx < sub_5b5ce3a0.length:
                mem[0] = sub_5b5ce3a0[idx]
                mem[32] = 217
                if baseTokenAddress == sub_5b5ce3a0[idx]:
                    if sub_5442c9c5[stor209[idx]] + u < u:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    u = sub_5442c9c5[stor209[idx]] + u
                    continue 
                if not sub_5442c9c5[stor209[idx]]:
                    if sub_5442c9c5[stor209[idx]] + u < u:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    u = sub_5442c9c5[stor209[idx]] + u
                    continue 
                mem[100] = sub_5b5ce3a0[idx]
                mem[132] = baseTokenAddress
                mem[164] = sub_5442c9c5[stor209[idx]]
                require ext_code.size(exchangeRateAddress)
                staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + u < u:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                u = ext_call.return_data[0] + u
                continue 
            if not u:
                if sub_9a110852 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_9a110852
                if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                    revert with 0, 'SafeMath: addition overflow'
                if t <= (0 / sub_9a110852) + sub_6c6f4542:
                    if u + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_7e035c26[arg1]:
                        if not u + sub_6c6f4542:
                            if s + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if s + arg2 <= 0:
                                if arg2 <= 0:
                                    return 1
                        else:
                            if (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / u + sub_6c6f4542 != sub_7e035c26[arg1]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if s + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if s + arg2 <= (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / 10000:
                                if arg2 <= 0:
                                    return 1
                    else:
                        if not u + sub_6c6f4542:
                            if s + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if s + arg2 <= 0:
                                if arg2 <= 0:
                                    return 1
                        else:
                            if (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / u + sub_6c6f4542 != coverAmtPPMaxRatio:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if s + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if s + arg2 <= (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / 10000:
                                if arg2 <= 0:
                                    return 1
                else:
                    if sub_6c6f4542 > t:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not t - sub_6c6f4542:
                        if u > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_6c6f4542 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_7e035c26[arg1]:
                            if not sub_6c6f4542:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= -u:
                                        return 1
                            else:
                                if sub_7e035c26[arg1] * sub_6c6f4542 / sub_6c6f4542 != sub_7e035c26[arg1]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= sub_7e035c26[arg1] * sub_6c6f4542 / 10000:
                                    if arg2 <= -u:
                                        return 1
                        else:
                            if not sub_6c6f4542:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= -u:
                                        return 1
                            else:
                                if coverAmtPPMaxRatio * sub_6c6f4542 / sub_6c6f4542 != coverAmtPPMaxRatio:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= coverAmtPPMaxRatio * sub_6c6f4542 / 10000:
                                    if arg2 <= -u:
                                        return 1
                    else:
                        if (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / t - sub_6c6f4542 != sub_9a110852:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if u > (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_7e035c26[arg1]:
                            if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                        return 1
                            else:
                                if (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                    if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                        return 1
                        else:
                            if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                        return 1
                            else:
                                if (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                    if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                        return 1
            else:
                if 10000 * u / u != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                if sub_9a110852 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require sub_9a110852
                if (10000 * u / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                    revert with 0, 'SafeMath: addition overflow'
                if t <= (10000 * u / sub_9a110852) + sub_6c6f4542:
                    if u + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_7e035c26[arg1]:
                        if not u + sub_6c6f4542:
                            if s + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if s + arg2 <= 0:
                                if arg2 <= 0:
                                    return 1
                        else:
                            if (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / u + sub_6c6f4542 != sub_7e035c26[arg1]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if s + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if s + arg2 <= (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / 10000:
                                if arg2 <= 0:
                                    return 1
                    else:
                        if not u + sub_6c6f4542:
                            if s + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if s + arg2 <= 0:
                                if arg2 <= 0:
                                    return 1
                        else:
                            if (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / u + sub_6c6f4542 != coverAmtPPMaxRatio:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if s + arg2 < arg2:
                                revert with 0, 'SafeMath: addition overflow'
                            if s + arg2 <= (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / 10000:
                                if arg2 <= 0:
                                    return 1
                else:
                    if sub_6c6f4542 > t:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not t - sub_6c6f4542:
                        if u > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_6c6f4542 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_7e035c26[arg1]:
                            if not sub_6c6f4542:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= -u:
                                        return 1
                            else:
                                if sub_7e035c26[arg1] * sub_6c6f4542 / sub_6c6f4542 != sub_7e035c26[arg1]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= sub_7e035c26[arg1] * sub_6c6f4542 / 10000:
                                    if arg2 <= -u:
                                        return 1
                        else:
                            if not sub_6c6f4542:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= -u:
                                        return 1
                            else:
                                if coverAmtPPMaxRatio * sub_6c6f4542 / sub_6c6f4542 != coverAmtPPMaxRatio:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= coverAmtPPMaxRatio * sub_6c6f4542 / 10000:
                                    if arg2 <= -u:
                                        return 1
                    else:
                        if (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / t - sub_6c6f4542 != sub_9a110852:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if u > (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_7e035c26[arg1]:
                            if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                        return 1
                            else:
                                if (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                    if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                        return 1
                        else:
                            if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                        return 1
                            else:
                                if (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                    if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                        return 1
        else:
            if not sub_6c6f4542:
                idx = 0
                u = 0
                while idx < sub_5b5ce3a0.length:
                    mem[0] = sub_5b5ce3a0[idx]
                    mem[32] = 217
                    if baseTokenAddress == sub_5b5ce3a0[idx]:
                        if sub_5442c9c5[stor209[idx]] + u < u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        u = sub_5442c9c5[stor209[idx]] + u
                        continue 
                    if not sub_5442c9c5[stor209[idx]]:
                        if sub_5442c9c5[stor209[idx]] + u < u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        u = sub_5442c9c5[stor209[idx]] + u
                        continue 
                    mem[100] = sub_5b5ce3a0[idx]
                    mem[132] = baseTokenAddress
                    mem[164] = sub_5442c9c5[stor209[idx]]
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + u < u:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    u = ext_call.return_data[0] + u
                    continue 
                if not u:
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if t <= (0 / sub_9a110852) + sub_6c6f4542:
                        if u + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_7e035c26[arg1]:
                            if not u + sub_6c6f4542:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= 0:
                                        return 1
                            else:
                                if (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / u + sub_6c6f4542 != sub_7e035c26[arg1]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / 10000:
                                    if arg2 <= 0:
                                        return 1
                        else:
                            if not u + sub_6c6f4542:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= 0:
                                        return 1
                            else:
                                if (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / u + sub_6c6f4542 != coverAmtPPMaxRatio:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / 10000:
                                    if arg2 <= 0:
                                        return 1
                    else:
                        if sub_6c6f4542 > t:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not t - sub_6c6f4542:
                            if u > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not sub_6c6f4542:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= -u:
                                            return 1
                                else:
                                    if sub_7e035c26[arg1] * sub_6c6f4542 / sub_6c6f4542 != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= sub_7e035c26[arg1] * sub_6c6f4542 / 10000:
                                        if arg2 <= -u:
                                            return 1
                            else:
                                if not sub_6c6f4542:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= -u:
                                            return 1
                                else:
                                    if coverAmtPPMaxRatio * sub_6c6f4542 / sub_6c6f4542 != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= coverAmtPPMaxRatio * sub_6c6f4542 / 10000:
                                        if arg2 <= -u:
                                            return 1
                        else:
                            if (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / t - sub_6c6f4542 != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if u > (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                            else:
                                if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                else:
                    if 10000 * u / u != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (10000 * u / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if t <= (10000 * u / sub_9a110852) + sub_6c6f4542:
                        if u + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_7e035c26[arg1]:
                            if not u + sub_6c6f4542:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= 0:
                                        return 1
                            else:
                                if (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / u + sub_6c6f4542 != sub_7e035c26[arg1]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / 10000:
                                    if arg2 <= 0:
                                        return 1
                        else:
                            if not u + sub_6c6f4542:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= 0:
                                        return 1
                            else:
                                if (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / u + sub_6c6f4542 != coverAmtPPMaxRatio:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / 10000:
                                    if arg2 <= 0:
                                        return 1
                    else:
                        if sub_6c6f4542 > t:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not t - sub_6c6f4542:
                            if u > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not sub_6c6f4542:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= -u:
                                            return 1
                                else:
                                    if sub_7e035c26[arg1] * sub_6c6f4542 / sub_6c6f4542 != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= sub_7e035c26[arg1] * sub_6c6f4542 / 10000:
                                        if arg2 <= -u:
                                            return 1
                            else:
                                if not sub_6c6f4542:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= -u:
                                            return 1
                                else:
                                    if coverAmtPPMaxRatio * sub_6c6f4542 / sub_6c6f4542 != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= coverAmtPPMaxRatio * sub_6c6f4542 / 10000:
                                        if arg2 <= -u:
                                            return 1
                        else:
                            if (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / t - sub_6c6f4542 != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if u > (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                            else:
                                if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
            else:
                require ext_code.size(exchangeRateAddress)
                staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                        gas gas_remaining wei
                       args sub_59ed9a3aAddress, baseTokenAddress, sub_6c6f4542
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                idx = 0
                u = 0
                while idx < sub_5b5ce3a0.length:
                    mem[0] = sub_5b5ce3a0[idx]
                    mem[32] = 217
                    if baseTokenAddress == sub_5b5ce3a0[idx]:
                        if sub_5442c9c5[stor209[idx]] + u < u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        u = sub_5442c9c5[stor209[idx]] + u
                        continue 
                    if not sub_5442c9c5[stor209[idx]]:
                        if sub_5442c9c5[stor209[idx]] + u < u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        u = sub_5442c9c5[stor209[idx]] + u
                        continue 
                    mem[100] = sub_5b5ce3a0[idx]
                    mem[132] = baseTokenAddress
                    mem[164] = sub_5442c9c5[stor209[idx]]
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + u < u:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    u = ext_call.return_data[0] + u
                    continue 
                if not u:
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (0 / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if t <= (0 / sub_9a110852) + ext_call.return_data[0]:
                        if u + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_7e035c26[arg1]:
                            if not u + ext_call.return_data[0]:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= 0:
                                        return 1
                            else:
                                if (u * sub_7e035c26[arg1]) + (ext_call.return_data[0] * sub_7e035c26[arg1]) / u + ext_call.return_data[0] != sub_7e035c26[arg1]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (u * sub_7e035c26[arg1]) + (ext_call.return_data[0] * sub_7e035c26[arg1]) / 10000:
                                    if arg2 <= 0:
                                        return 1
                        else:
                            if not u + ext_call.return_data[0]:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= 0:
                                        return 1
                            else:
                                if (u * coverAmtPPMaxRatio) + (ext_call.return_data[0] * coverAmtPPMaxRatio) / u + ext_call.return_data[0] != coverAmtPPMaxRatio:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (u * coverAmtPPMaxRatio) + (ext_call.return_data[0] * coverAmtPPMaxRatio) / 10000:
                                    if arg2 <= 0:
                                        return 1
                    else:
                        if ext_call.return_data[0] > t:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not t - ext_call.return_data[0]:
                            if u > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not ext_call.return_data[0]:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= -u:
                                            return 1
                                else:
                                    if sub_7e035c26[arg1] * ext_call.return_data[0] / ext_call.return_data[0] != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= sub_7e035c26[arg1] * ext_call.return_data[0] / 10000:
                                        if arg2 <= -u:
                                            return 1
                            else:
                                if not ext_call.return_data[0]:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= -u:
                                            return 1
                                else:
                                    if coverAmtPPMaxRatio * ext_call.return_data[0] / ext_call.return_data[0] != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= coverAmtPPMaxRatio * ext_call.return_data[0] / 10000:
                                        if arg2 <= -u:
                                            return 1
                        else:
                            if (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / t - ext_call.return_data[0] != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if u > (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000):
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (ext_call.return_data[0] * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (ext_call.return_data[0] * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                        if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                            return 1
                            else:
                                if not ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000):
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (ext_call.return_data[0] * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (ext_call.return_data[0] * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                        if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                            return 1
                else:
                    if 10000 * u / u != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (10000 * u / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if t <= (10000 * u / sub_9a110852) + ext_call.return_data[0]:
                        if u + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_7e035c26[arg1]:
                            if not u + ext_call.return_data[0]:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= 0:
                                        return 1
                            else:
                                if (u * sub_7e035c26[arg1]) + (ext_call.return_data[0] * sub_7e035c26[arg1]) / u + ext_call.return_data[0] != sub_7e035c26[arg1]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (u * sub_7e035c26[arg1]) + (ext_call.return_data[0] * sub_7e035c26[arg1]) / 10000:
                                    if arg2 <= 0:
                                        return 1
                        else:
                            if not u + ext_call.return_data[0]:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= 0:
                                        return 1
                            else:
                                if (u * coverAmtPPMaxRatio) + (ext_call.return_data[0] * coverAmtPPMaxRatio) / u + ext_call.return_data[0] != coverAmtPPMaxRatio:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (u * coverAmtPPMaxRatio) + (ext_call.return_data[0] * coverAmtPPMaxRatio) / 10000:
                                    if arg2 <= 0:
                                        return 1
                    else:
                        if ext_call.return_data[0] > t:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not t - ext_call.return_data[0]:
                            if u > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not ext_call.return_data[0]:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= -u:
                                            return 1
                                else:
                                    if sub_7e035c26[arg1] * ext_call.return_data[0] / ext_call.return_data[0] != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= sub_7e035c26[arg1] * ext_call.return_data[0] / 10000:
                                        if arg2 <= -u:
                                            return 1
                            else:
                                if not ext_call.return_data[0]:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= -u:
                                            return 1
                                else:
                                    if coverAmtPPMaxRatio * ext_call.return_data[0] / ext_call.return_data[0] != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= coverAmtPPMaxRatio * ext_call.return_data[0] / 10000:
                                        if arg2 <= -u:
                                            return 1
                        else:
                            if (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / t - ext_call.return_data[0] != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if u > (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000):
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (ext_call.return_data[0] * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (ext_call.return_data[0] * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                        if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                            return 1
                            else:
                                if not ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000):
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (ext_call.return_data[0] * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (ext_call.return_data[0] * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                        if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                            return 1
    else:
        if not arg2:
            idx = 0
            t = 0
            while idx < sub_7494bc56.length:
                mem[0] = 202
                mem[100] = sub_7494bc56[idx]
                require ext_code.size(sub_30144f96Address)
                staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                        gas gas_remaining wei
                       args sub_7494bc56[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if baseTokenAddress != sub_7494bc56[idx]:
                    if ext_call.return_data[0]:
                        mem[100] = sub_7494bc56[idx]
                        mem[132] = baseTokenAddress
                        mem[164] = ext_call.return_data[0]
                        require ext_code.size(exchangeRateAddress)
                        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args sub_7494bc56[idx], baseTokenAddress, ext_call.return_data[0]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if ext_call.return_data[0] + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                t = ext_call.return_data[0] + t
                continue 
            if baseTokenAddress == sub_59ed9a3aAddress:
                idx = 0
                u = 0
                while idx < sub_5b5ce3a0.length:
                    mem[0] = sub_5b5ce3a0[idx]
                    mem[32] = 217
                    if baseTokenAddress == sub_5b5ce3a0[idx]:
                        if sub_5442c9c5[stor209[idx]] + u < u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        u = sub_5442c9c5[stor209[idx]] + u
                        continue 
                    if not sub_5442c9c5[stor209[idx]]:
                        if sub_5442c9c5[stor209[idx]] + u < u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        u = sub_5442c9c5[stor209[idx]] + u
                        continue 
                    mem[100] = sub_5b5ce3a0[idx]
                    mem[132] = baseTokenAddress
                    mem[164] = sub_5442c9c5[stor209[idx]]
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + u < u:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    u = ext_call.return_data[0] + u
                    continue 
                if not u:
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if t <= (0 / sub_9a110852) + sub_6c6f4542:
                        if u + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_7e035c26[arg1]:
                            if not u + sub_6c6f4542:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= 0:
                                        return 1
                            else:
                                if (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / u + sub_6c6f4542 != sub_7e035c26[arg1]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / 10000:
                                    if arg2 <= 0:
                                        return 1
                        else:
                            if not u + sub_6c6f4542:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= 0:
                                        return 1
                            else:
                                if (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / u + sub_6c6f4542 != coverAmtPPMaxRatio:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / 10000:
                                    if arg2 <= 0:
                                        return 1
                    else:
                        if sub_6c6f4542 > t:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not t - sub_6c6f4542:
                            if u > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not sub_6c6f4542:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= -u:
                                            return 1
                                else:
                                    if sub_7e035c26[arg1] * sub_6c6f4542 / sub_6c6f4542 != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= sub_7e035c26[arg1] * sub_6c6f4542 / 10000:
                                        if arg2 <= -u:
                                            return 1
                            else:
                                if not sub_6c6f4542:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= -u:
                                            return 1
                                else:
                                    if coverAmtPPMaxRatio * sub_6c6f4542 / sub_6c6f4542 != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= coverAmtPPMaxRatio * sub_6c6f4542 / 10000:
                                        if arg2 <= -u:
                                            return 1
                        else:
                            if (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / t - sub_6c6f4542 != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if u > (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                            else:
                                if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                else:
                    if 10000 * u / u != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (10000 * u / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if t <= (10000 * u / sub_9a110852) + sub_6c6f4542:
                        if u + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_7e035c26[arg1]:
                            if not u + sub_6c6f4542:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= 0:
                                        return 1
                            else:
                                if (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / u + sub_6c6f4542 != sub_7e035c26[arg1]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / 10000:
                                    if arg2 <= 0:
                                        return 1
                        else:
                            if not u + sub_6c6f4542:
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= 0:
                                    if arg2 <= 0:
                                        return 1
                            else:
                                if (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / u + sub_6c6f4542 != coverAmtPPMaxRatio:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + arg2 < arg2:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + arg2 <= (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / 10000:
                                    if arg2 <= 0:
                                        return 1
                    else:
                        if sub_6c6f4542 > t:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not t - sub_6c6f4542:
                            if u > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not sub_6c6f4542:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= -u:
                                            return 1
                                else:
                                    if sub_7e035c26[arg1] * sub_6c6f4542 / sub_6c6f4542 != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= sub_7e035c26[arg1] * sub_6c6f4542 / 10000:
                                        if arg2 <= -u:
                                            return 1
                            else:
                                if not sub_6c6f4542:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= -u:
                                            return 1
                                else:
                                    if coverAmtPPMaxRatio * sub_6c6f4542 / sub_6c6f4542 != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= coverAmtPPMaxRatio * sub_6c6f4542 / 10000:
                                        if arg2 <= -u:
                                            return 1
                        else:
                            if (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / t - sub_6c6f4542 != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if u > (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                            else:
                                if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                        if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
            else:
                if not sub_6c6f4542:
                    idx = 0
                    u = 0
                    while idx < sub_5b5ce3a0.length:
                        mem[0] = sub_5b5ce3a0[idx]
                        mem[32] = 217
                        if baseTokenAddress == sub_5b5ce3a0[idx]:
                            if sub_5442c9c5[stor209[idx]] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            u = sub_5442c9c5[stor209[idx]] + u
                            continue 
                        if not sub_5442c9c5[stor209[idx]]:
                            if sub_5442c9c5[stor209[idx]] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            u = sub_5442c9c5[stor209[idx]] + u
                            continue 
                        mem[100] = sub_5b5ce3a0[idx]
                        mem[132] = baseTokenAddress
                        mem[164] = sub_5442c9c5[stor209[idx]]
                        require ext_code.size(exchangeRateAddress)
                        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + u < u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        u = ext_call.return_data[0] + u
                        continue 
                    if not u:
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if t <= (0 / sub_9a110852) + sub_6c6f4542:
                            if u + sub_6c6f4542 < sub_6c6f4542:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not u + sub_6c6f4542:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= 0:
                                            return 1
                                else:
                                    if (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / u + sub_6c6f4542 != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / 10000:
                                        if arg2 <= 0:
                                            return 1
                            else:
                                if not u + sub_6c6f4542:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= 0:
                                            return 1
                                else:
                                    if (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / u + sub_6c6f4542 != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / 10000:
                                        if arg2 <= 0:
                                            return 1
                        else:
                            if sub_6c6f4542 > t:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not t - sub_6c6f4542:
                                if u > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not sub_6c6f4542:
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= -u:
                                                return 1
                                    else:
                                        if sub_7e035c26[arg1] * sub_6c6f4542 / sub_6c6f4542 != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= sub_7e035c26[arg1] * sub_6c6f4542 / 10000:
                                            if arg2 <= -u:
                                                return 1
                                else:
                                    if not sub_6c6f4542:
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= -u:
                                                return 1
                                    else:
                                        if coverAmtPPMaxRatio * sub_6c6f4542 / sub_6c6f4542 != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= coverAmtPPMaxRatio * sub_6c6f4542 / 10000:
                                            if arg2 <= -u:
                                                return 1
                            else:
                                if (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / t - sub_6c6f4542 != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if u > (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                            if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                                else:
                                    if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                            if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                    else:
                        if 10000 * u / u != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (10000 * u / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if t <= (10000 * u / sub_9a110852) + sub_6c6f4542:
                            if u + sub_6c6f4542 < sub_6c6f4542:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not u + sub_6c6f4542:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= 0:
                                            return 1
                                else:
                                    if (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / u + sub_6c6f4542 != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / 10000:
                                        if arg2 <= 0:
                                            return 1
                            else:
                                if not u + sub_6c6f4542:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= 0:
                                            return 1
                                else:
                                    if (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / u + sub_6c6f4542 != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / 10000:
                                        if arg2 <= 0:
                                            return 1
                        else:
                            if sub_6c6f4542 > t:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not t - sub_6c6f4542:
                                if u > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not sub_6c6f4542:
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= -u:
                                                return 1
                                    else:
                                        if sub_7e035c26[arg1] * sub_6c6f4542 / sub_6c6f4542 != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= sub_7e035c26[arg1] * sub_6c6f4542 / 10000:
                                            if arg2 <= -u:
                                                return 1
                                else:
                                    if not sub_6c6f4542:
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= -u:
                                                return 1
                                    else:
                                        if coverAmtPPMaxRatio * sub_6c6f4542 / sub_6c6f4542 != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= coverAmtPPMaxRatio * sub_6c6f4542 / 10000:
                                            if arg2 <= -u:
                                                return 1
                            else:
                                if (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / t - sub_6c6f4542 != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if u > (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                            if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                                else:
                                    if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                            if arg2 <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                else:
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_59ed9a3aAddress, baseTokenAddress, sub_6c6f4542
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    u = 0
                    while idx < sub_5b5ce3a0.length:
                        mem[0] = sub_5b5ce3a0[idx]
                        mem[32] = 217
                        if baseTokenAddress == sub_5b5ce3a0[idx]:
                            if sub_5442c9c5[stor209[idx]] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            u = sub_5442c9c5[stor209[idx]] + u
                            continue 
                        if not sub_5442c9c5[stor209[idx]]:
                            if sub_5442c9c5[stor209[idx]] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            u = sub_5442c9c5[stor209[idx]] + u
                            continue 
                        mem[100] = sub_5b5ce3a0[idx]
                        mem[132] = baseTokenAddress
                        mem[164] = sub_5442c9c5[stor209[idx]]
                        require ext_code.size(exchangeRateAddress)
                        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + u < u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        u = ext_call.return_data[0] + u
                        continue 
                    if not u:
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (0 / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if t <= (0 / sub_9a110852) + ext_call.return_data[0]:
                            if u + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not u + ext_call.return_data[0]:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= 0:
                                            return 1
                                else:
                                    if (u * sub_7e035c26[arg1]) + (ext_call.return_data[0] * sub_7e035c26[arg1]) / u + ext_call.return_data[0] != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (u * sub_7e035c26[arg1]) + (ext_call.return_data[0] * sub_7e035c26[arg1]) / 10000:
                                        if arg2 <= 0:
                                            return 1
                            else:
                                if not u + ext_call.return_data[0]:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= 0:
                                            return 1
                                else:
                                    if (u * coverAmtPPMaxRatio) + (ext_call.return_data[0] * coverAmtPPMaxRatio) / u + ext_call.return_data[0] != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (u * coverAmtPPMaxRatio) + (ext_call.return_data[0] * coverAmtPPMaxRatio) / 10000:
                                        if arg2 <= 0:
                                            return 1
                        else:
                            if ext_call.return_data[0] > t:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not t - ext_call.return_data[0]:
                                if u > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not ext_call.return_data[0]:
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= -u:
                                                return 1
                                    else:
                                        if sub_7e035c26[arg1] * ext_call.return_data[0] / ext_call.return_data[0] != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= sub_7e035c26[arg1] * ext_call.return_data[0] / 10000:
                                            if arg2 <= -u:
                                                return 1
                                else:
                                    if not ext_call.return_data[0]:
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= -u:
                                                return 1
                                    else:
                                        if coverAmtPPMaxRatio * ext_call.return_data[0] / ext_call.return_data[0] != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= coverAmtPPMaxRatio * ext_call.return_data[0] / 10000:
                                            if arg2 <= -u:
                                                return 1
                            else:
                                if (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / t - ext_call.return_data[0] != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if u > (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000):
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (ext_call.return_data[0] * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= (ext_call.return_data[0] * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                            if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                                else:
                                    if not ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000):
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (ext_call.return_data[0] * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= (ext_call.return_data[0] * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                            if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                    else:
                        if 10000 * u / u != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (10000 * u / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if t <= (10000 * u / sub_9a110852) + ext_call.return_data[0]:
                            if u + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not u + ext_call.return_data[0]:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= 0:
                                            return 1
                                else:
                                    if (u * sub_7e035c26[arg1]) + (ext_call.return_data[0] * sub_7e035c26[arg1]) / u + ext_call.return_data[0] != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (u * sub_7e035c26[arg1]) + (ext_call.return_data[0] * sub_7e035c26[arg1]) / 10000:
                                        if arg2 <= 0:
                                            return 1
                            else:
                                if not u + ext_call.return_data[0]:
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= 0:
                                        if arg2 <= 0:
                                            return 1
                                else:
                                    if (u * coverAmtPPMaxRatio) + (ext_call.return_data[0] * coverAmtPPMaxRatio) / u + ext_call.return_data[0] != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + arg2 < arg2:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + arg2 <= (u * coverAmtPPMaxRatio) + (ext_call.return_data[0] * coverAmtPPMaxRatio) / 10000:
                                        if arg2 <= 0:
                                            return 1
                        else:
                            if ext_call.return_data[0] > t:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not t - ext_call.return_data[0]:
                                if u > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not ext_call.return_data[0]:
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= -u:
                                                return 1
                                    else:
                                        if sub_7e035c26[arg1] * ext_call.return_data[0] / ext_call.return_data[0] != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= sub_7e035c26[arg1] * ext_call.return_data[0] / 10000:
                                            if arg2 <= -u:
                                                return 1
                                else:
                                    if not ext_call.return_data[0]:
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= -u:
                                                return 1
                                    else:
                                        if coverAmtPPMaxRatio * ext_call.return_data[0] / ext_call.return_data[0] != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= coverAmtPPMaxRatio * ext_call.return_data[0] / 10000:
                                            if arg2 <= -u:
                                                return 1
                            else:
                                if (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / t - ext_call.return_data[0] != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if u > (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000):
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (ext_call.return_data[0] * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= (ext_call.return_data[0] * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                            if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                                else:
                                    if not ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000):
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= 0:
                                            if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (ext_call.return_data[0] * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + arg2 < arg2:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + arg2 <= (ext_call.return_data[0] * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                            if arg2 <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
        else:
            require ext_code.size(exchangeRateAddress)
            staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args address(arg3), baseTokenAddress, arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = 0
            t = 0
            while idx < sub_7494bc56.length:
                mem[0] = 202
                mem[100] = sub_7494bc56[idx]
                require ext_code.size(sub_30144f96Address)
                staticcall sub_30144f96Address.getStakedAmountPT(address rg1) with:
                        gas gas_remaining wei
                       args sub_7494bc56[idx]
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if baseTokenAddress != sub_7494bc56[idx]:
                    if ext_call.return_data[0]:
                        mem[100] = sub_7494bc56[idx]
                        mem[132] = baseTokenAddress
                        mem[164] = ext_call.return_data[0]
                        require ext_code.size(exchangeRateAddress)
                        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args sub_7494bc56[idx], baseTokenAddress, ext_call.return_data[0]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                if ext_call.return_data[0] + t < t:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                t = ext_call.return_data[0] + t
                continue 
            if baseTokenAddress == sub_59ed9a3aAddress:
                idx = 0
                u = 0
                while idx < sub_5b5ce3a0.length:
                    mem[0] = sub_5b5ce3a0[idx]
                    mem[32] = 217
                    if baseTokenAddress == sub_5b5ce3a0[idx]:
                        if sub_5442c9c5[stor209[idx]] + u < u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        u = sub_5442c9c5[stor209[idx]] + u
                        continue 
                    if not sub_5442c9c5[stor209[idx]]:
                        if sub_5442c9c5[stor209[idx]] + u < u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        u = sub_5442c9c5[stor209[idx]] + u
                        continue 
                    mem[100] = sub_5b5ce3a0[idx]
                    mem[132] = baseTokenAddress
                    mem[164] = sub_5442c9c5[stor209[idx]]
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                    mem[96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + u < u:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    u = ext_call.return_data[0] + u
                    continue 
                if not u:
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if t <= (0 / sub_9a110852) + sub_6c6f4542:
                        if u + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_7e035c26[arg1]:
                            if not u + sub_6c6f4542:
                                if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + ext_call.return_data[0] <= 0:
                                    if ext_call.return_data[0] <= 0:
                                        return 1
                            else:
                                if (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / u + sub_6c6f4542 != sub_7e035c26[arg1]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + ext_call.return_data[0] <= (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / 10000:
                                    if ext_call.return_data[0] <= 0:
                                        return 1
                        else:
                            if not u + sub_6c6f4542:
                                if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + ext_call.return_data[0] <= 0:
                                    if ext_call.return_data[0] <= 0:
                                        return 1
                            else:
                                if (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / u + sub_6c6f4542 != coverAmtPPMaxRatio:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + ext_call.return_data[0] <= (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / 10000:
                                    if ext_call.return_data[0] <= 0:
                                        return 1
                    else:
                        if sub_6c6f4542 > t:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not t - sub_6c6f4542:
                            if u > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not sub_6c6f4542:
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= -u:
                                            return 1
                                else:
                                    if sub_7e035c26[arg1] * sub_6c6f4542 / sub_6c6f4542 != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= sub_7e035c26[arg1] * sub_6c6f4542 / 10000:
                                        if ext_call.return_data[0] <= -u:
                                            return 1
                            else:
                                if not sub_6c6f4542:
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= -u:
                                            return 1
                                else:
                                    if coverAmtPPMaxRatio * sub_6c6f4542 / sub_6c6f4542 != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= coverAmtPPMaxRatio * sub_6c6f4542 / 10000:
                                        if ext_call.return_data[0] <= -u:
                                            return 1
                        else:
                            if (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / t - sub_6c6f4542 != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if u > (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                        if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                            else:
                                if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                        if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                else:
                    if 10000 * u / u != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                    if sub_9a110852 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require sub_9a110852
                    if (10000 * u / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                        revert with 0, 'SafeMath: addition overflow'
                    if t <= (10000 * u / sub_9a110852) + sub_6c6f4542:
                        if u + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_7e035c26[arg1]:
                            if not u + sub_6c6f4542:
                                if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + ext_call.return_data[0] <= 0:
                                    if ext_call.return_data[0] <= 0:
                                        return 1
                            else:
                                if (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / u + sub_6c6f4542 != sub_7e035c26[arg1]:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + ext_call.return_data[0] <= (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / 10000:
                                    if ext_call.return_data[0] <= 0:
                                        return 1
                        else:
                            if not u + sub_6c6f4542:
                                if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + ext_call.return_data[0] <= 0:
                                    if ext_call.return_data[0] <= 0:
                                        return 1
                            else:
                                if (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / u + sub_6c6f4542 != coverAmtPPMaxRatio:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if s + ext_call.return_data[0] <= (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / 10000:
                                    if ext_call.return_data[0] <= 0:
                                        return 1
                    else:
                        if sub_6c6f4542 > t:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not t - sub_6c6f4542:
                            if u > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not sub_6c6f4542:
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= -u:
                                            return 1
                                else:
                                    if sub_7e035c26[arg1] * sub_6c6f4542 / sub_6c6f4542 != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= sub_7e035c26[arg1] * sub_6c6f4542 / 10000:
                                        if ext_call.return_data[0] <= -u:
                                            return 1
                            else:
                                if not sub_6c6f4542:
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= -u:
                                            return 1
                                else:
                                    if coverAmtPPMaxRatio * sub_6c6f4542 / sub_6c6f4542 != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= coverAmtPPMaxRatio * sub_6c6f4542 / 10000:
                                        if ext_call.return_data[0] <= -u:
                                            return 1
                        else:
                            if (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / t - sub_6c6f4542 != sub_9a110852:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if u > (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                        if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                            else:
                                if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
                                else:
                                    if (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                        if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                            return 1
            else:
                if not sub_6c6f4542:
                    idx = 0
                    u = 0
                    while idx < sub_5b5ce3a0.length:
                        mem[0] = sub_5b5ce3a0[idx]
                        mem[32] = 217
                        if baseTokenAddress == sub_5b5ce3a0[idx]:
                            if sub_5442c9c5[stor209[idx]] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            u = sub_5442c9c5[stor209[idx]] + u
                            continue 
                        if not sub_5442c9c5[stor209[idx]]:
                            if sub_5442c9c5[stor209[idx]] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            u = sub_5442c9c5[stor209[idx]] + u
                            continue 
                        mem[100] = sub_5b5ce3a0[idx]
                        mem[132] = baseTokenAddress
                        mem[164] = sub_5442c9c5[stor209[idx]]
                        require ext_code.size(exchangeRateAddress)
                        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + u < u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        u = ext_call.return_data[0] + u
                        continue 
                    if not u:
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (0 / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if t <= (0 / sub_9a110852) + sub_6c6f4542:
                            if u + sub_6c6f4542 < sub_6c6f4542:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not u + sub_6c6f4542:
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                                else:
                                    if (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / u + sub_6c6f4542 != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / 10000:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                            else:
                                if not u + sub_6c6f4542:
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                                else:
                                    if (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / u + sub_6c6f4542 != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / 10000:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                        else:
                            if sub_6c6f4542 > t:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not t - sub_6c6f4542:
                                if u > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not sub_6c6f4542:
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                                    else:
                                        if sub_7e035c26[arg1] * sub_6c6f4542 / sub_6c6f4542 != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= sub_7e035c26[arg1] * sub_6c6f4542 / 10000:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                                else:
                                    if not sub_6c6f4542:
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                                    else:
                                        if coverAmtPPMaxRatio * sub_6c6f4542 / sub_6c6f4542 != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= coverAmtPPMaxRatio * sub_6c6f4542 / 10000:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                            else:
                                if (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / t - sub_6c6f4542 != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if u > (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                                else:
                                    if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                    else:
                        if 10000 * u / u != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (10000 * u / sub_9a110852) + sub_6c6f4542 < sub_6c6f4542:
                            revert with 0, 'SafeMath: addition overflow'
                        if t <= (10000 * u / sub_9a110852) + sub_6c6f4542:
                            if u + sub_6c6f4542 < sub_6c6f4542:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not u + sub_6c6f4542:
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                                else:
                                    if (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / u + sub_6c6f4542 != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= (u * sub_7e035c26[arg1]) + (sub_6c6f4542 * sub_7e035c26[arg1]) / 10000:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                            else:
                                if not u + sub_6c6f4542:
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                                else:
                                    if (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / u + sub_6c6f4542 != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= (u * coverAmtPPMaxRatio) + (sub_6c6f4542 * coverAmtPPMaxRatio) / 10000:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                        else:
                            if sub_6c6f4542 > t:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not t - sub_6c6f4542:
                                if u > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not sub_6c6f4542:
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                                    else:
                                        if sub_7e035c26[arg1] * sub_6c6f4542 / sub_6c6f4542 != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= sub_7e035c26[arg1] * sub_6c6f4542 / 10000:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                                else:
                                    if not sub_6c6f4542:
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                                    else:
                                        if coverAmtPPMaxRatio * sub_6c6f4542 / sub_6c6f4542 != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= coverAmtPPMaxRatio * sub_6c6f4542 / 10000:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                            else:
                                if (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / t - sub_6c6f4542 != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if u > (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) < (t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= (sub_6c6f4542 * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                                else:
                                    if not sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000):
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / sub_6c6f4542 + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= (sub_6c6f4542 * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (sub_6c6f4542 * sub_9a110852) / 10000) - u:
                                                return 1
                else:
                    require ext_code.size(exchangeRateAddress)
                    staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                            gas gas_remaining wei
                           args sub_59ed9a3aAddress, baseTokenAddress, sub_6c6f4542
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    idx = 0
                    u = 0
                    while idx < sub_5b5ce3a0.length:
                        mem[0] = sub_5b5ce3a0[idx]
                        mem[32] = 217
                        if baseTokenAddress == sub_5b5ce3a0[idx]:
                            if sub_5442c9c5[stor209[idx]] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            u = sub_5442c9c5[stor209[idx]] + u
                            continue 
                        if not sub_5442c9c5[stor209[idx]]:
                            if sub_5442c9c5[stor209[idx]] + u < u:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            u = sub_5442c9c5[stor209[idx]] + u
                            continue 
                        mem[100] = sub_5b5ce3a0[idx]
                        mem[132] = baseTokenAddress
                        mem[164] = sub_5442c9c5[stor209[idx]]
                        require ext_code.size(exchangeRateAddress)
                        staticcall exchangeRateAddress.getTokenToTokenAmount(address rg1, address rg2, uint256 rg3) with:
                                gas gas_remaining wei
                               args sub_5b5ce3a0[idx], baseTokenAddress, sub_5442c9c5[stor209[idx]]
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] + u < u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        u = ext_call.return_data[0] + u
                        continue 
                    if not u:
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (0 / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if t <= (0 / sub_9a110852) + ext_call.return_data[0]:
                            if u + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not u + ext_call.return_data[0]:
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                                else:
                                    if (u * sub_7e035c26[arg1]) + (ext_call.return_data[0] * sub_7e035c26[arg1]) / u + ext_call.return_data[0] != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= (u * sub_7e035c26[arg1]) + (ext_call.return_data[0] * sub_7e035c26[arg1]) / 10000:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                            else:
                                if not u + ext_call.return_data[0]:
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                                else:
                                    if (u * coverAmtPPMaxRatio) + (ext_call.return_data[0] * coverAmtPPMaxRatio) / u + ext_call.return_data[0] != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= (u * coverAmtPPMaxRatio) + (ext_call.return_data[0] * coverAmtPPMaxRatio) / 10000:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                        else:
                            if ext_call.return_data[0] > t:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not t - ext_call.return_data[0]:
                                if u > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not ext_call.return_data[0]:
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                                    else:
                                        if sub_7e035c26[arg1] * ext_call.return_data[0] / ext_call.return_data[0] != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= sub_7e035c26[arg1] * ext_call.return_data[0] / 10000:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                                else:
                                    if not ext_call.return_data[0]:
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                                    else:
                                        if coverAmtPPMaxRatio * ext_call.return_data[0] / ext_call.return_data[0] != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= coverAmtPPMaxRatio * ext_call.return_data[0] / 10000:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                            else:
                                if (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / t - ext_call.return_data[0] != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if u > (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000):
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (ext_call.return_data[0] * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= (ext_call.return_data[0] * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                                else:
                                    if not ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000):
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (ext_call.return_data[0] * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= (ext_call.return_data[0] * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                    else:
                        if 10000 * u / u != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if sub_9a110852 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_9a110852
                        if (10000 * u / sub_9a110852) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        if t <= (10000 * u / sub_9a110852) + ext_call.return_data[0]:
                            if u + ext_call.return_data[0] < ext_call.return_data[0]:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_7e035c26[arg1]:
                                if not u + ext_call.return_data[0]:
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                                else:
                                    if (u * sub_7e035c26[arg1]) + (ext_call.return_data[0] * sub_7e035c26[arg1]) / u + ext_call.return_data[0] != sub_7e035c26[arg1]:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= (u * sub_7e035c26[arg1]) + (ext_call.return_data[0] * sub_7e035c26[arg1]) / 10000:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                            else:
                                if not u + ext_call.return_data[0]:
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= 0:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                                else:
                                    if (u * coverAmtPPMaxRatio) + (ext_call.return_data[0] * coverAmtPPMaxRatio) / u + ext_call.return_data[0] != coverAmtPPMaxRatio:
                                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if s + ext_call.return_data[0] <= (u * coverAmtPPMaxRatio) + (ext_call.return_data[0] * coverAmtPPMaxRatio) / 10000:
                                        if ext_call.return_data[0] <= 0:
                                            return 1
                        else:
                            if ext_call.return_data[0] > t:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not t - ext_call.return_data[0]:
                                if u > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not ext_call.return_data[0]:
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                                    else:
                                        if sub_7e035c26[arg1] * ext_call.return_data[0] / ext_call.return_data[0] != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= sub_7e035c26[arg1] * ext_call.return_data[0] / 10000:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                                else:
                                    if not ext_call.return_data[0]:
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                                    else:
                                        if coverAmtPPMaxRatio * ext_call.return_data[0] / ext_call.return_data[0] != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= coverAmtPPMaxRatio * ext_call.return_data[0] / 10000:
                                            if ext_call.return_data[0] <= -u:
                                                return 1
                            else:
                                if (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / t - ext_call.return_data[0] != sub_9a110852:
                                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if u > (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) < (t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_7e035c26[arg1]:
                                    if not ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000):
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (ext_call.return_data[0] * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) != sub_7e035c26[arg1]:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= (ext_call.return_data[0] * sub_7e035c26[arg1]) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * sub_7e035c26[arg1]) / 10000:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                                else:
                                    if not ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000):
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= 0:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
                                    else:
                                        if (ext_call.return_data[0] * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / ext_call.return_data[0] + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) != coverAmtPPMaxRatio:
                                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if s + ext_call.return_data[0] < ext_call.return_data[0]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if s + ext_call.return_data[0] <= (ext_call.return_data[0] * coverAmtPPMaxRatio) + ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000 * coverAmtPPMaxRatio) / 10000:
                                            if ext_call.return_data[0] <= ((t * sub_9a110852) - (ext_call.return_data[0] * sub_9a110852) / 10000) - u:
                                                return 1
    return 0
}



}
