contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - sub_44b0de49(?)
#
address owner;
address priceFeedAddress;
bool stor2; offset 256
uint8 stor2; offset 160
uint8 stor2; offset 168
uint8 stor2; offset 176
uint128 stor2; offset 176
uint128 stor2; offset 160
address sub_9b6ae214Address;
mapping of struct stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 _totalSupply;
uint8 _decimals;
array of uint256 _symbol;
array of uint256 _name;
address tokenAddress;
address stor11;
address cronAddress;
uint256 stor13;
uint256 stor14;
address sub_b7b58b7fAddress;
address adminAddress;
uint256 sub_93c63140;
array of struct stor18;
uint256 stor19;
uint256 stor20;
mapping of struct sub_e128cca9;
uint256 sub_2445aefb;
array of struct stor23;
uint256 stor24;
uint256 stor25;
mapping of struct stor26;
mapping of uint8 stor27;
address sub_d03b4236Address;
uint256 investorCount;
uint256 sub_a14ed18a;
uint256 stor31;
uint256 stor32;
bool stor34; offset 256
uint8 stor34; offset 32
uint8 stor34; offset 40
uint8 stor34; offset 48
uint8 stor34; offset 56
uint16 farmerRewardFee;
uint16 teamRewardFee; offset 16
uint16 stor34; offset 40
uint256 stor34; offset 56

function sub_0254be91(?) payable {
    return bool(uint8(stor2.field_160))
}

function name() payable {
    return _name[0 len _name.length].field_0
}

function getFarmerRewardFee() payable {
    return farmerRewardFee
}

function totalSupply() payable {
    return _totalSupply
}

function sub_2060cf34(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Not valid address'
    return bool(stor26[address(arg1)].field_0)
}

function getToken() payable {
    return tokenAddress
}

function isActive() payable {
    return bool(uint8(stor34.field_56))
}

function sub_2445aefb(?) payable {
    return sub_2445aefb
}

function withdrawPaused() payable {
    return bool(uint8(stor34.field_48))
}

function decimals() payable {
    return _decimals
}

function _decimals() payable {
    return _decimals
}

function _totalSupply() payable {
    return _totalSupply
}

function paused() payable {
    return bool(uint8(stor34.field_40))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getOwner() payable {
    return owner
}

function sub_8a02775b(?) payable {
    return sub_a14ed18a
}

function owner() payable {
    return owner
}

function getCronAddress() payable {
    return cronAddress
}

function sub_93c63140(?) payable {
    return sub_93c63140
}

function symbol() payable {
    return _symbol[0 len _symbol.length].field_0
}

function getInvestorCount() payable {
    return investorCount
}

function sub_9b6ae214(?) payable {
    return sub_9b6ae214Address
}

function getPriceFeed() payable {
    return priceFeedAddress
}

function sub_a14ed18a(?) payable {
    return sub_a14ed18a
}

function _symbol() payable {
    return _symbol[0 len _symbol.length].field_0
}

function sub_b7b58b7f(?) payable {
    return sub_b7b58b7fAddress
}

function getTeamRewardFee() payable {
    return teamRewardFee
}

function sub_d03b4236(?) payable {
    return sub_d03b4236Address
}

function _name() payable {
    return _name[0 len _name.length].field_0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e128cca9(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Not valid address'
    return sub_e128cca9[address(arg1)].field_256, sub_e128cca9[address(arg1)].field_512
}

function sub_fb068788(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor27[arg1])
}

function adminAddress() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function sub_d01be2b8(?) payable {
    return stor19, stor20
}

function sub_ebb6b5b0(?) payable {
    return stor24, stor25
}

function getinvestedAmountWithReward() payable {
    return (sub_a14ed18a + stor19)
}

function activatePool() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor34.field_56) = 1
}

function sub_2a7fd4c6(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor34.field_56) = 0
}

function getTotalInvestAmount() payable {
    if stor19 + stor13 < stor13:
        revert with 0, 'SafeMath: addition overflow'
    return (stor19 + stor13)
}

function getTotalInvestAmountInUSD() payable {
    if stor20 + stor14 < stor14:
        revert with 0, 'SafeMath: addition overflow'
    return (stor20 + stor14)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_c7df84ec(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'Pool: caller is not the admin'
    sub_a14ed18a = arg1
    stor32 = arg2
}

function setPriceFeed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    priceFeedAddress = arg1
}

function updateTeamReward(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamRewardFee = arg1
}

function updateFarmerReward(uint16 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    farmerRewardFee = arg1
}

function sub_9a01126c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9b6ae214Address = address(arg1)
}

function setReferralEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function sub_c07c2acf(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Pool: caller is not the admin'
    if arg1 <= 0:
        revert with 0, '_totalPoolValue must be non-zero'
    sub_a14ed18a = arg1
}

function setTeamAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Not valid address'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = arg1
}

function _pause() payable {
    if uint8(stor34.field_40):
        revert with 0, 'Pool: paused'
    if owner != msg.sender:
        if cronAddress != msg.sender:
            revert with 0, 'Pool: Invalid Operation'
    uint8(stor34.field_40) = 1
    emit Paused(msg.sender);
}

function setCronAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Not valid address'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cronAddress = arg1
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Not valid address'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tokenAddress = arg1
}

function setAdminAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Not valid address'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    adminAddress = arg1
}

function sub_9680bddb(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'Pool: caller is not the admin'
    if arg2 <= arg1:
        revert with 0, 'POOL: Wrong Input values passed'
    stor31 = arg1
    sub_a14ed18a = arg2
}

function setFarmerAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Not valid address'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b7b58b7fAddress = arg1
}

function _unpause() payable {
    if not uint8(stor34.field_40):
        revert with 0, 'Pool: not paused'
    if owner != msg.sender:
        if cronAddress != msg.sender:
            revert with 0, 'Pool: Invalid Operation'
    uint8(stor34.field_40) = 0
    emit Unpaused(msg.sender);
}

function sub_b7ed54bb(?) payable {
    if uint8(stor34.field_48):
        revert with 0, 'Pool: Withdraw paused'
    if owner != msg.sender:
        if cronAddress != msg.sender:
            revert with 0, 'Pool: Invalid Operation'
    uint8(stor34.field_48) = 1
    emit Paused(msg.sender);
}

function sub_3b90fd55(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Not valid address'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d03b4236Address = address(arg1)
}

function sub_98e4c202(?) payable {
    if not uint8(stor34.field_48):
        revert with 0, 'Pool: Withdraw not paused'
    if owner != msg.sender:
        if cronAddress != msg.sender:
            revert with 0, 'Pool: Invalid Operation'
    uint8(stor34.field_48) = 0
    emit Unpaused(msg.sender);
}

function isInvestor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Not valid address'
    if balanceOf[address(arg1)] > 0:
        if stor3[address(arg1)].field_0:
            return bool(stor3[address(arg1)].field_0)
    return bool(sub_e128cca9[address(arg1)].field_256)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getUserInvestedAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Not valid address'
    if sub_e128cca9[address(arg1)].field_256 + stor3[address(arg1)].field_256 < stor3[address(arg1)].field_256:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_e128cca9[address(arg1)].field_256 + stor3[address(arg1)].field_256)
}

function getUserInvestedAmountInUSD(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'Not valid address'
    if sub_e128cca9[address(arg1)].field_512 + stor3[address(arg1)].field_512 < stor3[address(arg1)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_e128cca9[address(arg1)].field_512 + stor3[address(arg1)].field_512)
}

function sub_149cd707(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Not valid address'
    if not stor26[address(arg1)].field_0:
        return 0
    return bool(stor26[address(arg1)].field_0), 
           stor26[address(arg1)].field_256,
           stor26[address(arg1)].field_512,
           stor26[address(arg1)].field_768,
           stor26[address(arg1)].field_1024
}

function sub_a6d1f72b(?) payable {
    if adminAddress != msg.sender:
        revert with 0, 'Pool: caller is not the admin'
    if _totalSupply:
        revert with 0, 'Pool is already initialized'
    require ext_code.size(sub_d03b4236Address)
    staticcall sub_d03b4236Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _totalSupply = ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function calcLPToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _totalSupply <= 0:
        return arg1
    if not arg1:
        if not sub_a14ed18a:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / sub_a14ed18a)
    if _totalSupply * arg1 / arg1 != _totalSupply:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not sub_a14ed18a:
        revert with 0, 'SafeMath: division by zero', 0
    return (_totalSupply * arg1 / sub_a14ed18a)
}

function sub_659f1a36(?) payable {
    if adminAddress != msg.sender:
        revert with 0, 'Pool: caller is not the admin'
    uint8(stor34.field_40) = 1
    uint8(stor34.field_48) = 1
    Mask(200, 0, stor34.field_56) = 0
    stor34.field_256 % 1 = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, stor19
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_efaeb95b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'BEP20: mint to the zero address'
    if arg2 + _totalSupply < _totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    _totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, address(arg1));
}

function sub_51b8329c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: burn from the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x6542455032303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30] >> 16, 0
    balanceOf[address(arg1)] -= arg2
    if arg2 > _totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    _totalSupply -= arg2
    emit Transfer(arg2, address(arg1), 0);
}

function sub_6c29d3f7(?) payable {
    if stor18.length:
        mem[128] = address(stor18.field_0)
        if (32 * stor18.length) + 32 > 64:
            mem[160] = address(stor18.field_256)
            idx = 160
            s = 1
            while (32 * stor18.length) + 96 > idx:
                mem[idx + 32] = stor18[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor18.length) + 128] = 32
    mem[(32 * stor18.length) + 160] = stor18.length
    idx = 0
    s = (32 * stor18.length) + 192
    t = 128
    while idx < stor18.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor18.length) + 128
       len (96 * stor18.length) + 64
}

function sub_b7e08cdf(?) payable {
    if adminAddress != msg.sender:
        revert with 0, 'Pool: caller is not the admin'
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stor19 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0] - stor19
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_3c6ed3aa(?) payable {
    mem[64] = (32 * stor23.length) + 128
    mem[96] = stor23.length
    if not stor23.length:
        mem[(32 * stor23.length) + 128] = 32
        mem[(32 * stor23.length) + 160] = stor23.length
        idx = 0
        s = (32 * stor23.length) + 192
        t = 128
        while idx < stor23.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor23.length) + 128
           len (96 * stor23.length) + 64
    mem[128] = address(stor23.field_0)
    idx = 128
    s = 0
    while (32 * stor23.length) + 96 > idx:
        mem[idx + 32] = stor23[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor23.length) + 128] = 32
    mem[(32 * stor23.length) + 160] = stor23.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor23.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor23.length) + -mem[64] + 192
}

function sub_f6aecfc4(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Not valid address'
    if arg2 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_LPAmountInPer must be less then 100%'
    if not balanceOf[address(arg1)]:
        return 0
    if not arg2:
        return 0
    if not balanceOf[address(arg1)]:
        if sub_a14ed18a:
            if 0 / sub_a14ed18a:
                revert with 0, 'SafeMath: multiplication overflow'
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / _totalSupply)
    if arg2 * balanceOf[address(arg1)] / balanceOf[address(arg1)] != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not sub_a14ed18a:
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / _totalSupply)
    if arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / sub_a14ed18a != arg2 * balanceOf[address(arg1)] / 10000:
        revert with 0, 'SafeMath: multiplication overflow'
    if not _totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply)
}

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if not uint8(stor2.field_176):
        if ext_code.size(this.address):
            if uint8(stor2.field_168):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor2.field_176):
            uint8(stor2.field_168) = 1
            uint8(stor2.field_176) = 1
            Mask(80, 0, stor2.field_176) = 0
            stor2.field_256 % 1 = 0
    uint8(_name.length) = 16
    _name.length.field_8 = 0
    _name.length.field_192 = 4931281258432917356
    idx = 0
    while _name.length + 31 / 32 > idx:
        _name[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(_symbol.length) = 6
    _symbol.length.field_8 = 0
    _symbol.length.field_232 = 4477004
    idx = 0
    while _symbol.length + 31 / 32 > idx:
        _symbol[idx].field_0 = 0
        idx = idx + 1
        continue 
    _decimals = 18
    _totalSupply = 0
    sub_b7b58b7fAddress = arg4
    adminAddress = arg5
    cronAddress = arg5
    stor11 = arg6
    tokenAddress = arg1
    owner = arg3
    emit OwnershipTransferred(0, arg3);
    priceFeedAddress = arg2
    sub_9b6ae214Address = 0x6482d0b6ec29eef62289e829c7942ad6e491d221
    uint8(stor2.field_160) = 0
    stor2.field_256 % 1 = 0
    farmerRewardFee = 500
    teamRewardFee = 500
    uint8(stor34.field_56) = 1
    stor34.field_256 % 1 = 0
    stor34.field_256 % 1 = 0
    stor34.field_256 % 1 = 0
    if not uint8(stor2.field_176):
        uint8(stor2.field_176) = 0
}

function depositLiquidity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor34.field_40):
        revert with 0, 'Pool: paused'
    if uint8(stor34.field_32):
        revert with 0, 'No re-entrancy'
    uint8(stor34.field_32) = 1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'POOL: token amount should be nonzero'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'POOL: Token transfer failed will depositing Token in POOL'
    if not sub_e128cca9[address(msg.sender)].field_256:
        sub_93c63140++
        stor18.length++
        stor18[stor18.length].field_0 = msg.sender
        if not stor3[address(msg.sender)].field_256:
            investorCount++
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.0xc91935fa with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'failed to get price in USD'
    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
        revert with 0, 'SafeMath: multiplication overflow'
    if arg1 * ext_call.return_data[0] / 10^18 <= 0:
        revert with 0, 'failed to get price in USD'
    sub_e128cca9[address(msg.sender)].field_256 += arg1
    sub_e128cca9[address(msg.sender)].field_512 += arg1 * ext_call.return_data[0] / 10^18
    stor19 += arg1
    stor20 += arg1 * ext_call.return_data[0] / 10^18
    emit 0xace70e14: arg1, arg1 * ext_call.return_data[0] / 10^18, block.timestamp, msg.sender
    uint8(stor34.field_32) = 0
}

function sub_b47024b3(?) payable {
    if stor27[address(msg.sender)]:
        revert with 0, 'Pool: User is already Migrated'
    require ext_code.size(sub_d03b4236Address)
    staticcall sub_d03b4236Address.0xcee2a9cf with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Pool: Not an active Investor of Old Pool'
    require ext_code.size(sub_d03b4236Address)
    staticcall sub_d03b4236Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Pool: Not an active Investor of Old Pool'
    require ext_code.size(sub_d03b4236Address)
    staticcall sub_d03b4236Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balanceOf[address(msg.sender)] += ext_call.return_data[0]
    require ext_code.size(sub_d03b4236Address)
    staticcall sub_d03b4236Address.0xcc178180 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d03b4236Address)
    staticcall sub_d03b4236Address.0xd0a002df with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not msg.sender:
        revert with 0, 'Not valid address'
    if balanceOf[address(msg.sender)] <= 0:
        if not sub_e128cca9[address(msg.sender)].field_256:
            investorCount++
    else:
        if not stor3[address(msg.sender)].field_0:
            if not sub_e128cca9[address(msg.sender)].field_256:
                investorCount++
    stor3[address(msg.sender)].field_256 += ext_call.return_data[0]
    stor3[address(msg.sender)].field_512 += ext_call.return_data[0]
    stor3[address(msg.sender)].field_0 = 1
    stor27[address(msg.sender)] = 1
    stor13 += ext_call.return_data[0]
    stor14 += ext_call.return_data[0]
    emit 0xc8a93351: balanceOf[address(msg.sender)], stor3[address(msg.sender)].field_256, msg.sender, sub_d03b4236Address
}

function sub_7d2a7613(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if adminAddress != msg.sender:
        revert with 0, 'Pool: caller is not the admin'
    if not address(arg1):
        revert with 0, 'Not valid address'
    if stor27[address(arg1)]:
        revert with 0, 'Pool: User is already Migrated'
    require ext_code.size(sub_d03b4236Address)
    staticcall sub_d03b4236Address.0xcee2a9cf with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Pool: Not an active Investor of Old Pool'
    require ext_code.size(sub_d03b4236Address)
    staticcall sub_d03b4236Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'Pool: Not an active Investor of Old Pool'
    require ext_code.size(sub_d03b4236Address)
    staticcall sub_d03b4236Address.0x70a08231 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    balanceOf[address(arg1)] += ext_call.return_data[0]
    require ext_code.size(sub_d03b4236Address)
    staticcall sub_d03b4236Address.0xcc178180 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_d03b4236Address)
    staticcall sub_d03b4236Address.0xd0a002df with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not address(arg1):
        revert with 0, 'Not valid address'
    if balanceOf[address(arg1)] <= 0:
        if not sub_e128cca9[address(arg1)].field_256:
            investorCount++
    else:
        if not stor3[address(arg1)].field_0:
            if not sub_e128cca9[address(arg1)].field_256:
                investorCount++
    stor3[address(arg1)].field_256 += ext_call.return_data[0]
    stor3[address(arg1)].field_512 += ext_call.return_data[0]
    stor3[address(arg1)].field_0 = 1
    stor27[address(arg1)] = 1
    stor13 += ext_call.return_data[0]
    stor14 += ext_call.return_data[0]
    emit 0xc8a93351: balanceOf[address(arg1)], stor3[address(arg1)].field_256, address(arg1), sub_d03b4236Address
}

function sub_59b4e866(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require calldata.size >= arg2.length + arg2 + 36
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if uint8(stor34.field_40):
        revert with 0, 'Pool: paused'
    if not uint8(stor2.field_160):
        if uint8(stor34.field_40):
            revert with 0, 'Pool: paused'
        if uint8(stor34.field_32):
            revert with 0, 'No re-entrancy'
        uint8(stor34.field_32) = 1
        if not arg1:
            revert with 0, 'POOL: token amount should be nonzero'
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
        if not 0, ext_call.return_data[4 len 28]:
            revert with 0, 'POOL: Token transfer failed will depositing Token in POOL'
    else:
        require ext_code.size(priceFeedAddress)
        staticcall priceFeedAddress.0xc91935fa with:
                gas gas_remaining wei
               args tokenAddress
        mem[ceil32(arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 0, ext_call.return_data[4 len 28]:
            if arg1 * 0, ext_call.return_data[4 len 28] / 0, ext_call.return_data[4 len 28] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            require ext_code.size(sub_9b6ae214Address)
            call sub_9b6ae214Address.0xa8ab7f4d with:
                 gas gas_remaining wei
                args Array(len=arg2.length, data=arg2[all]), msg.sender, arg1 * 0, ext_call.return_data[4 len 28] / 10^18
        else:
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 128] = 26
            require ext_code.size(sub_9b6ae214Address)
            call sub_9b6ae214Address.0xa8ab7f4d with:
                 gas gas_remaining wei
                args 96, msg.sender, 0, arg2.length, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if uint8(stor34.field_40):
            revert with 0, 'Pool: paused'
        if uint8(stor34.field_32):
            revert with 0, 'No re-entrancy'
        uint8(stor34.field_32) = 1
        if not arg1:
            revert with 0, 'POOL: token amount should be nonzero'
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'POOL: Token transfer failed will depositing Token in POOL'
    if not sub_e128cca9[address(msg.sender)].field_256:
        sub_93c63140++
        stor18.length++
        stor18[stor18.length].field_0 = msg.sender
        if not stor3[address(msg.sender)].field_256:
            investorCount++
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.0xc91935fa with:
            gas gas_remaining wei
           args tokenAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'failed to get price in USD'
    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
        revert with 0, 'SafeMath: multiplication overflow'
    if arg1 * ext_call.return_data[0] / 10^18 <= 0:
        revert with 0, 'failed to get price in USD'
    sub_e128cca9[address(msg.sender)].field_256 += arg1
    sub_e128cca9[address(msg.sender)].field_512 += arg1 * ext_call.return_data[0] / 10^18
    stor19 += arg1
    stor20 += arg1 * ext_call.return_data[0] / 10^18
    emit 0xace70e14: arg1, arg1 * ext_call.return_data[0] / 10^18, block.timestamp, msg.sender
    uint8(stor34.field_32) = 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if stor26[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'POOL: Invalid Operation, sender has request for withdarwal'
    if not arg1:
        revert with 0, 'Not valid address'
    if balanceOf[address(arg1)] <= 0:
        if not sub_e128cca9[address(arg1)].field_256:
            investorCount++
    else:
        if not stor3[address(arg1)].field_0:
            if not sub_e128cca9[address(arg1)].field_256:
                investorCount++
    if arg2 >= balanceOf[address(msg.sender)]:
        stor3[arg1].field_256 += stor3[address(msg.sender)].field_256
        stor3[arg1].field_512 += stor3[address(msg.sender)].field_512
        stor3[arg1].field_0 = 1
        stor3[address(msg.sender)].field_256 = 0
        stor3[address(msg.sender)].field_512 = 0
        stor3[address(msg.sender)].field_0 = 0
        investorCount--
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    else:
        if not arg2:
            if not balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor3[address(msg.sender)].field_256:
                if not stor3[address(msg.sender)].field_512:
                    stor3[address(arg1)].field_0 = 1
                else:
                    if 0 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_512 / stor3[address(msg.sender)].field_512 != 0 / balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    stor3[address(arg1)].field_512 += 0 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_512 / 10000
                    stor3[address(arg1)].field_0 = 1
                    stor3[msg.sender].field_512 -= 0 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_512 / 10000
            else:
                if 0 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_256 / stor3[address(msg.sender)].field_256 != 0 / balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor3[address(msg.sender)].field_512:
                    stor3[address(arg1)].field_256 += 0 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_256 / 10000
                    stor3[address(arg1)].field_0 = 1
                    stor3[msg.sender].field_256 -= 0 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_256 / 10000
                else:
                    if 0 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_512 / stor3[address(msg.sender)].field_512 != 0 / balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    stor3[address(arg1)].field_256 += 0 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_256 / 10000
                    stor3[address(arg1)].field_512 += 0 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_512 / 10000
                    stor3[address(arg1)].field_0 = 1
                    stor3[msg.sender].field_256 -= 0 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_256 / 10000
                    stor3[msg.sender].field_512 -= 0 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_512 / 10000
        else:
            if 10000 * arg2 / arg2 != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor3[address(msg.sender)].field_256:
                if not stor3[address(msg.sender)].field_512:
                    stor3[address(arg1)].field_0 = 1
                else:
                    if 10000 * arg2 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_512 / stor3[address(msg.sender)].field_512 != 10000 * arg2 / balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    stor3[address(arg1)].field_512 += 10000 * arg2 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_512 / 10000
                    stor3[address(arg1)].field_0 = 1
                    stor3[msg.sender].field_512 -= 10000 * arg2 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_512 / 10000
            else:
                if 10000 * arg2 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_256 / stor3[address(msg.sender)].field_256 != 10000 * arg2 / balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor3[address(msg.sender)].field_512:
                    stor3[address(arg1)].field_256 += 10000 * arg2 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_256 / 10000
                    stor3[address(arg1)].field_0 = 1
                    stor3[msg.sender].field_256 -= 10000 * arg2 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_256 / 10000
                else:
                    if 10000 * arg2 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_512 / stor3[address(msg.sender)].field_512 != 10000 * arg2 / balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    stor3[address(arg1)].field_256 += 10000 * arg2 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_256 / 10000
                    stor3[address(arg1)].field_512 += 10000 * arg2 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_512 / 10000
                    stor3[address(arg1)].field_0 = 1
                    stor3[msg.sender].field_256 -= 10000 * arg2 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_256 / 10000
                    stor3[msg.sender].field_512 -= 10000 * arg2 / balanceOf[address(msg.sender)] * stor3[address(msg.sender)].field_512 / 10000
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
    ('le', ('param', 'arg2'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'balanceOf', 4))))
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: transfer to the zero address'
    if stor26[address(arg1)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'POOL: Invalid Operation, sender has request for withdarwal'
    if not arg2:
        revert with 0, 'Not valid address'
    if balanceOf[address(arg2)] <= 0:
        if not sub_e128cca9[address(arg2)].field_256:
            investorCount++
    else:
        if not stor3[address(arg2)].field_0:
            if not sub_e128cca9[address(arg2)].field_256:
                investorCount++
    if arg3 >= balanceOf[address(arg1)]:
        stor3[arg2].field_256 += stor3[address(arg1)].field_256
        stor3[arg2].field_512 += stor3[address(arg1)].field_512
        stor3[arg2].field_0 = 1
        stor3[address(arg1)].field_256 = 0
        stor3[address(arg1)].field_512 = 0
        stor3[address(arg1)].field_0 = 0
        investorCount--
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    else:
        if not arg3:
            if not balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor3[address(arg1)].field_256:
                if not stor3[address(arg1)].field_512:
                    stor3[address(arg2)].field_0 = 1
                else:
                    if 0 / balanceOf[address(arg1)] * stor3[address(arg1)].field_512 / stor3[address(arg1)].field_512 != 0 / balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    stor3[address(arg2)].field_512 += 0 / balanceOf[address(arg1)] * stor3[address(arg1)].field_512 / 10000
                    stor3[address(arg2)].field_0 = 1
                    stor3[arg1].field_512 -= 0 / balanceOf[address(arg1)] * stor3[address(arg1)].field_512 / 10000
            else:
                if 0 / balanceOf[address(arg1)] * stor3[address(arg1)].field_256 / stor3[address(arg1)].field_256 != 0 / balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor3[address(arg1)].field_512:
                    stor3[address(arg2)].field_256 += 0 / balanceOf[address(arg1)] * stor3[address(arg1)].field_256 / 10000
                    stor3[address(arg2)].field_0 = 1
                    stor3[arg1].field_256 -= 0 / balanceOf[address(arg1)] * stor3[address(arg1)].field_256 / 10000
                else:
                    if 0 / balanceOf[address(arg1)] * stor3[address(arg1)].field_512 / stor3[address(arg1)].field_512 != 0 / balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    stor3[address(arg2)].field_256 += 0 / balanceOf[address(arg1)] * stor3[address(arg1)].field_256 / 10000
                    stor3[address(arg2)].field_512 += 0 / balanceOf[address(arg1)] * stor3[address(arg1)].field_512 / 10000
                    stor3[address(arg2)].field_0 = 1
                    stor3[arg1].field_256 -= 0 / balanceOf[address(arg1)] * stor3[address(arg1)].field_256 / 10000
                    stor3[arg1].field_512 -= 0 / balanceOf[address(arg1)] * stor3[address(arg1)].field_512 / 10000
        else:
            if 10000 * arg3 / arg3 != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if not balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor3[address(arg1)].field_256:
                if not stor3[address(arg1)].field_512:
                    stor3[address(arg2)].field_0 = 1
                else:
                    if 10000 * arg3 / balanceOf[address(arg1)] * stor3[address(arg1)].field_512 / stor3[address(arg1)].field_512 != 10000 * arg3 / balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    stor3[address(arg2)].field_512 += 10000 * arg3 / balanceOf[address(arg1)] * stor3[address(arg1)].field_512 / 10000
                    stor3[address(arg2)].field_0 = 1
                    stor3[arg1].field_512 -= 10000 * arg3 / balanceOf[address(arg1)] * stor3[address(arg1)].field_512 / 10000
            else:
                if 10000 * arg3 / balanceOf[address(arg1)] * stor3[address(arg1)].field_256 / stor3[address(arg1)].field_256 != 10000 * arg3 / balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not stor3[address(arg1)].field_512:
                    stor3[address(arg2)].field_256 += 10000 * arg3 / balanceOf[address(arg1)] * stor3[address(arg1)].field_256 / 10000
                    stor3[address(arg2)].field_0 = 1
                    stor3[arg1].field_256 -= 10000 * arg3 / balanceOf[address(arg1)] * stor3[address(arg1)].field_256 / 10000
                else:
                    if 10000 * arg3 / balanceOf[address(arg1)] * stor3[address(arg1)].field_512 / stor3[address(arg1)].field_512 != 10000 * arg3 / balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    stor3[address(arg2)].field_256 += 10000 * arg3 / balanceOf[address(arg1)] * stor3[address(arg1)].field_256 / 10000
                    stor3[address(arg2)].field_512 += 10000 * arg3 / balanceOf[address(arg1)] * stor3[address(arg1)].field_512 / 10000
                    stor3[address(arg2)].field_0 = 1
                    stor3[arg1].field_256 -= 10000 * arg3 / balanceOf[address(arg1)] * stor3[address(arg1)].field_256 / 10000
                    stor3[arg1].field_512 -= 10000 * arg3 / balanceOf[address(arg1)] * stor3[address(arg1)].field_512 / 10000
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 32, 38, 0x6542455032303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit Transfer(arg3, arg1, arg2);
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            revert with 0, 32, 40, 0xfe42455032303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
    ('le', ('param', 'arg3'), ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 5)))))
    if not arg1:
        revert with 0, 'BEP20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_2e8dc500(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'Not valid address'
    if arg2 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_LPAmountInPer must be less then 100%'
    if not balanceOf[address(arg1)]:
        return sub_e128cca9[address(arg1)].field_256
    if not arg2:
        return sub_e128cca9[address(arg1)].field_256
    if not stor3[address(arg1)].field_256:
        if not balanceOf[address(arg1)]:
            if sub_a14ed18a:
                if 0 / sub_a14ed18a:
                    revert with 0, 'SafeMath: multiplication overflow'
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / _totalSupply <= 0:
                return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply))
            if 0 > 0 / _totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not 0 / _totalSupply:
                return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply))
            if not 0 / _totalSupply:
                if 0 > 0 / _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply))
            if uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 0 / _totalSupply != uint16(teamRewardFee + farmerRewardFee):
                revert with 0, 'SafeMath: multiplication overflow'
            if uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 10000 > 0 / _totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply) - (uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 10000))
        if arg2 * balanceOf[address(arg1)] / balanceOf[address(arg1)] != arg2:
            revert with 0, 'SafeMath: multiplication overflow'
        if not sub_a14ed18a:
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / _totalSupply <= 0:
                return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply))
            if 0 > 0 / _totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not 0 / _totalSupply:
                return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply))
            if not 0 / _totalSupply:
                if 0 > 0 / _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply))
            if uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 0 / _totalSupply != uint16(teamRewardFee + farmerRewardFee):
                revert with 0, 'SafeMath: multiplication overflow'
            if uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 10000 > 0 / _totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply) - (uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 10000))
        if arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / sub_a14ed18a != arg2 * balanceOf[address(arg1)] / 10000:
            revert with 0, 'SafeMath: multiplication overflow'
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply <= 0:
            return (sub_e128cca9[address(arg1)].field_256 + (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply))
        if 0 > arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply:
            return (sub_e128cca9[address(arg1)].field_256 + (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply))
        if not arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply:
            if 0 > arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (sub_e128cca9[address(arg1)].field_256 + (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply))
        if uint16(teamRewardFee + farmerRewardFee) * arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply / arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply != uint16(teamRewardFee + farmerRewardFee):
            revert with 0, 'SafeMath: multiplication overflow'
        if uint16(teamRewardFee + farmerRewardFee) * arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply / 10000 > arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (sub_e128cca9[address(arg1)].field_256 + (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply) - (uint16(teamRewardFee + farmerRewardFee) * arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply / 10000))
    if arg2 * stor3[address(arg1)].field_256 / stor3[address(arg1)].field_256 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not balanceOf[address(arg1)]:
        if sub_a14ed18a:
            if 0 / sub_a14ed18a:
                revert with 0, 'SafeMath: multiplication overflow'
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / _totalSupply <= arg2 * stor3[address(arg1)].field_256 / 10000:
            return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply))
        if arg2 * stor3[address(arg1)].field_256 / 10000 > 0 / _totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not (0 / _totalSupply) - (arg2 * stor3[address(arg1)].field_256 / 10000):
            return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply))
        if not (0 / _totalSupply) - (arg2 * stor3[address(arg1)].field_256 / 10000):
            if 0 > 0 / _totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply))
        if (0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg2 * stor3[address(arg1)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / (0 / _totalSupply) - (arg2 * stor3[address(arg1)].field_256 / 10000) != uint16(teamRewardFee + farmerRewardFee):
            revert with 0, 'SafeMath: multiplication overflow'
        if (0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg2 * stor3[address(arg1)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000 > 0 / _totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply) - ((0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg2 * stor3[address(arg1)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000))
    if arg2 * balanceOf[address(arg1)] / balanceOf[address(arg1)] != arg2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not sub_a14ed18a:
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if 0 / _totalSupply <= arg2 * stor3[address(arg1)].field_256 / 10000:
            return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply))
        if arg2 * stor3[address(arg1)].field_256 / 10000 > 0 / _totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if not (0 / _totalSupply) - (arg2 * stor3[address(arg1)].field_256 / 10000):
            return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply))
        if not (0 / _totalSupply) - (arg2 * stor3[address(arg1)].field_256 / 10000):
            if 0 > 0 / _totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply))
        if (0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg2 * stor3[address(arg1)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / (0 / _totalSupply) - (arg2 * stor3[address(arg1)].field_256 / 10000) != uint16(teamRewardFee + farmerRewardFee):
            revert with 0, 'SafeMath: multiplication overflow'
        if (0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg2 * stor3[address(arg1)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000 > 0 / _totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (sub_e128cca9[address(arg1)].field_256 + (0 / _totalSupply) - ((0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg2 * stor3[address(arg1)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000))
    if arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / sub_a14ed18a != arg2 * balanceOf[address(arg1)] / 10000:
        revert with 0, 'SafeMath: multiplication overflow'
    if not _totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply <= arg2 * stor3[address(arg1)].field_256 / 10000:
        return (sub_e128cca9[address(arg1)].field_256 + (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply))
    if arg2 * stor3[address(arg1)].field_256 / 10000 > arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if not (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply) - (arg2 * stor3[address(arg1)].field_256 / 10000):
        return (sub_e128cca9[address(arg1)].field_256 + (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply))
    if not (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply) - (arg2 * stor3[address(arg1)].field_256 / 10000):
        if 0 > arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        return (sub_e128cca9[address(arg1)].field_256 + (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply))
    if (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg2 * stor3[address(arg1)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply) - (arg2 * stor3[address(arg1)].field_256 / 10000) != uint16(teamRewardFee + farmerRewardFee):
        revert with 0, 'SafeMath: multiplication overflow'
    if (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg2 * stor3[address(arg1)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000 > arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    return (sub_e128cca9[address(arg1)].field_256 + (arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply) - ((arg2 * balanceOf[address(arg1)] / 10000 * sub_a14ed18a / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg2 * stor3[address(arg1)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000))
}

function sub_f9d94d40(?) payable {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'Pool: caller is not the admin'
    if not uint8(stor34.field_40):
        revert with 0, 'Pool: not paused'
    if not stor18.length:
        revert with 0, 'POOL: Nothing to invest'
    if arg2 <= arg1:
        revert with 0, 'POOL: Wrong Input values passed'
    mem[64] = 160
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if arg2 - arg1 > stor19:
        revert with 0, 'POOL: Wrong Input values passed'
    idx = 0
    s = arg1
    while idx < stor18.length:
        mem[0] = stor18[idx].field_0
        mem[32] = 21
        _198 = mem[64]
        mem[64] = mem[64] + 64
        mem[_198] = 30
        mem[_198 + 32] = 'SafeMath: subtraction overflow'
        if s > arg2:
            _200 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _200 + 68] = mem[_198 + idx + 32]
                idx = idx + 32
                continue 
            mem[_200 + 98] = 0
            revert with memory
              from mem[64]
               len _200 + -mem[64] + 100
        if not sub_e128cca9[stor18[idx].field_0].field_256:
            _205 = mem[64]
            mem[64] = mem[64] + 64
            mem[_205] = 26
            mem[_205 + 32] = 'SafeMath: division by zero'
            if not stor19:
                _210 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _210 + 68] = mem[_205 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_210 + 94] = 0
                revert with memory
                  from mem[64]
                   len _210 + -mem[64] + 100
            if _totalSupply <= 0:
                _216 = mem[64]
                mem[64] = mem[64] + 64
                mem[_216] = 30
                mem[_216 + 32] = 'SafeMath: subtraction overflow'
                if sub_e128cca9[stor18[idx].field_0].field_256 > stor19:
                    _221 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _221 + 68] = mem[_216 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_221 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _221 + -mem[64] + 100
                stor19 -= sub_e128cca9[stor18[idx].field_0].field_256
                if not stor18[idx].field_0:
                    revert with 0, 'BEP20: mint to the zero address'
                if (0 / stor19) + _totalSupply < _totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                _totalSupply += 0 / stor19
                mem[0] = stor18[idx].field_0
                if (0 / stor19) + balanceOf[stor18[idx].field_0] < balanceOf[stor18[idx].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor18[idx].field_0] += 0 / stor19
                emit Transfer((0 / stor19), 0, stor18[idx].field_0);
                stor3[stor18[idx].field_0].field_256 += sub_e128cca9[stor18[idx].field_0].field_256
                stor3[stor18[idx].field_0].field_512 += sub_e128cca9[stor18[idx].field_0].field_512
                stor13 += sub_e128cca9[stor18[idx].field_0].field_256
                stor14 += sub_e128cca9[stor18[idx].field_0].field_512
                mem[32] = 3
                stor3[stor18[idx].field_0].field_0 = 1
                mem[mem[64]] = sub_e128cca9[stor18[idx].field_0].field_256
                mem[mem[64] + 32] = 0 / stor19
                mem[mem[64] + 64] = block.timestamp
                emit 0xdcbfd106: sub_e128cca9[stor18[idx].field_0].field_256, 0 / stor19, block.timestamp, stor18[idx].field_0
            else:
                if not 0 / stor19:
                    _226 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_226] = 26
                    mem[_226 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _234 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _234 + 68] = mem[_226 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_234 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _234 + -mem[64] + 100
                    _250 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_250] = 30
                    mem[_250 + 32] = 'SafeMath: subtraction overflow'
                    if sub_e128cca9[stor18[idx].field_0].field_256 > stor19:
                        _266 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _266 + 68] = mem[_250 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_266 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _266 + -mem[64] + 100
                    stor19 -= sub_e128cca9[stor18[idx].field_0].field_256
                    if not stor18[idx].field_0:
                        revert with 0, 'BEP20: mint to the zero address'
                    if (0 / s) + _totalSupply < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalSupply += 0 / s
                    mem[0] = stor18[idx].field_0
                    if (0 / s) + balanceOf[stor18[idx].field_0] < balanceOf[stor18[idx].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor18[idx].field_0] += 0 / s
                    emit Transfer((0 / s), 0, stor18[idx].field_0);
                    stor3[stor18[idx].field_0].field_256 += sub_e128cca9[stor18[idx].field_0].field_256
                    stor3[stor18[idx].field_0].field_512 += sub_e128cca9[stor18[idx].field_0].field_512
                    stor13 += sub_e128cca9[stor18[idx].field_0].field_256
                    stor14 += sub_e128cca9[stor18[idx].field_0].field_512
                    mem[32] = 3
                    stor3[stor18[idx].field_0].field_0 = 1
                    mem[mem[64]] = sub_e128cca9[stor18[idx].field_0].field_256
                    mem[mem[64] + 32] = 0 / s
                    mem[mem[64] + 64] = block.timestamp
                    emit 0xdcbfd106: sub_e128cca9[stor18[idx].field_0].field_256, 0 / s, block.timestamp, stor18[idx].field_0
                else:
                    if _totalSupply * 0 / stor19 / 0 / stor19 != _totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _228 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_228] = 26
                    mem[_228 + 32] = 'SafeMath: division by zero'
                    if not s:
                        _236 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _236 + 68] = mem[_228 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_236 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _236 + -mem[64] + 100
                    _258 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_258] = 30
                    mem[_258 + 32] = 'SafeMath: subtraction overflow'
                    if sub_e128cca9[stor18[idx].field_0].field_256 > stor19:
                        _270 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        s = 0
                        while s < 30:
                            mem[s + _270 + 68] = mem[_258 + s + 32]
                            s = s + 32
                            continue 
                        mem[_270 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _270 + -mem[64] + 100
                    stor19 -= sub_e128cca9[stor18[idx].field_0].field_256
                    if not stor18[idx].field_0:
                        revert with 0, 'BEP20: mint to the zero address'
                    if (_totalSupply * 0 / stor19 / s) + _totalSupply < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalSupply += _totalSupply * 0 / stor19 / s
                    mem[0] = stor18[idx].field_0
                    if (_totalSupply * 0 / stor19 / s) + balanceOf[stor18[idx].field_0] < balanceOf[stor18[idx].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor18[idx].field_0] += _totalSupply * 0 / stor19 / s
                    emit Transfer((_totalSupply * 0 / stor19 / s), 0, stor18[idx].field_0);
                    stor3[stor18[idx].field_0].field_256 += sub_e128cca9[stor18[idx].field_0].field_256
                    stor3[stor18[idx].field_0].field_512 += sub_e128cca9[stor18[idx].field_0].field_512
                    stor13 += sub_e128cca9[stor18[idx].field_0].field_256
                    stor14 += sub_e128cca9[stor18[idx].field_0].field_512
                    mem[32] = 3
                    stor3[stor18[idx].field_0].field_0 = 1
                    mem[mem[64]] = sub_e128cca9[stor18[idx].field_0].field_256
                    mem[mem[64] + 32] = _totalSupply * 0 / stor19 / s
                    mem[mem[64] + 64] = block.timestamp
                    emit 0xdcbfd106: sub_e128cca9[stor18[idx].field_0].field_256, _totalSupply * 0 / stor19 / s, block.timestamp, stor18[idx].field_0
            mem[0] = stor18[idx].field_0
            mem[32] = 21
            sub_e128cca9[stor18[idx].field_0].field_0 = 0
            sub_e128cca9[stor18[idx].field_0].field_256 = 0
            sub_e128cca9[stor18[idx].field_0].field_512 = 0
            idx = idx + 1
            s = (0 / stor19) + s
            continue 
        if (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / sub_e128cca9[stor18[idx].field_0].field_256 != arg2 - s:
            revert with 0, 'SafeMath: multiplication overflow'
        _207 = mem[64]
        mem[64] = mem[64] + 64
        mem[_207] = 26
        mem[_207 + 32] = 'SafeMath: division by zero'
        if not stor19:
            _211 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _211 + 68] = mem[_207 + idx + 32]
                idx = idx + 32
                continue 
            mem[_211 + 94] = 0
            revert with memory
              from mem[64]
               len _211 + -mem[64] + 100
        if _totalSupply <= 0:
            _217 = mem[64]
            mem[64] = mem[64] + 64
            mem[_217] = 30
            mem[_217 + 32] = 'SafeMath: subtraction overflow'
            if sub_e128cca9[stor18[idx].field_0].field_256 > stor19:
                _224 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _224 + 68] = mem[_217 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_224 + 98] = 0
                revert with memory
                  from mem[64]
                   len _224 + -mem[64] + 100
            stor19 -= sub_e128cca9[stor18[idx].field_0].field_256
            if not stor18[idx].field_0:
                revert with 0, 'BEP20: mint to the zero address'
            if ((arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19) + _totalSupply < _totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            _totalSupply += (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19
            mem[0] = stor18[idx].field_0
            if ((arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19) + balanceOf[stor18[idx].field_0] < balanceOf[stor18[idx].field_0]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor18[idx].field_0] += (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19
            emit Transfer(((arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19), 0, stor18[idx].field_0);
            stor3[stor18[idx].field_0].field_256 += sub_e128cca9[stor18[idx].field_0].field_256
            stor3[stor18[idx].field_0].field_512 += sub_e128cca9[stor18[idx].field_0].field_512
            stor13 += sub_e128cca9[stor18[idx].field_0].field_256
            stor14 += sub_e128cca9[stor18[idx].field_0].field_512
            mem[32] = 3
            stor3[stor18[idx].field_0].field_0 = 1
            mem[mem[64]] = sub_e128cca9[stor18[idx].field_0].field_256
            mem[mem[64] + 32] = (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19
            mem[mem[64] + 64] = block.timestamp
            emit 0xdcbfd106: sub_e128cca9[stor18[idx].field_0].field_256, (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19, block.timestamp, stor18[idx].field_0
        else:
            if not (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19:
                _227 = mem[64]
                mem[64] = mem[64] + 64
                mem[_227] = 26
                mem[_227 + 32] = 'SafeMath: division by zero'
                if not s:
                    _235 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _235 + 68] = mem[_227 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_235 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _235 + -mem[64] + 100
                _254 = mem[64]
                mem[64] = mem[64] + 64
                mem[_254] = 30
                mem[_254 + 32] = 'SafeMath: subtraction overflow'
                if sub_e128cca9[stor18[idx].field_0].field_256 > stor19:
                    _268 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    s = 0
                    while s < 30:
                        mem[s + _268 + 68] = mem[_254 + s + 32]
                        s = s + 32
                        continue 
                    mem[_268 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _268 + -mem[64] + 100
                stor19 -= sub_e128cca9[stor18[idx].field_0].field_256
                if not stor18[idx].field_0:
                    revert with 0, 'BEP20: mint to the zero address'
                if (0 / s) + _totalSupply < _totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                _totalSupply += 0 / s
                mem[0] = stor18[idx].field_0
                if (0 / s) + balanceOf[stor18[idx].field_0] < balanceOf[stor18[idx].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor18[idx].field_0] += 0 / s
                emit Transfer((0 / s), 0, stor18[idx].field_0);
                stor3[stor18[idx].field_0].field_256 += sub_e128cca9[stor18[idx].field_0].field_256
                stor3[stor18[idx].field_0].field_512 += sub_e128cca9[stor18[idx].field_0].field_512
                stor13 += sub_e128cca9[stor18[idx].field_0].field_256
                stor14 += sub_e128cca9[stor18[idx].field_0].field_512
                mem[32] = 3
                stor3[stor18[idx].field_0].field_0 = 1
                mem[mem[64]] = sub_e128cca9[stor18[idx].field_0].field_256
                mem[mem[64] + 32] = 0 / s
                mem[mem[64] + 64] = block.timestamp
                emit 0xdcbfd106: sub_e128cca9[stor18[idx].field_0].field_256, 0 / s, block.timestamp, stor18[idx].field_0
            else:
                if _totalSupply * (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19 / (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19 != _totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _231 = mem[64]
                mem[64] = mem[64] + 64
                mem[_231] = 26
                mem[_231 + 32] = 'SafeMath: division by zero'
                if not s:
                    _239 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _239 + 68] = mem[_231 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_239 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _239 + -mem[64] + 100
                _262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_262] = 30
                mem[_262 + 32] = 'SafeMath: subtraction overflow'
                if sub_e128cca9[stor18[idx].field_0].field_256 > stor19:
                    _274 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _274 + 68] = mem[_262 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_274 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _274 + -mem[64] + 100
                stor19 -= sub_e128cca9[stor18[idx].field_0].field_256
                if not stor18[idx].field_0:
                    revert with 0, 'BEP20: mint to the zero address'
                if (_totalSupply * (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19 / s) + _totalSupply < _totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                _totalSupply += _totalSupply * (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19 / s
                mem[0] = stor18[idx].field_0
                if (_totalSupply * (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19 / s) + balanceOf[stor18[idx].field_0] < balanceOf[stor18[idx].field_0]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[stor18[idx].field_0] += _totalSupply * (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19 / s
                emit Transfer((_totalSupply * (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19 / s), 0, stor18[idx].field_0);
                stor3[stor18[idx].field_0].field_256 += sub_e128cca9[stor18[idx].field_0].field_256
                stor3[stor18[idx].field_0].field_512 += sub_e128cca9[stor18[idx].field_0].field_512
                stor13 += sub_e128cca9[stor18[idx].field_0].field_256
                stor14 += sub_e128cca9[stor18[idx].field_0].field_512
                mem[32] = 3
                stor3[stor18[idx].field_0].field_0 = 1
                mem[mem[64]] = sub_e128cca9[stor18[idx].field_0].field_256
                mem[mem[64] + 32] = _totalSupply * (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19 / s
                mem[mem[64] + 64] = block.timestamp
                emit 0xdcbfd106: sub_e128cca9[stor18[idx].field_0].field_256, _totalSupply * (arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19 / s, block.timestamp, stor18[idx].field_0
        mem[0] = stor18[idx].field_0
        mem[32] = 21
        sub_e128cca9[stor18[idx].field_0].field_0 = 0
        sub_e128cca9[stor18[idx].field_0].field_256 = 0
        sub_e128cca9[stor18[idx].field_0].field_512 = 0
        idx = idx + 1
        s = ((arg2 * sub_e128cca9[stor18[idx].field_0].field_256) - (s * sub_e128cca9[stor18[idx].field_0].field_256) / stor19) + s
        continue 
    stor18.length = 0
    idx = 0
    while stor18.length > idx:
        stor18[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor19 = 0
    stor20 = 0
    sub_93c63140 = 0
    sub_a14ed18a = arg2
    uint16(stor34.field_40) = 0
}

function withdrawLiquidity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor34.field_32):
        revert with 0, 'No re-entrancy'
    uint8(stor34.field_32) = 1
    if uint8(stor34.field_48):
        revert with 0, 'Pool: Withdraw paused'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'POOL: Invalid Operation, fund is not withdarwable'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'POOL: Invalid Operation, fund is not withdarwable'
    if stor26[address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'POOL: Invalid Operation, fund is not withdarwable'
    if stor3[address(msg.sender)].field_256 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'POOL: Invalid Operation, fund is not withdarwable'
    if not balanceOf[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'user Doesnot have enough LP token in his wallet'
    if arg1 * balanceOf[address(msg.sender)] / balanceOf[address(msg.sender)] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if not stor3[address(msg.sender)].field_256:
        if not stor3[address(msg.sender)].field_512:
            if not sub_a14ed18a:
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / _totalSupply <= 0:
                    sub_2445aefb++
                    stor23.length++
                    stor23[stor23.length].field_0 = msg.sender
                    stor26[address(msg.sender)].field_0 = 1
                    stor26[address(msg.sender)].field_256 = 0
                    stor26[address(msg.sender)].field_512 = 0
                    stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                    stor26[address(msg.sender)].field_1024 = 0
                    stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                    emit 0x6599e6d8: arg1, 0, 0, 0, block.timestamp, msg.sender
                else:
                    if 0 > 0 / _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not 0 / _totalSupply:
                        if 0 > 0 / _totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        sub_2445aefb++
                        stor23.length++
                        stor23[stor23.length].field_0 = msg.sender
                        stor26[address(msg.sender)].field_0 = 1
                        stor26[address(msg.sender)].field_256 = 0
                        stor26[address(msg.sender)].field_512 = 0
                        stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                        stor26[address(msg.sender)].field_1024 = 0 / _totalSupply
                        stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                        emit 0x6599e6d8: arg1, 0, 0, 0 / _totalSupply, block.timestamp, msg.sender
                    else:
                        if uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 0 / _totalSupply != uint16(teamRewardFee + farmerRewardFee):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 10000 > 0 / _totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        sub_2445aefb++
                        stor23.length++
                        stor23[stor23.length].field_0 = msg.sender
                        stor26[address(msg.sender)].field_0 = 1
                        stor26[address(msg.sender)].field_256 = 0
                        stor26[address(msg.sender)].field_512 = 0
                        stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                        stor26[address(msg.sender)].field_1024 = (0 / _totalSupply) - (uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 10000)
                        stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                        emit 0x6599e6d8: arg1, 0, 0, (0 / _totalSupply) - (uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 10000), block.timestamp, msg.sender
            else:
                if arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / sub_a14ed18a != arg1 * balanceOf[address(msg.sender)] / 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply <= 0:
                    sub_2445aefb++
                    stor23.length++
                    stor23[stor23.length].field_0 = msg.sender
                    stor26[address(msg.sender)].field_0 = 1
                    stor26[address(msg.sender)].field_256 = 0
                    stor26[address(msg.sender)].field_512 = 0
                    stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                    stor26[address(msg.sender)].field_1024 = 0
                    stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                    emit 0x6599e6d8: arg1, 0, 0, 0, block.timestamp, msg.sender
                else:
                    if 0 > arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply:
                        if 0 > arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        sub_2445aefb++
                        stor23.length++
                        stor23[stor23.length].field_0 = msg.sender
                        stor26[address(msg.sender)].field_0 = 1
                        stor26[address(msg.sender)].field_256 = 0
                        stor26[address(msg.sender)].field_512 = 0
                        stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                        stor26[address(msg.sender)].field_1024 = arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply
                        stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                        emit 0x6599e6d8: arg1, 0, 0, arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply, block.timestamp, msg.sender
                    else:
                        if uint16(teamRewardFee + farmerRewardFee) * arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply / arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply != uint16(teamRewardFee + farmerRewardFee):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint16(teamRewardFee + farmerRewardFee) * arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply / 10000 > arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        sub_2445aefb++
                        stor23.length++
                        stor23[stor23.length].field_0 = msg.sender
                        stor26[address(msg.sender)].field_0 = 1
                        stor26[address(msg.sender)].field_256 = 0
                        stor26[address(msg.sender)].field_512 = 0
                        stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                        stor26[address(msg.sender)].field_1024 = (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (uint16(teamRewardFee + farmerRewardFee) * arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply / 10000)
                        stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                        emit 0x6599e6d8: arg1, 0, 0, (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (uint16(teamRewardFee + farmerRewardFee) * arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply / 10000), block.timestamp, msg.sender
        else:
            if arg1 * stor3[address(msg.sender)].field_512 / stor3[address(msg.sender)].field_512 != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            if not sub_a14ed18a:
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / _totalSupply <= 0:
                    sub_2445aefb++
                    stor23.length++
                    stor23[stor23.length].field_0 = msg.sender
                    stor26[address(msg.sender)].field_0 = 1
                    stor26[address(msg.sender)].field_256 = 0
                    stor26[address(msg.sender)].field_512 = arg1 * stor3[address(msg.sender)].field_512 / 10000
                    stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                    stor26[address(msg.sender)].field_1024 = 0
                    stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                    emit 0x6599e6d8: arg1, 0, arg1 * stor3[address(msg.sender)].field_512 / 10000, 0, block.timestamp, msg.sender
                else:
                    if 0 > 0 / _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not 0 / _totalSupply:
                        if 0 > 0 / _totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        sub_2445aefb++
                        stor23.length++
                        stor23[stor23.length].field_0 = msg.sender
                        stor26[address(msg.sender)].field_0 = 1
                        stor26[address(msg.sender)].field_256 = 0
                        stor26[address(msg.sender)].field_512 = arg1 * stor3[address(msg.sender)].field_512 / 10000
                        stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                        stor26[address(msg.sender)].field_1024 = 0 / _totalSupply
                        stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                        emit 0x6599e6d8: arg1, 0, arg1 * stor3[address(msg.sender)].field_512 / 10000, 0 / _totalSupply, block.timestamp, msg.sender
                    else:
                        if uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 0 / _totalSupply != uint16(teamRewardFee + farmerRewardFee):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 10000 > 0 / _totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        sub_2445aefb++
                        stor23.length++
                        stor23[stor23.length].field_0 = msg.sender
                        stor26[address(msg.sender)].field_0 = 1
                        stor26[address(msg.sender)].field_256 = 0
                        stor26[address(msg.sender)].field_512 = arg1 * stor3[address(msg.sender)].field_512 / 10000
                        stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                        stor26[address(msg.sender)].field_1024 = (0 / _totalSupply) - (uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 10000)
                        stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                        emit 0x6599e6d8: arg1, 0, arg1 * stor3[address(msg.sender)].field_512 / 10000, (0 / _totalSupply) - (uint16(teamRewardFee + farmerRewardFee) * 0 / _totalSupply / 10000), block.timestamp, msg.sender
            else:
                if arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / sub_a14ed18a != arg1 * balanceOf[address(msg.sender)] / 10000:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply <= 0:
                    sub_2445aefb++
                    stor23.length++
                    stor23[stor23.length].field_0 = msg.sender
                    stor26[address(msg.sender)].field_0 = 1
                    stor26[address(msg.sender)].field_256 = 0
                    stor26[address(msg.sender)].field_512 = arg1 * stor3[address(msg.sender)].field_512 / 10000
                    stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                    stor26[address(msg.sender)].field_1024 = 0
                    stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                    emit 0x6599e6d8: arg1, 0, arg1 * stor3[address(msg.sender)].field_512 / 10000, 0, block.timestamp, msg.sender
                else:
                    if 0 > arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if not arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply:
                        if 0 > arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        sub_2445aefb++
                        stor23.length++
                        stor23[stor23.length].field_0 = msg.sender
                        stor26[address(msg.sender)].field_0 = 1
                        stor26[address(msg.sender)].field_256 = 0
                        stor26[address(msg.sender)].field_512 = arg1 * stor3[address(msg.sender)].field_512 / 10000
                        stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                        stor26[address(msg.sender)].field_1024 = arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply
                        stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                        emit 0x6599e6d8: arg1, 0, arg1 * stor3[address(msg.sender)].field_512 / 10000, arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply, block.timestamp, msg.sender
                    else:
                        if uint16(teamRewardFee + farmerRewardFee) * arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply / arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply != uint16(teamRewardFee + farmerRewardFee):
                            revert with 0, 'SafeMath: multiplication overflow'
                        if uint16(teamRewardFee + farmerRewardFee) * arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply / 10000 > arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        sub_2445aefb++
                        stor23.length++
                        stor23[stor23.length].field_0 = msg.sender
                        stor26[address(msg.sender)].field_0 = 1
                        stor26[address(msg.sender)].field_256 = 0
                        stor26[address(msg.sender)].field_512 = arg1 * stor3[address(msg.sender)].field_512 / 10000
                        stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                        stor26[address(msg.sender)].field_1024 = (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (uint16(teamRewardFee + farmerRewardFee) * arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply / 10000)
                        stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                        emit 0x6599e6d8: arg1, 0, arg1 * stor3[address(msg.sender)].field_512 / 10000, (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (uint16(teamRewardFee + farmerRewardFee) * arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply / 10000), block.timestamp, msg.sender
        uint8(stor34.field_32) = 0
        return 0
    if arg1 * stor3[address(msg.sender)].field_256 / stor3[address(msg.sender)].field_256 != arg1:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor3[address(msg.sender)].field_512:
        if not sub_a14ed18a:
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / _totalSupply <= arg1 * stor3[address(msg.sender)].field_256 / 10000:
                sub_2445aefb++
                stor23.length++
                stor23[stor23.length].field_0 = msg.sender
                stor26[address(msg.sender)].field_0 = 1
                stor26[address(msg.sender)].field_256 = arg1 * stor3[address(msg.sender)].field_256 / 10000
                stor26[address(msg.sender)].field_512 = 0
                stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                stor26[address(msg.sender)].field_1024 = 0
                stor24 += arg1 * stor3[address(msg.sender)].field_256 / 10000
                stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                emit 0x6599e6d8: arg1, arg1 * stor3[address(msg.sender)].field_256 / 10000, 0, 0, block.timestamp, msg.sender
            else:
                if arg1 * stor3[address(msg.sender)].field_256 / 10000 > 0 / _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000):
                    if 0 > (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    sub_2445aefb++
                    stor23.length++
                    stor23[stor23.length].field_0 = msg.sender
                    stor26[address(msg.sender)].field_0 = 1
                    stor26[address(msg.sender)].field_256 = arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor26[address(msg.sender)].field_512 = 0
                    stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                    stor26[address(msg.sender)].field_1024 = (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000)
                    stor24 += arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                    emit 0x6599e6d8: arg1, arg1 * stor3[address(msg.sender)].field_256 / 10000, 0, (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000), block.timestamp, msg.sender
                else:
                    if (0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000) != uint16(teamRewardFee + farmerRewardFee):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000 > (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    sub_2445aefb++
                    stor23.length++
                    stor23[stor23.length].field_0 = msg.sender
                    stor26[address(msg.sender)].field_0 = 1
                    stor26[address(msg.sender)].field_256 = arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor26[address(msg.sender)].field_512 = 0
                    stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                    stor26[address(msg.sender)].field_1024 = (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000) - ((0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000)
                    stor24 += arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                    emit 0x6599e6d8: arg1, arg1 * stor3[address(msg.sender)].field_256 / 10000, 0, (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000) - ((0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000), block.timestamp, msg.sender
        else:
            if arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / sub_a14ed18a != arg1 * balanceOf[address(msg.sender)] / 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply <= arg1 * stor3[address(msg.sender)].field_256 / 10000:
                sub_2445aefb++
                stor23.length++
                stor23[stor23.length].field_0 = msg.sender
                stor26[address(msg.sender)].field_0 = 1
                stor26[address(msg.sender)].field_256 = arg1 * stor3[address(msg.sender)].field_256 / 10000
                stor26[address(msg.sender)].field_512 = 0
                stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                stor26[address(msg.sender)].field_1024 = 0
                stor24 += arg1 * stor3[address(msg.sender)].field_256 / 10000
                stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                emit 0x6599e6d8: arg1, arg1 * stor3[address(msg.sender)].field_256 / 10000, 0, 0, block.timestamp, msg.sender
            else:
                if arg1 * stor3[address(msg.sender)].field_256 / 10000 > arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000):
                    if 0 > (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    sub_2445aefb++
                    stor23.length++
                    stor23[stor23.length].field_0 = msg.sender
                    stor26[address(msg.sender)].field_0 = 1
                    stor26[address(msg.sender)].field_256 = arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor26[address(msg.sender)].field_512 = 0
                    stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                    stor26[address(msg.sender)].field_1024 = (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000)
                    stor24 += arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                    emit 0x6599e6d8: arg1, arg1 * stor3[address(msg.sender)].field_256 / 10000, 0, (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000), block.timestamp, msg.sender
                else:
                    if (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000) != uint16(teamRewardFee + farmerRewardFee):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000 > (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    sub_2445aefb++
                    stor23.length++
                    stor23[stor23.length].field_0 = msg.sender
                    stor26[address(msg.sender)].field_0 = 1
                    stor26[address(msg.sender)].field_256 = arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor26[address(msg.sender)].field_512 = 0
                    stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                    stor26[address(msg.sender)].field_1024 = (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000) - ((arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000)
                    stor24 += arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                    emit 0x6599e6d8: arg1, arg1 * stor3[address(msg.sender)].field_256 / 10000, 0, (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000) - ((arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000), block.timestamp, msg.sender
    else:
        if arg1 * stor3[address(msg.sender)].field_512 / stor3[address(msg.sender)].field_512 != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        if not sub_a14ed18a:
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / _totalSupply <= arg1 * stor3[address(msg.sender)].field_256 / 10000:
                sub_2445aefb++
                stor23.length++
                stor23[stor23.length].field_0 = msg.sender
                stor26[address(msg.sender)].field_0 = 1
                stor26[address(msg.sender)].field_256 = arg1 * stor3[address(msg.sender)].field_256 / 10000
                stor26[address(msg.sender)].field_512 = arg1 * stor3[address(msg.sender)].field_512 / 10000
                stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                stor26[address(msg.sender)].field_1024 = 0
                stor24 += arg1 * stor3[address(msg.sender)].field_256 / 10000
                stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                emit 0x6599e6d8: arg1, arg1 * stor3[address(msg.sender)].field_256 / 10000, arg1 * stor3[address(msg.sender)].field_512 / 10000, 0, block.timestamp, msg.sender
            else:
                if arg1 * stor3[address(msg.sender)].field_256 / 10000 > 0 / _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000):
                    if 0 > (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    sub_2445aefb++
                    stor23.length++
                    stor23[stor23.length].field_0 = msg.sender
                    stor26[address(msg.sender)].field_0 = 1
                    stor26[address(msg.sender)].field_256 = arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor26[address(msg.sender)].field_512 = arg1 * stor3[address(msg.sender)].field_512 / 10000
                    stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                    stor26[address(msg.sender)].field_1024 = (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000)
                    stor24 += arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                    emit 0x6599e6d8: arg1, arg1 * stor3[address(msg.sender)].field_256 / 10000, arg1 * stor3[address(msg.sender)].field_512 / 10000, (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000), block.timestamp, msg.sender
                else:
                    if (0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000) != uint16(teamRewardFee + farmerRewardFee):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000 > (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    sub_2445aefb++
                    stor23.length++
                    stor23[stor23.length].field_0 = msg.sender
                    stor26[address(msg.sender)].field_0 = 1
                    stor26[address(msg.sender)].field_256 = arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor26[address(msg.sender)].field_512 = arg1 * stor3[address(msg.sender)].field_512 / 10000
                    stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                    stor26[address(msg.sender)].field_1024 = (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000) - ((0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000)
                    stor24 += arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                    emit 0x6599e6d8: arg1, arg1 * stor3[address(msg.sender)].field_256 / 10000, arg1 * stor3[address(msg.sender)].field_512 / 10000, (0 / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000) - ((0 / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000), block.timestamp, msg.sender
        else:
            if arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / sub_a14ed18a != arg1 * balanceOf[address(msg.sender)] / 10000:
                revert with 0, 'SafeMath: multiplication overflow'
            if not _totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply <= arg1 * stor3[address(msg.sender)].field_256 / 10000:
                sub_2445aefb++
                stor23.length++
                stor23[stor23.length].field_0 = msg.sender
                stor26[address(msg.sender)].field_0 = 1
                stor26[address(msg.sender)].field_256 = arg1 * stor3[address(msg.sender)].field_256 / 10000
                stor26[address(msg.sender)].field_512 = arg1 * stor3[address(msg.sender)].field_512 / 10000
                stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                stor26[address(msg.sender)].field_1024 = 0
                stor24 += arg1 * stor3[address(msg.sender)].field_256 / 10000
                stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                emit 0x6599e6d8: arg1, arg1 * stor3[address(msg.sender)].field_256 / 10000, arg1 * stor3[address(msg.sender)].field_512 / 10000, 0, block.timestamp, msg.sender
            else:
                if arg1 * stor3[address(msg.sender)].field_256 / 10000 > arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if not (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000):
                    if 0 > (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    sub_2445aefb++
                    stor23.length++
                    stor23[stor23.length].field_0 = msg.sender
                    stor26[address(msg.sender)].field_0 = 1
                    stor26[address(msg.sender)].field_256 = arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor26[address(msg.sender)].field_512 = arg1 * stor3[address(msg.sender)].field_512 / 10000
                    stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                    stor26[address(msg.sender)].field_1024 = (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000)
                    stor24 += arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                    emit 0x6599e6d8: arg1, arg1 * stor3[address(msg.sender)].field_256 / 10000, arg1 * stor3[address(msg.sender)].field_512 / 10000, (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000), block.timestamp, msg.sender
                else:
                    if (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000) != uint16(teamRewardFee + farmerRewardFee):
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000 > (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    sub_2445aefb++
                    stor23.length++
                    stor23[stor23.length].field_0 = msg.sender
                    stor26[address(msg.sender)].field_0 = 1
                    stor26[address(msg.sender)].field_256 = arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor26[address(msg.sender)].field_512 = arg1 * stor3[address(msg.sender)].field_512 / 10000
                    stor26[address(msg.sender)].field_768 = arg1 * balanceOf[address(msg.sender)] / 10000
                    stor26[address(msg.sender)].field_1024 = (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000) - ((arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000)
                    stor24 += arg1 * stor3[address(msg.sender)].field_256 / 10000
                    stor25 += arg1 * balanceOf[address(msg.sender)] / 10000
                    emit 0x6599e6d8: arg1, arg1 * stor3[address(msg.sender)].field_256 / 10000, arg1 * stor3[address(msg.sender)].field_512 / 10000, (arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply) - (arg1 * stor3[address(msg.sender)].field_256 / 10000) - ((arg1 * balanceOf[address(msg.sender)] / 10000 * sub_a14ed18a / _totalSupply * uint16(teamRewardFee + farmerRewardFee)) - (arg1 * stor3[address(msg.sender)].field_256 / 10000 * uint16(teamRewardFee + farmerRewardFee)) / 10000), block.timestamp, msg.sender
    uint8(stor34.field_32) = 0
    return (arg1 * stor3[address(msg.sender)].field_256 / 10000)
}

function sub_1af30159(?) payable {
    require calldata.size - 4 >= 32
    if uint8(stor34.field_32):
        revert with 0, 'No re-entrancy'
    uint8(stor34.field_32) = 1
    if uint8(stor34.field_40):
        revert with 0, 'Pool: paused'
    if sub_e128cca9[address(msg.sender)].field_256 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'POOL: Invalid Operation, fund is not withdrawable'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'POOL: Invalid Operation, fund is not withdrawable'
    if arg1 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'POOL: Invalid Operation, fund is not withdrawable'
    if not sub_e128cca9[address(msg.sender)].field_256:
        if not sub_e128cca9[address(msg.sender)].field_512:
            mem[228] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'pool doesnot have enough balance'
            if not sub_e128cca9[address(msg.sender)].field_256:
                idx = 0
                while idx < stor18.length:
                    mem[0] = 18
                    if stor18[idx].field_0 != msg.sender:
                        idx = idx + 1
                        continue 
                    require stor18.length - 1 < stor18.length
                    require idx < stor18.length
                    stor18[idx].field_0 = stor18[stor18.length].field_0
                    require stor18.length
                    stor18[stor18.length].field_0 = 0
                    stor18.length--
                    sub_93c63140--
                    mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                    if 0 > stor19:
                        mem[ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 292] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 356] = mem[ceil32(return_data.size) + idx + 256]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 356 len 30], 0
                    mem[ceil32(return_data.size) + 320] = 'SafeMath: subtraction overflow'
                    if 0 > stor20:
                        mem[ceil32(return_data.size) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 356] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 420] = mem[ceil32(return_data.size) + idx + 320]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 420 len 30], 0
                    mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                    if 0 > sub_e128cca9[address(msg.sender)].field_256:
                        mem[ceil32(return_data.size) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 420] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 484] = mem[ceil32(return_data.size) + idx + 384]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 484 len 30], 0
                    mem[ceil32(return_data.size) + 448] = 'SafeMath: subtraction overflow'
                    if 0 > sub_e128cca9[address(msg.sender)].field_512:
                        mem[ceil32(return_data.size) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 484] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 548] = mem[ceil32(return_data.size) + idx + 448]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 548 len 30], 0
                    if not stor3[address(msg.sender)].field_256:
                        investorCount--
                        stor3[address(msg.sender)].field_0 = 0
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    if 0 <= ext_call.return_data[0]:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_call.return_data[0]
                        emit 0xbf732dd7: arg1, 0, 0, block.timestamp, msg.sender
                    else:
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(priceFeedAddress)
                        staticcall priceFeedAddress.0xc91935fa with:
                                gas gas_remaining wei
                               args tokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_call.return_data[0]
                            emit 0xbf732dd7: arg1, ext_call.return_data[0], 0, block.timestamp, msg.sender
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_call.return_data[0]
                            emit 0xbf732dd7: arg1, ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10^18, block.timestamp, msg.sender
                    uint8(stor34.field_32) = 0
                    return 0
                sub_93c63140--
            if 0 > stor19:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 > stor20:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 > sub_e128cca9[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 > sub_e128cca9[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not stor3[address(msg.sender)].field_256:
                investorCount--
                stor3[address(msg.sender)].field_0 = 0
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            if 0 <= ext_call.return_data[0]:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                emit 0xbf732dd7: arg1, 0, 0, block.timestamp, msg.sender
            else:
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(priceFeedAddress)
                staticcall priceFeedAddress.0xc91935fa with:
                        gas gas_remaining wei
                       args tokenAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    emit 0xbf732dd7: arg1, ext_call.return_data[0], 0, block.timestamp, msg.sender
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    emit 0xbf732dd7: arg1, ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10^18, block.timestamp, msg.sender
        else:
            if arg1 * sub_e128cca9[address(msg.sender)].field_512 / sub_e128cca9[address(msg.sender)].field_512 != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[228] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'pool doesnot have enough balance'
            if not sub_e128cca9[address(msg.sender)].field_256:
                idx = 0
                while idx < stor18.length:
                    mem[0] = 18
                    if stor18[idx].field_0 != msg.sender:
                        idx = idx + 1
                        continue 
                    require stor18.length - 1 < stor18.length
                    require idx < stor18.length
                    stor18[idx].field_0 = stor18[stor18.length].field_0
                    require stor18.length
                    stor18[stor18.length].field_0 = 0
                    stor18.length--
                    sub_93c63140--
                    mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                    if 0 > stor19:
                        mem[ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 292] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 356] = mem[ceil32(return_data.size) + idx + 256]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 356 len 30], 0
                    mem[ceil32(return_data.size) + 320] = 'SafeMath: subtraction overflow'
                    if arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000 > stor20:
                        mem[ceil32(return_data.size) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 356] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 420] = mem[ceil32(return_data.size) + idx + 320]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 420 len 30], 0
                    stor20 -= arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000
                    mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                    if 0 > sub_e128cca9[address(msg.sender)].field_256:
                        mem[ceil32(return_data.size) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 420] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 484] = mem[ceil32(return_data.size) + idx + 384]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 484 len 30], 0
                    mem[ceil32(return_data.size) + 448] = 'SafeMath: subtraction overflow'
                    if arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000 > sub_e128cca9[address(msg.sender)].field_512:
                        mem[ceil32(return_data.size) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 484] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 548] = mem[ceil32(return_data.size) + idx + 448]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 548 len 30], 0
                    sub_e128cca9[address(msg.sender)].field_512 -= arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000
                    if not stor3[address(msg.sender)].field_256:
                        investorCount--
                        stor3[address(msg.sender)].field_0 = 0
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    if 0 <= ext_call.return_data[0]:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_call.return_data[0]
                        emit 0xbf732dd7: arg1, 0, arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000, block.timestamp, msg.sender
                    else:
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(priceFeedAddress)
                        staticcall priceFeedAddress.0xc91935fa with:
                                gas gas_remaining wei
                               args tokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_call.return_data[0]
                            emit 0xbf732dd7: arg1, ext_call.return_data[0], 0, block.timestamp, msg.sender
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_call.return_data[0]
                            emit 0xbf732dd7: arg1, ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10^18, block.timestamp, msg.sender
                    uint8(stor34.field_32) = 0
                    return 0
                sub_93c63140--
            if 0 > stor19:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000 > stor20:
                revert with 0, 'SafeMath: subtraction overflow', 0
            stor20 -= arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000
            if 0 > sub_e128cca9[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000 > sub_e128cca9[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: subtraction overflow', 0
            sub_e128cca9[address(msg.sender)].field_512 -= arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000
            if not stor3[address(msg.sender)].field_256:
                investorCount--
                stor3[address(msg.sender)].field_0 = 0
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            if 0 <= ext_call.return_data[0]:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                emit 0xbf732dd7: arg1, 0, arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000, block.timestamp, msg.sender
            else:
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(priceFeedAddress)
                staticcall priceFeedAddress.0xc91935fa with:
                        gas gas_remaining wei
                       args tokenAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    emit 0xbf732dd7: arg1, ext_call.return_data[0], 0, block.timestamp, msg.sender
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    emit 0xbf732dd7: arg1, ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10^18, block.timestamp, msg.sender
    else:
        if arg1 * sub_e128cca9[address(msg.sender)].field_256 / sub_e128cca9[address(msg.sender)].field_256 != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if not sub_e128cca9[address(msg.sender)].field_512:
            mem[228] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 98 * arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 / 100:
                revert with 0, 'pool doesnot have enough balance'
            if sub_e128cca9[address(msg.sender)].field_256 == arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000:
                idx = 0
                while idx < stor18.length:
                    mem[0] = 18
                    if stor18[idx].field_0 != msg.sender:
                        idx = idx + 1
                        continue 
                    require stor18.length - 1 < stor18.length
                    require idx < stor18.length
                    stor18[idx].field_0 = stor18[stor18.length].field_0
                    require stor18.length
                    stor18[stor18.length].field_0 = 0
                    stor18.length--
                    sub_93c63140--
                    mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                    if arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 > stor19:
                        mem[ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 292] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 356] = mem[ceil32(return_data.size) + idx + 256]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 356 len 30], 0
                    stor19 -= arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000
                    mem[ceil32(return_data.size) + 320] = 'SafeMath: subtraction overflow'
                    if 0 > stor20:
                        mem[ceil32(return_data.size) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 356] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 420] = mem[ceil32(return_data.size) + idx + 320]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 420 len 30], 0
                    mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                    if arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 > sub_e128cca9[address(msg.sender)].field_256:
                        mem[ceil32(return_data.size) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 420] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 484] = mem[ceil32(return_data.size) + idx + 384]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 484 len 30], 0
                    sub_e128cca9[address(msg.sender)].field_256 -= arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000
                    mem[ceil32(return_data.size) + 448] = 'SafeMath: subtraction overflow'
                    if 0 > sub_e128cca9[address(msg.sender)].field_512:
                        mem[ceil32(return_data.size) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 484] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 548] = mem[ceil32(return_data.size) + idx + 448]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 548 len 30], 0
                    if not stor3[address(msg.sender)].field_256:
                        investorCount--
                        stor3[address(msg.sender)].field_0 = 0
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    if arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 <= ext_call.return_data[0]:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_call.return_data[0]
                        emit 0xbf732dd7: arg1, arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000, 0, block.timestamp, msg.sender
                    else:
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(priceFeedAddress)
                        staticcall priceFeedAddress.0xc91935fa with:
                                gas gas_remaining wei
                               args tokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_call.return_data[0]
                            emit 0xbf732dd7: arg1, ext_call.return_data[0], 0, block.timestamp, msg.sender
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_call.return_data[0]
                            emit 0xbf732dd7: arg1, ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10^18, block.timestamp, msg.sender
                    uint8(stor34.field_32) = 0
                    return 0
                sub_93c63140--
            if arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 > stor19:
                revert with 0, 'SafeMath: subtraction overflow', 0
            stor19 -= arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000
            if 0 > stor20:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 > sub_e128cca9[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: subtraction overflow', 0
            sub_e128cca9[address(msg.sender)].field_256 -= arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000
            if 0 > sub_e128cca9[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if not stor3[address(msg.sender)].field_256:
                investorCount--
                stor3[address(msg.sender)].field_0 = 0
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            if arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 <= ext_call.return_data[0]:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                emit 0xbf732dd7: arg1, arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000, 0, block.timestamp, msg.sender
            else:
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(priceFeedAddress)
                staticcall priceFeedAddress.0xc91935fa with:
                        gas gas_remaining wei
                       args tokenAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    emit 0xbf732dd7: arg1, ext_call.return_data[0], 0, block.timestamp, msg.sender
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    emit 0xbf732dd7: arg1, ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10^18, block.timestamp, msg.sender
        else:
            if arg1 * sub_e128cca9[address(msg.sender)].field_512 / sub_e128cca9[address(msg.sender)].field_512 != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[228] = this.address
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 98 * arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 / 100:
                revert with 0, 'pool doesnot have enough balance'
            if sub_e128cca9[address(msg.sender)].field_256 == arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000:
                idx = 0
                while idx < stor18.length:
                    mem[0] = 18
                    if stor18[idx].field_0 != msg.sender:
                        idx = idx + 1
                        continue 
                    require stor18.length - 1 < stor18.length
                    require idx < stor18.length
                    stor18[idx].field_0 = stor18[stor18.length].field_0
                    require stor18.length
                    stor18[stor18.length].field_0 = 0
                    stor18.length--
                    sub_93c63140--
                    mem[ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                    if arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 > stor19:
                        mem[ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 292] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 356] = mem[ceil32(return_data.size) + idx + 256]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 356 len 30], 0
                    stor19 -= arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000
                    mem[ceil32(return_data.size) + 320] = 'SafeMath: subtraction overflow'
                    if arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000 > stor20:
                        mem[ceil32(return_data.size) + 352] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 356] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 420] = mem[ceil32(return_data.size) + idx + 320]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 420 len 30], 0
                    stor20 -= arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000
                    mem[ceil32(return_data.size) + 384] = 'SafeMath: subtraction overflow'
                    if arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 > sub_e128cca9[address(msg.sender)].field_256:
                        mem[ceil32(return_data.size) + 416] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 420] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 484] = mem[ceil32(return_data.size) + idx + 384]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 484 len 30], 0
                    sub_e128cca9[address(msg.sender)].field_256 -= arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000
                    mem[ceil32(return_data.size) + 448] = 'SafeMath: subtraction overflow'
                    if arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000 > sub_e128cca9[address(msg.sender)].field_512:
                        mem[ceil32(return_data.size) + 480] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 484] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + ceil32(return_data.size) + 548] = mem[ceil32(return_data.size) + idx + 448]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[ceil32(return_data.size) + 548 len 30], 0
                    sub_e128cca9[address(msg.sender)].field_512 -= arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000
                    if not stor3[address(msg.sender)].field_256:
                        investorCount--
                        stor3[address(msg.sender)].field_0 = 0
                    require ext_code.size(tokenAddress)
                    staticcall tokenAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenAddress)
                    if arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 <= ext_call.return_data[0]:
                        call tokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_call.return_data[0]
                        emit 0xbf732dd7: arg1, arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000, arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000, block.timestamp, msg.sender
                    else:
                        staticcall tokenAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(priceFeedAddress)
                        staticcall priceFeedAddress.0xc91935fa with:
                                gas gas_remaining wei
                               args tokenAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_call.return_data[0]
                            emit 0xbf732dd7: arg1, ext_call.return_data[0], 0, block.timestamp, msg.sender
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_call.return_data[0]
                            emit 0xbf732dd7: arg1, ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10^18, block.timestamp, msg.sender
                    uint8(stor34.field_32) = 0
                    return 0
                sub_93c63140--
            if arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 > stor19:
                revert with 0, 'SafeMath: subtraction overflow', 0
            stor19 -= arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000
            if arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000 > stor20:
                revert with 0, 'SafeMath: subtraction overflow', 0
            stor20 -= arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000
            if arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 > sub_e128cca9[address(msg.sender)].field_256:
                revert with 0, 'SafeMath: subtraction overflow', 0
            sub_e128cca9[address(msg.sender)].field_256 -= arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000
            if arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000 > sub_e128cca9[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: subtraction overflow', 0
            sub_e128cca9[address(msg.sender)].field_512 -= arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000
            if not stor3[address(msg.sender)].field_256:
                investorCount--
                stor3[address(msg.sender)].field_0 = 0
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(tokenAddress)
            if arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000 <= ext_call.return_data[0]:
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require ext_call.return_data[0]
                emit 0xbf732dd7: arg1, arg1 * sub_e128cca9[address(msg.sender)].field_256 / 10000, arg1 * sub_e128cca9[address(msg.sender)].field_512 / 10000, block.timestamp, msg.sender
            else:
                staticcall tokenAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(priceFeedAddress)
                staticcall priceFeedAddress.0xc91935fa with:
                        gas gas_remaining wei
                       args tokenAddress
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    emit 0xbf732dd7: arg1, ext_call.return_data[0], 0, block.timestamp, msg.sender
                else:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                        revert with 0, 'SafeMath: multiplication overflow'
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_call.return_data[0]
                    emit 0xbf732dd7: arg1, ext_call.return_data[0], ext_call.return_data[0] * ext_call.return_data[0] / 10^18, block.timestamp, msg.sender
    uint8(stor34.field_32) = 0
    return 0
}

function sub_92b649f4(?) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Pool: caller is not the admin'
    if not uint8(stor34.field_40):
        revert with 0, 'Pool: not paused'
    if not sub_93c63140:
        revert with 0, 'Nothing to InvestInSeq'
    if sub_a14ed18a <= stor31:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'POOL: Wrong oldTotalPoolValue values'
    mem[64] = 160
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if stor31 > sub_a14ed18a:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if sub_a14ed18a - stor31 > stor19:
        revert with 0, 'POOL: Wrong oldTotalPoolValue values'
    if arg1 <= sub_93c63140:
        s = sub_93c63140
        idx = arg1
        while idx:
            require s - 1 < stor18.length
            mem[0] = stor18[s].field_0
            mem[32] = 21
            _461 = mem[64]
            mem[64] = mem[64] + 64
            mem[_461] = 30
            mem[_461 + 32] = 'SafeMath: subtraction overflow'
            if stor31 > sub_a14ed18a:
                _465 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _465 + 68] = mem[_461 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_465 + 98] = 0
                revert with memory
                  from mem[64]
                   len _465 + -mem[64] + 100
            if not sub_e128cca9[stor18[s].field_0].field_256:
                _474 = mem[64]
                mem[64] = mem[64] + 64
                mem[_474] = 26
                mem[_474 + 32] = 'SafeMath: division by zero'
                if not stor19:
                    _484 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _484 + 68] = mem[_474 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_484 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _484 + -mem[64] + 100
                if _totalSupply <= 0:
                    stor31 += 0 / stor19
                    _496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_496] = 30
                    mem[_496 + 32] = 'SafeMath: subtraction overflow'
                    if sub_e128cca9[stor18[s].field_0].field_256 > stor19:
                        _504 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _504 + 68] = mem[_496 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_504 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _504 + -mem[64] + 100
                    stor19 -= sub_e128cca9[stor18[s].field_0].field_256
                    mem[0] = stor18[s].field_0
                    mem[32] = 21
                    _533 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_533] = 30
                    mem[_533 + 32] = 'SafeMath: subtraction overflow'
                    if sub_e128cca9[stor18[s].field_0].field_512 > stor20:
                        _551 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _551 + 68] = mem[_533 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_551 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _551 + -mem[64] + 100
                    stor20 -= sub_e128cca9[stor18[s].field_0].field_512
                    if not stor18[s].field_0:
                        revert with 0, 'BEP20: mint to the zero address'
                    if (0 / stor19) + _totalSupply < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalSupply += 0 / stor19
                    mem[0] = stor18[s].field_0
                    if (0 / stor19) + balanceOf[stor18[s].field_0] < balanceOf[stor18[s].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor18[s].field_0] += 0 / stor19
                    emit Transfer((0 / stor19), 0, stor18[s].field_0);
                    stor3[stor18[s].field_0].field_256 += sub_e128cca9[stor18[s].field_0].field_256
                    stor3[stor18[s].field_0].field_512 += sub_e128cca9[stor18[s].field_0].field_512
                    stor13 += sub_e128cca9[stor18[s].field_0].field_256
                    stor14 += sub_e128cca9[stor18[s].field_0].field_512
                    mem[32] = 3
                    stor3[stor18[s].field_0].field_0 = 1
                    sub_93c63140--
                    mem[mem[64]] = sub_e128cca9[stor18[s].field_0].field_256
                    mem[mem[64] + 32] = 0 / stor19
                    mem[mem[64] + 64] = block.timestamp
                    emit 0xdcbfd106: sub_e128cca9[stor18[s].field_0].field_256, 0 / stor19, block.timestamp, stor18[s].field_0
                else:
                    if not 0 / stor19:
                        _513 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_513] = 26
                        mem[_513 + 32] = 'SafeMath: division by zero'
                        if not stor31:
                            _532 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _532 + 68] = mem[_513 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_532 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _532 + -mem[64] + 100
                        stor31 += 0 / stor19
                        _563 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_563] = 30
                        mem[_563 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_256 > stor19:
                            _589 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _589 + 68] = mem[_563 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_589 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _589 + -mem[64] + 100
                        stor19 -= sub_e128cca9[stor18[s].field_0].field_256
                        mem[0] = stor18[s].field_0
                        mem[32] = 21
                        _633 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_633] = 30
                        mem[_633 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_512 > stor20:
                            _673 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _673 + 68] = mem[_633 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_673 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _673 + -mem[64] + 100
                        stor20 -= sub_e128cca9[stor18[s].field_0].field_512
                        if not stor18[s].field_0:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (0 / stor31) + _totalSupply < _totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        _totalSupply += 0 / stor31
                        mem[0] = stor18[s].field_0
                        if (0 / stor31) + balanceOf[stor18[s].field_0] < balanceOf[stor18[s].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor18[s].field_0] += 0 / stor31
                        emit Transfer((0 / stor31), 0, stor18[s].field_0);
                        stor3[stor18[s].field_0].field_256 += sub_e128cca9[stor18[s].field_0].field_256
                        stor3[stor18[s].field_0].field_512 += sub_e128cca9[stor18[s].field_0].field_512
                        stor13 += sub_e128cca9[stor18[s].field_0].field_256
                        stor14 += sub_e128cca9[stor18[s].field_0].field_512
                        mem[32] = 3
                        stor3[stor18[s].field_0].field_0 = 1
                        sub_93c63140--
                        mem[mem[64]] = sub_e128cca9[stor18[s].field_0].field_256
                        mem[mem[64] + 32] = 0 / stor31
                        mem[mem[64] + 64] = block.timestamp
                        emit 0xdcbfd106: sub_e128cca9[stor18[s].field_0].field_256, 0 / stor31, block.timestamp, stor18[s].field_0
                    else:
                        if _totalSupply * 0 / stor19 / 0 / stor19 != _totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _519 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_519] = 26
                        mem[_519 + 32] = 'SafeMath: division by zero'
                        if not stor31:
                            _542 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _542 + 68] = mem[_519 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_542 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _542 + -mem[64] + 100
                        stor31 += 0 / stor19
                        _576 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_576] = 30
                        mem[_576 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_256 > stor19:
                            _601 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _601 + 68] = mem[_576 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_601 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _601 + -mem[64] + 100
                        stor19 -= sub_e128cca9[stor18[s].field_0].field_256
                        mem[0] = stor18[s].field_0
                        mem[32] = 21
                        _654 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_654] = 30
                        mem[_654 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_512 > stor20:
                            _685 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _685 + 68] = mem[_654 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_685 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _685 + -mem[64] + 100
                        stor20 -= sub_e128cca9[stor18[s].field_0].field_512
                        if not stor18[s].field_0:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (_totalSupply * 0 / stor19 / stor31) + _totalSupply < _totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        _totalSupply += _totalSupply * 0 / stor19 / stor31
                        mem[0] = stor18[s].field_0
                        if (_totalSupply * 0 / stor19 / stor31) + balanceOf[stor18[s].field_0] < balanceOf[stor18[s].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor18[s].field_0] += _totalSupply * 0 / stor19 / stor31
                        emit Transfer((_totalSupply * 0 / stor19 / stor31), 0, stor18[s].field_0);
                        stor3[stor18[s].field_0].field_256 += sub_e128cca9[stor18[s].field_0].field_256
                        stor3[stor18[s].field_0].field_512 += sub_e128cca9[stor18[s].field_0].field_512
                        stor13 += sub_e128cca9[stor18[s].field_0].field_256
                        stor14 += sub_e128cca9[stor18[s].field_0].field_512
                        mem[32] = 3
                        stor3[stor18[s].field_0].field_0 = 1
                        sub_93c63140--
                        mem[mem[64]] = sub_e128cca9[stor18[s].field_0].field_256
                        mem[mem[64] + 32] = _totalSupply * 0 / stor19 / stor31
                        mem[mem[64] + 64] = block.timestamp
                        emit 0xdcbfd106: sub_e128cca9[stor18[s].field_0].field_256, _totalSupply * 0 / stor19 / stor31, block.timestamp, stor18[s].field_0
            else:
                if (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / sub_e128cca9[stor18[s].field_0].field_256 != sub_a14ed18a - stor31:
                    revert with 0, 'SafeMath: multiplication overflow'
                _478 = mem[64]
                mem[64] = mem[64] + 64
                mem[_478] = 26
                mem[_478 + 32] = 'SafeMath: division by zero'
                if not stor19:
                    _486 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _486 + 68] = mem[_478 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_486 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _486 + -mem[64] + 100
                if _totalSupply <= 0:
                    stor31 += (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19
                    _498 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_498] = 30
                    mem[_498 + 32] = 'SafeMath: subtraction overflow'
                    if sub_e128cca9[stor18[s].field_0].field_256 > stor19:
                        _511 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _511 + 68] = mem[_498 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_511 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _511 + -mem[64] + 100
                    stor19 -= sub_e128cca9[stor18[s].field_0].field_256
                    mem[0] = stor18[s].field_0
                    mem[32] = 21
                    _541 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_541] = 30
                    mem[_541 + 32] = 'SafeMath: subtraction overflow'
                    if sub_e128cca9[stor18[s].field_0].field_512 > stor20:
                        _557 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _557 + 68] = mem[_541 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_557 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _557 + -mem[64] + 100
                    stor20 -= sub_e128cca9[stor18[s].field_0].field_512
                    if not stor18[s].field_0:
                        revert with 0, 'BEP20: mint to the zero address'
                    if ((sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19) + _totalSupply < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalSupply += (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19
                    mem[0] = stor18[s].field_0
                    if ((sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19) + balanceOf[stor18[s].field_0] < balanceOf[stor18[s].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor18[s].field_0] += (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19
                    emit Transfer(((sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19), 0, stor18[s].field_0);
                    stor3[stor18[s].field_0].field_256 += sub_e128cca9[stor18[s].field_0].field_256
                    stor3[stor18[s].field_0].field_512 += sub_e128cca9[stor18[s].field_0].field_512
                    stor13 += sub_e128cca9[stor18[s].field_0].field_256
                    stor14 += sub_e128cca9[stor18[s].field_0].field_512
                    mem[32] = 3
                    stor3[stor18[s].field_0].field_0 = 1
                    sub_93c63140--
                    mem[mem[64]] = sub_e128cca9[stor18[s].field_0].field_256
                    mem[mem[64] + 32] = (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19
                    mem[mem[64] + 64] = block.timestamp
                    emit 0xdcbfd106: sub_e128cca9[stor18[s].field_0].field_256, (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19, block.timestamp, stor18[s].field_0
                else:
                    if not (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19:
                        _518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_518] = 26
                        mem[_518 + 32] = 'SafeMath: division by zero'
                        if not stor31:
                            _540 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _540 + 68] = mem[_518 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_540 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _540 + -mem[64] + 100
                        stor31 += (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19
                        _572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_572] = 30
                        mem[_572 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_256 > stor19:
                            _598 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _598 + 68] = mem[_572 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_598 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _598 + -mem[64] + 100
                        stor19 -= sub_e128cca9[stor18[s].field_0].field_256
                        mem[0] = stor18[s].field_0
                        mem[32] = 21
                        _651 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_651] = 30
                        mem[_651 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_512 > stor20:
                            _683 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _683 + 68] = mem[_651 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_683 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _683 + -mem[64] + 100
                        stor20 -= sub_e128cca9[stor18[s].field_0].field_512
                        if not stor18[s].field_0:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (0 / stor31) + _totalSupply < _totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        _totalSupply += 0 / stor31
                        mem[0] = stor18[s].field_0
                        if (0 / stor31) + balanceOf[stor18[s].field_0] < balanceOf[stor18[s].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor18[s].field_0] += 0 / stor31
                        emit Transfer((0 / stor31), 0, stor18[s].field_0);
                        stor3[stor18[s].field_0].field_256 += sub_e128cca9[stor18[s].field_0].field_256
                        stor3[stor18[s].field_0].field_512 += sub_e128cca9[stor18[s].field_0].field_512
                        stor13 += sub_e128cca9[stor18[s].field_0].field_256
                        stor14 += sub_e128cca9[stor18[s].field_0].field_512
                        mem[32] = 3
                        stor3[stor18[s].field_0].field_0 = 1
                        sub_93c63140--
                        mem[mem[64]] = sub_e128cca9[stor18[s].field_0].field_256
                        mem[mem[64] + 32] = 0 / stor31
                        mem[mem[64] + 64] = block.timestamp
                        emit 0xdcbfd106: sub_e128cca9[stor18[s].field_0].field_256, 0 / stor31, block.timestamp, stor18[s].field_0
                    else:
                        if _totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 != _totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _528 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_528] = 26
                        mem[_528 + 32] = 'SafeMath: division by zero'
                        if not stor31:
                            _548 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _548 + 68] = mem[_528 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_548 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _548 + -mem[64] + 100
                        stor31 += (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19
                        _586 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_586] = 30
                        mem[_586 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_256 > stor19:
                            _608 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _608 + 68] = mem[_586 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_608 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _608 + -mem[64] + 100
                        stor19 -= sub_e128cca9[stor18[s].field_0].field_256
                        mem[0] = stor18[s].field_0
                        mem[32] = 21
                        _668 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_668] = 30
                        mem[_668 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_512 > stor20:
                            _694 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _694 + 68] = mem[_668 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_694 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _694 + -mem[64] + 100
                        stor20 -= sub_e128cca9[stor18[s].field_0].field_512
                        if not stor18[s].field_0:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (_totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31) + _totalSupply < _totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        _totalSupply += _totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31
                        mem[0] = stor18[s].field_0
                        if (_totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31) + balanceOf[stor18[s].field_0] < balanceOf[stor18[s].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor18[s].field_0] += _totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31
                        emit Transfer((_totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31), 0, stor18[s].field_0);
                        stor3[stor18[s].field_0].field_256 += sub_e128cca9[stor18[s].field_0].field_256
                        stor3[stor18[s].field_0].field_512 += sub_e128cca9[stor18[s].field_0].field_512
                        stor13 += sub_e128cca9[stor18[s].field_0].field_256
                        stor14 += sub_e128cca9[stor18[s].field_0].field_512
                        mem[32] = 3
                        stor3[stor18[s].field_0].field_0 = 1
                        sub_93c63140--
                        mem[mem[64]] = sub_e128cca9[stor18[s].field_0].field_256
                        mem[mem[64] + 32] = _totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31
                        mem[mem[64] + 64] = block.timestamp
                        emit 0xdcbfd106: sub_e128cca9[stor18[s].field_0].field_256, _totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31, block.timestamp, stor18[s].field_0
            mem[0] = stor18[s].field_0
            mem[32] = 21
            sub_e128cca9[stor18[s].field_0].field_0 = 0
            sub_e128cca9[stor18[s].field_0].field_256 = 0
            sub_e128cca9[stor18[s].field_0].field_512 = 0
            s = s - 1
            idx = idx - 1
            continue 
    else:
        s = sub_93c63140
        idx = sub_93c63140
        while idx:
            require s - 1 < stor18.length
            mem[0] = stor18[s].field_0
            mem[32] = 21
            _463 = mem[64]
            mem[64] = mem[64] + 64
            mem[_463] = 30
            mem[_463 + 32] = 'SafeMath: subtraction overflow'
            if stor31 > sub_a14ed18a:
                _466 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _466 + 68] = mem[_463 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_466 + 98] = 0
                revert with memory
                  from mem[64]
                   len _466 + -mem[64] + 100
            if not sub_e128cca9[stor18[s].field_0].field_256:
                _476 = mem[64]
                mem[64] = mem[64] + 64
                mem[_476] = 26
                mem[_476 + 32] = 'SafeMath: division by zero'
                if not stor19:
                    _485 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _485 + 68] = mem[_476 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_485 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _485 + -mem[64] + 100
                if _totalSupply <= 0:
                    stor31 += 0 / stor19
                    _497 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_497] = 30
                    mem[_497 + 32] = 'SafeMath: subtraction overflow'
                    if sub_e128cca9[stor18[s].field_0].field_256 > stor19:
                        _508 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _508 + 68] = mem[_497 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_508 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _508 + -mem[64] + 100
                    stor19 -= sub_e128cca9[stor18[s].field_0].field_256
                    mem[0] = stor18[s].field_0
                    mem[32] = 21
                    _539 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_539] = 30
                    mem[_539 + 32] = 'SafeMath: subtraction overflow'
                    if sub_e128cca9[stor18[s].field_0].field_512 > stor20:
                        _555 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _555 + 68] = mem[_539 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_555 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _555 + -mem[64] + 100
                    stor20 -= sub_e128cca9[stor18[s].field_0].field_512
                    if not stor18[s].field_0:
                        revert with 0, 'BEP20: mint to the zero address'
                    if (0 / stor19) + _totalSupply < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalSupply += 0 / stor19
                    mem[0] = stor18[s].field_0
                    if (0 / stor19) + balanceOf[stor18[s].field_0] < balanceOf[stor18[s].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor18[s].field_0] += 0 / stor19
                    emit Transfer((0 / stor19), 0, stor18[s].field_0);
                    stor3[stor18[s].field_0].field_256 += sub_e128cca9[stor18[s].field_0].field_256
                    stor3[stor18[s].field_0].field_512 += sub_e128cca9[stor18[s].field_0].field_512
                    stor13 += sub_e128cca9[stor18[s].field_0].field_256
                    stor14 += sub_e128cca9[stor18[s].field_0].field_512
                    mem[32] = 3
                    stor3[stor18[s].field_0].field_0 = 1
                    sub_93c63140--
                    mem[mem[64]] = sub_e128cca9[stor18[s].field_0].field_256
                    mem[mem[64] + 32] = 0 / stor19
                    mem[mem[64] + 64] = block.timestamp
                    emit 0xdcbfd106: sub_e128cca9[stor18[s].field_0].field_256, 0 / stor19, block.timestamp, stor18[s].field_0
                else:
                    if not 0 / stor19:
                        _517 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_517] = 26
                        mem[_517 + 32] = 'SafeMath: division by zero'
                        if not stor31:
                            _538 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _538 + 68] = mem[_517 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_538 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _538 + -mem[64] + 100
                        stor31 += 0 / stor19
                        _568 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_568] = 30
                        mem[_568 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_256 > stor19:
                            _595 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _595 + 68] = mem[_568 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_595 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _595 + -mem[64] + 100
                        stor19 -= sub_e128cca9[stor18[s].field_0].field_256
                        mem[0] = stor18[s].field_0
                        mem[32] = 21
                        _645 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_645] = 30
                        mem[_645 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_512 > stor20:
                            _680 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _680 + 68] = mem[_645 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_680 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _680 + -mem[64] + 100
                        stor20 -= sub_e128cca9[stor18[s].field_0].field_512
                        if not stor18[s].field_0:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (0 / stor31) + _totalSupply < _totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        _totalSupply += 0 / stor31
                        mem[0] = stor18[s].field_0
                        if (0 / stor31) + balanceOf[stor18[s].field_0] < balanceOf[stor18[s].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor18[s].field_0] += 0 / stor31
                        emit Transfer((0 / stor31), 0, stor18[s].field_0);
                        stor3[stor18[s].field_0].field_256 += sub_e128cca9[stor18[s].field_0].field_256
                        stor3[stor18[s].field_0].field_512 += sub_e128cca9[stor18[s].field_0].field_512
                        stor13 += sub_e128cca9[stor18[s].field_0].field_256
                        stor14 += sub_e128cca9[stor18[s].field_0].field_512
                        mem[32] = 3
                        stor3[stor18[s].field_0].field_0 = 1
                        sub_93c63140--
                        mem[mem[64]] = sub_e128cca9[stor18[s].field_0].field_256
                        mem[mem[64] + 32] = 0 / stor31
                        mem[mem[64] + 64] = block.timestamp
                        emit 0xdcbfd106: sub_e128cca9[stor18[s].field_0].field_256, 0 / stor31, block.timestamp, stor18[s].field_0
                    else:
                        if _totalSupply * 0 / stor19 / 0 / stor19 != _totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _524 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_524] = 26
                        mem[_524 + 32] = 'SafeMath: division by zero'
                        if not stor31:
                            _546 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _546 + 68] = mem[_524 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_546 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _546 + -mem[64] + 100
                        stor31 += 0 / stor19
                        _583 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_583] = 30
                        mem[_583 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_256 > stor19:
                            _606 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _606 + 68] = mem[_583 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_606 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _606 + -mem[64] + 100
                        stor19 -= sub_e128cca9[stor18[s].field_0].field_256
                        mem[0] = stor18[s].field_0
                        mem[32] = 21
                        _664 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_664] = 30
                        mem[_664 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_512 > stor20:
                            _691 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _691 + 68] = mem[_664 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_691 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _691 + -mem[64] + 100
                        stor20 -= sub_e128cca9[stor18[s].field_0].field_512
                        if not stor18[s].field_0:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (_totalSupply * 0 / stor19 / stor31) + _totalSupply < _totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        _totalSupply += _totalSupply * 0 / stor19 / stor31
                        mem[0] = stor18[s].field_0
                        if (_totalSupply * 0 / stor19 / stor31) + balanceOf[stor18[s].field_0] < balanceOf[stor18[s].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor18[s].field_0] += _totalSupply * 0 / stor19 / stor31
                        emit Transfer((_totalSupply * 0 / stor19 / stor31), 0, stor18[s].field_0);
                        stor3[stor18[s].field_0].field_256 += sub_e128cca9[stor18[s].field_0].field_256
                        stor3[stor18[s].field_0].field_512 += sub_e128cca9[stor18[s].field_0].field_512
                        stor13 += sub_e128cca9[stor18[s].field_0].field_256
                        stor14 += sub_e128cca9[stor18[s].field_0].field_512
                        mem[32] = 3
                        stor3[stor18[s].field_0].field_0 = 1
                        sub_93c63140--
                        mem[mem[64]] = sub_e128cca9[stor18[s].field_0].field_256
                        mem[mem[64] + 32] = _totalSupply * 0 / stor19 / stor31
                        mem[mem[64] + 64] = block.timestamp
                        emit 0xdcbfd106: sub_e128cca9[stor18[s].field_0].field_256, _totalSupply * 0 / stor19 / stor31, block.timestamp, stor18[s].field_0
            else:
                if (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / sub_e128cca9[stor18[s].field_0].field_256 != sub_a14ed18a - stor31:
                    revert with 0, 'SafeMath: multiplication overflow'
                _481 = mem[64]
                mem[64] = mem[64] + 64
                mem[_481] = 26
                mem[_481 + 32] = 'SafeMath: division by zero'
                if not stor19:
                    _487 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _487 + 68] = mem[_481 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_487 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _487 + -mem[64] + 100
                if _totalSupply <= 0:
                    stor31 += (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19
                    _500 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_500] = 30
                    mem[_500 + 32] = 'SafeMath: subtraction overflow'
                    if sub_e128cca9[stor18[s].field_0].field_256 > stor19:
                        _515 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _515 + 68] = mem[_500 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_515 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _515 + -mem[64] + 100
                    stor19 -= sub_e128cca9[stor18[s].field_0].field_256
                    mem[0] = stor18[s].field_0
                    mem[32] = 21
                    _545 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_545] = 30
                    mem[_545 + 32] = 'SafeMath: subtraction overflow'
                    if sub_e128cca9[stor18[s].field_0].field_512 > stor20:
                        _560 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _560 + 68] = mem[_545 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_560 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _560 + -mem[64] + 100
                    stor20 -= sub_e128cca9[stor18[s].field_0].field_512
                    if not stor18[s].field_0:
                        revert with 0, 'BEP20: mint to the zero address'
                    if ((sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19) + _totalSupply < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalSupply += (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19
                    mem[0] = stor18[s].field_0
                    if ((sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19) + balanceOf[stor18[s].field_0] < balanceOf[stor18[s].field_0]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor18[s].field_0] += (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19
                    emit Transfer(((sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19), 0, stor18[s].field_0);
                    stor3[stor18[s].field_0].field_256 += sub_e128cca9[stor18[s].field_0].field_256
                    stor3[stor18[s].field_0].field_512 += sub_e128cca9[stor18[s].field_0].field_512
                    stor13 += sub_e128cca9[stor18[s].field_0].field_256
                    stor14 += sub_e128cca9[stor18[s].field_0].field_512
                    mem[32] = 3
                    stor3[stor18[s].field_0].field_0 = 1
                    sub_93c63140--
                    mem[mem[64]] = sub_e128cca9[stor18[s].field_0].field_256
                    mem[mem[64] + 32] = (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19
                    mem[mem[64] + 64] = block.timestamp
                    emit 0xdcbfd106: sub_e128cca9[stor18[s].field_0].field_256, (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19, block.timestamp, stor18[s].field_0
                else:
                    if not (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19:
                        _523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_523] = 26
                        mem[_523 + 32] = 'SafeMath: division by zero'
                        if not stor31:
                            _544 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _544 + 68] = mem[_523 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_544 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _544 + -mem[64] + 100
                        stor31 += (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19
                        _579 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_579] = 30
                        mem[_579 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_256 > stor19:
                            _603 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _603 + 68] = mem[_579 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_603 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _603 + -mem[64] + 100
                        stor19 -= sub_e128cca9[stor18[s].field_0].field_256
                        mem[0] = stor18[s].field_0
                        mem[32] = 21
                        _661 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_661] = 30
                        mem[_661 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_512 > stor20:
                            _689 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _689 + 68] = mem[_661 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_689 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _689 + -mem[64] + 100
                        stor20 -= sub_e128cca9[stor18[s].field_0].field_512
                        if not stor18[s].field_0:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (0 / stor31) + _totalSupply < _totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        _totalSupply += 0 / stor31
                        mem[0] = stor18[s].field_0
                        if (0 / stor31) + balanceOf[stor18[s].field_0] < balanceOf[stor18[s].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor18[s].field_0] += 0 / stor31
                        emit Transfer((0 / stor31), 0, stor18[s].field_0);
                        stor3[stor18[s].field_0].field_256 += sub_e128cca9[stor18[s].field_0].field_256
                        stor3[stor18[s].field_0].field_512 += sub_e128cca9[stor18[s].field_0].field_512
                        stor13 += sub_e128cca9[stor18[s].field_0].field_256
                        stor14 += sub_e128cca9[stor18[s].field_0].field_512
                        mem[32] = 3
                        stor3[stor18[s].field_0].field_0 = 1
                        sub_93c63140--
                        mem[mem[64]] = sub_e128cca9[stor18[s].field_0].field_256
                        mem[mem[64] + 32] = 0 / stor31
                        mem[mem[64] + 64] = block.timestamp
                        emit 0xdcbfd106: sub_e128cca9[stor18[s].field_0].field_256, 0 / stor31, block.timestamp, stor18[s].field_0
                    else:
                        if _totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 != _totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _534 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_534] = 26
                        mem[_534 + 32] = 'SafeMath: division by zero'
                        if not stor31:
                            _552 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _552 + 68] = mem[_534 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_552 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _552 + -mem[64] + 100
                        stor31 += (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19
                        _592 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_592] = 30
                        mem[_592 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_256 > stor19:
                            _616 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _616 + 68] = mem[_592 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_616 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _616 + -mem[64] + 100
                        stor19 -= sub_e128cca9[stor18[s].field_0].field_256
                        mem[0] = stor18[s].field_0
                        mem[32] = 21
                        _675 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_675] = 30
                        mem[_675 + 32] = 'SafeMath: subtraction overflow'
                        if sub_e128cca9[stor18[s].field_0].field_512 > stor20:
                            _700 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _700 + 68] = mem[_675 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_700 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _700 + -mem[64] + 100
                        stor20 -= sub_e128cca9[stor18[s].field_0].field_512
                        if not stor18[s].field_0:
                            revert with 0, 'BEP20: mint to the zero address'
                        if (_totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31) + _totalSupply < _totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        _totalSupply += _totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31
                        mem[0] = stor18[s].field_0
                        if (_totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31) + balanceOf[stor18[s].field_0] < balanceOf[stor18[s].field_0]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor18[s].field_0] += _totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31
                        emit Transfer((_totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31), 0, stor18[s].field_0);
                        stor3[stor18[s].field_0].field_256 += sub_e128cca9[stor18[s].field_0].field_256
                        stor3[stor18[s].field_0].field_512 += sub_e128cca9[stor18[s].field_0].field_512
                        stor13 += sub_e128cca9[stor18[s].field_0].field_256
                        stor14 += sub_e128cca9[stor18[s].field_0].field_512
                        mem[32] = 3
                        stor3[stor18[s].field_0].field_0 = 1
                        sub_93c63140--
                        mem[mem[64]] = sub_e128cca9[stor18[s].field_0].field_256
                        mem[mem[64] + 32] = _totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31
                        mem[mem[64] + 64] = block.timestamp
                        emit 0xdcbfd106: sub_e128cca9[stor18[s].field_0].field_256, _totalSupply * (sub_a14ed18a * sub_e128cca9[stor18[s].field_0].field_256) - (stor31 * sub_e128cca9[stor18[s].field_0].field_256) / stor19 / stor31, block.timestamp, stor18[s].field_0
            mem[0] = stor18[s].field_0
            mem[32] = 21
            sub_e128cca9[stor18[s].field_0].field_0 = 0
            sub_e128cca9[stor18[s].field_0].field_256 = 0
            sub_e128cca9[stor18[s].field_0].field_512 = 0
            s = s - 1
            idx = idx - 1
            continue 
    if not sub_93c63140:
        stor18.length = 0
        idx = 0
        while stor18.length > idx:
            stor18[idx].field_0 = 0
            idx = idx + 1
            continue 
        stor19 = 0
        stor20 = 0
        uint16(stor34.field_40) = 0
}



}
