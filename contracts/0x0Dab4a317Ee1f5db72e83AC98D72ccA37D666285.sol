contract main {




// =====================  Runtime code  =====================


#
#  - sub_0eef1c14(?)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
uint256 totalShares;
uint256 totalReleased;
mapping of uint256 shares;
mapping of uint256 released;
array of address payee;
mapping of uint256 totalReleased;
mapping of uint256 released;
address nodeRewardManagerAddress;
address joeV2RouterAddress;
address stor15;
address joeV2PairAddress;
address futurUsePoolAddress;
address distributionPoolAddress;
address tokenAddress;
address deadWalletAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 futurFee;
uint256 totalFees;
uint256 cashoutFee;
uint256 stor26;
uint8 stor27;
uint8 stor27; offset 8
uint256 stor27; offset 8
uint256 swapTokensAmount;
mapping of uint8 stor29;
mapping of uint8 stor30;

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor29[arg1])
}

function rewardsFee() {
    return rewardsFee
}

function totalShares() {
    return totalShares
}

function released(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return released[address(arg1)][address(arg2)]
}

function joeV2Router() {
    return joeV2RouterAddress
}

function liquidityPoolFee() {
    return liquidityPoolFee
}

function swapTokensAmount() {
    return swapTokensAmount
}

function cashoutFee() {
    return cashoutFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function nodeRewardManager() {
    return nodeRewardManagerAddress
}

function deadWallet() {
    return deadWalletAddress
}

function payee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= payee.length:
        revert with 0, 50
    return payee[arg1]
}

function owner() {
    return owner
}

function released(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return released[address(arg1)]
}

function joeV2Pair() {
    return joeV2PairAddress
}

function tokenAddress() {
    return tokenAddress
}

function futurUsePool() {
    return futurUsePoolAddress
}

function futurFee() {
    return futurFee
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor30[arg1])
}

function distributionPool() {
    return distributionPoolAddress
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[address(arg1)]
}

function totalReleased(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return totalReleased[address(arg1)]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function totalReleased() {
    return totalReleased
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateRwSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26 = arg1
}

function updateCashoutFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cashoutFee = arg1
}

function updateSwapTokensAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapTokensAmount = arg1
}

function updateFuturWall(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    futurUsePoolAddress = arg1
}

function updateRewardsWall(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    distributionPoolAddress = arg1
}

function setNodeManagement(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodeRewardManagerAddress = arg1
}

function changeSwapLiquify(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor27.field_8) = Mask(248, 0, arg1)
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29[address(arg1)] = uint8(arg2)
}

function getTotalStakedReward() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x8a327eaa with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalCreatedNodes() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0xb8527aef with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalRewards() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x619a635e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function checkTokenBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(stor15)
    staticcall stor15.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x4491a7e4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_dd38dc99(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor15)
    staticcall stor15.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_54b4fdfd(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(stor15)
    call stor15.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_e2d88aef(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require ext_code.size(stor15)
    call stor15.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function boostReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 <= eth.balance(this.address):
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
    else:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6ef30041(?) {
    require calldata.size - 4 >= 32
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(stor15)
    call stor15.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_f6454f94(?) {
    require calldata.size - 4 >= 32
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(stor15)
    call stor15.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_3317237b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(stor15)
    call stor15.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_db9e9b9a(?) {
    require calldata.size - 4 >= 32
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(stor15)
    call stor15.0x23b872dd with:
         gas gas_remaining wei
        args distributionPoolAddress, msg.sender, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function updateLiquiditFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityPoolFee = arg1
    if rewardsFee > !arg1:
        revert with 0, 17
    if rewardsFee + arg1 < rewardsFee:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsFee + arg1 > !futurFee:
        revert with 0, 17
    if futurFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = rewardsFee + arg1 + futurFee
}

function updateRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsFee = arg1
    if arg1 > !liquidityPoolFee:
        revert with 0, 17
    if arg1 + liquidityPoolFee < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + liquidityPoolFee > !futurFee:
        revert with 0, 17
    if futurFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = arg1 + liquidityPoolFee + futurFee
}

function updateFuturFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    futurFee = arg1
    if rewardsFee > !liquidityPoolFee:
        revert with 0, 17
    if rewardsFee + liquidityPoolFee < rewardsFee:
        revert with 0, 'SafeMath: addition overflow'
    if rewardsFee + liquidityPoolFee > !arg1:
        revert with 0, 17
    if arg1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = rewardsFee + liquidityPoolFee + arg1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if joeV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: The Joe pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor30[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor30[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor29[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor29[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_9c3088da(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if joeV2RouterAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The router already has that address'
    emit 0xf7c6b736: address(arg1), joeV2RouterAddress
    joeV2RouterAddress = address(arg1)
    require ext_code.size(joeV2RouterAddress)
    staticcall joeV2RouterAddress.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(joeV2RouterAddress)
    staticcall joeV2RouterAddress.0x73b295c2 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    if not arg2:
        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                gas gas_remaining wei
               args address(this.address), address(ext_call.return_data[0])
    else:
        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    joeV2PairAddress = ext_call.return_data[12 len 20]
}

function newName() {
    mem[96] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor15)
    staticcall stor15.name() with:
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
        revert with 0, 65
    if ceil32(ceil32(mem[mem[96] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[96] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _5
    require _4 + _5 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_5)] = mem[_4 + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        _19 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = _5
        mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
        if ceil32(_5) <= _5:
            return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
        mem[_5 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_5) + _19 + -mem[64] + 64
    mem[_5 + ceil32(return_data.size) + 128] = 0
    _20 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _5
    mem[mem[64] + 64 len ceil32(_5)] = mem[ceil32(return_data.size) + 128 len ceil32(_5)]
    if ceil32(_5) <= _5:
        return Array(len=_5, data=mem[mem[64] + 64 len ceil32(_5)])
    mem[_5 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_5) + _20 + -mem[64] + 64
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor29[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor29[address(arg2)]:
        revert with 0, 'Blacklisted address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[264 len 24] >> 64, 0
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function release(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    if eth.balance(this.address) > !totalReleased:
        revert with 0, 17
    if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
        revert with 0, 17
    if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
    if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
        revert with 0, 17
    totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
    if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
        revert with 0, 'Address: insufficient balance'
    call arg1 with:
       value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
    emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
}

function sub_53a374fe(?) {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x15f7aaab with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0xd100c45100000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0xd100c451 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _12 + (32 * _13) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _13] = mem[ceil32(return_data.size) + _12 + 128 len 32 * _13]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len 32 * _13] = mem[(2 * ceil32(return_data.size)) + 128 len 32 * _13]
    return Array(len=_13, data=mem[mem[64] + 64 len 32 * _13])
}

function sub_c164fa57(?) {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x15f7aaab with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0x519f6a4d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x519f6a4d with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _12 + (32 * _13) + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len 32 * _13] = mem[ceil32(return_data.size) + _12 + 128 len 32 * _13]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    mem[mem[64] + 64 len 32 * _13] = mem[(2 * ceil32(return_data.size)) + 128 len 32 * _13]
    return Array(len=_13, data=mem[mem[64] + 64 len 32 * _13])
}

function sub_cd3e04ab(?) {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x15f7aaab with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0x9f4d248e00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x9f4d248e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _12 + (32 * _13) + 32 <= return_data.size
    s = ceil32(return_data.size) + _12 + 128
    t = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _13:
        require mem[s] == mem[s + 31 len 1]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    _21 = mem[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _13
    idx = 0
    s = mem[64] + 64
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _13:
        mem[s] = mem[t + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _21 + (32 * _13) + -mem[64] + 64
}

function name() {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function sub_44d83112(?) {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x15f7aaab with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    mem[ceil32(return_data.size) + 96] = 0x89fef76900000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x89fef769 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _12 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _13 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    require _12 + (32 * _13) + 32 <= return_data.size
    idx = 0
    s = ceil32(return_data.size) + _12 + 128
    t = (2 * ceil32(return_data.size)) + 128
    while idx < _13:
        _25 = mem[s]
        require mem[s] <= test266151307()
        require ceil32(return_data.size) + _12 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
        _28 = mem[ceil32(return_data.size) + _12 + mem[s] + 128]
        if mem[ceil32(return_data.size) + _12 + mem[s] + 128] > test266151307():
            revert with 0, 65
        _32 = mem[64]
        if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _12 + mem[s] + 128])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _12 + mem[s] + 128])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _12 + mem[s] + 128])) + 1
        mem[_32] = _28
        require _12 + _25 + _28 + 64 <= return_data.size
        u = 0
        while u < _28:
            mem[u + _32 + 32] = mem[u + ceil32(return_data.size) + _12 + _25 + 160]
            u = u + 32
            continue 
        if ceil32(_28) > _28:
            mem[_28 + _32 + 32] = 0
        mem[t] = _32
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    _26 = mem[64]
    mem[mem[64]] = 32
    _27 = mem[(2 * ceil32(return_data.size)) + 96]
    mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 96]
    idx = 0
    s = (2 * ceil32(return_data.size)) + 128
    t = mem[64] + 64
    u = mem[64] + (32 * _27) + 64
    while idx < _27:
        mem[t] = u + -_26 - 64
        _35 = mem[s]
        _38 = mem[mem[s]]
        mem[u] = mem[mem[s]]
        v = 0
        while v < _38:
            mem[v + u + 32] = mem[v + _35 + 32]
            v = v + 32
            continue 
        if ceil32(_38) > _38:
            mem[_38 + u + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + 32
        u = ceil32(_38) + u + 32
        continue 
    return memory
      from mem[64]
       len u - mem[64]
}

function release(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not shares[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PaymentSplitter: account has no shares'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !totalReleased[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
        revert with 0, 17
    if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
        revert with 0, 'PaymentSplitter: account is not due payment'
    if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
    if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
        revert with 0, 17
    totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], arg1);
}

function cashoutReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT:  creation from the zero address'
    if stor29[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'CSHT: futur and rewardsPool cannot cashout rewards'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0xa6e15cc4 with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'CSHT: You don't have enough reward to cash out'
    if not uint8(stor27.field_8):
        require ext_code.size(stor15)
        call stor15.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
    else:
        if cashoutFee <= 0:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            require ext_code.size(stor15)
            call stor15.0x23b872dd with:
                 gas gas_remaining wei
                args distributionPoolAddress, msg.sender, ext_call.return_data[0]
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18:
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                require ext_code.size(stor15)
                call stor15.0x23b872dd with:
                     gas gas_remaining wei
                    args distributionPoolAddress, msg.sender, ext_call.return_data[0]
            else:
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 160] = 2
                    mem[(2 * ceil32(return_data.size)) + 192] = tokenAddress
                    require ext_code.size(joeV2RouterAddress)
                    staticcall joeV2RouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 260] = joeV2RouterAddress
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    require ext_code.size(stor15)
                    call stor15.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 260 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 260] = 0
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    mem[(4 * ceil32(return_data.size)) + 324] = 160
                    mem[(4 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 452
                    t = (2 * ceil32(return_data.size)) + 192
                    while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 356] = this.address
                    mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                    require ext_code.size(joeV2RouterAddress)
                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 420 len (32 * mem[(2 * ceil32(return_data.size)) + 160]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call futurUsePoolAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] < 0:
                        revert with 0, 17
                    require ext_code.size(stor15)
                    call stor15.0x23b872dd with:
                         gas gas_remaining wei
                        args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * cashoutFee / ext_call.return_data[0] != cashoutFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 160] = 2
                    mem[(2 * ceil32(return_data.size)) + 192] = tokenAddress
                    require ext_code.size(joeV2RouterAddress)
                    staticcall joeV2RouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 260] = joeV2RouterAddress
                    mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * cashoutFee / 100
                    require ext_code.size(stor15)
                    call stor15.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 260 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * cashoutFee / 100
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    mem[(4 * ceil32(return_data.size)) + 324] = 160
                    mem[(4 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 452
                    t = (2 * ceil32(return_data.size)) + 192
                    while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 356] = this.address
                    mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                    require ext_code.size(joeV2RouterAddress)
                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 420 len (32 * mem[(2 * ceil32(return_data.size)) + 160]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call futurUsePoolAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                        revert with 0, 17
                    require ext_code.size(stor15)
                    call stor15.0x23b872dd with:
                         gas gas_remaining wei
                        args distributionPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0x6edb7002 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function cashoutAll() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT:  creation from the zero address'
    if stor29[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if futurUsePoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x619a635e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
    if not uint8(stor27.field_8):
        require ext_code.size(stor15)
        call stor15.0x23b872dd with:
             gas gas_remaining wei
            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
    else:
        if cashoutFee <= 0:
            if ext_call.return_data[0] < 0:
                revert with 0, 17
            require ext_code.size(stor15)
            call stor15.0x23b872dd with:
                 gas gas_remaining wei
                args distributionPoolAddress, msg.sender, ext_call.return_data[0]
        else:
            mem[ceil32(return_data.size) + 100] = this.address
            require ext_code.size(stor15)
            staticcall stor15.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 10^18:
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                require ext_code.size(stor15)
                call stor15.0x23b872dd with:
                     gas gas_remaining wei
                    args distributionPoolAddress, msg.sender, ext_call.return_data[0]
            else:
                if not ext_call.return_data[0]:
                    mem[(2 * ceil32(return_data.size)) + 160] = 2
                    mem[(2 * ceil32(return_data.size)) + 192] = tokenAddress
                    require ext_code.size(joeV2RouterAddress)
                    staticcall joeV2RouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 260] = joeV2RouterAddress
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    require ext_code.size(stor15)
                    call stor15.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 260 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 260] = 0
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    mem[(4 * ceil32(return_data.size)) + 324] = 160
                    mem[(4 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 452
                    t = (2 * ceil32(return_data.size)) + 192
                    while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 356] = this.address
                    mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                    require ext_code.size(joeV2RouterAddress)
                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args 0, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 420 len (32 * mem[(2 * ceil32(return_data.size)) + 160]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call futurUsePoolAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] < 0:
                        revert with 0, 17
                    require ext_code.size(stor15)
                    call stor15.0x23b872dd with:
                         gas gas_remaining wei
                        args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                else:
                    if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if ext_call.return_data[0] * cashoutFee / ext_call.return_data[0] != cashoutFee:
                        revert with 0, 'SafeMath: multiplication overflow'
                    mem[(2 * ceil32(return_data.size)) + 160] = 2
                    mem[(2 * ceil32(return_data.size)) + 192] = tokenAddress
                    require ext_code.size(joeV2RouterAddress)
                    staticcall joeV2RouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[12 len 20]
                    mem[(4 * ceil32(return_data.size)) + 260] = joeV2RouterAddress
                    mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * cashoutFee / 100
                    require ext_code.size(stor15)
                    call stor15.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args mem[(4 * ceil32(return_data.size)) + 260 len (5 * ceil32(return_data.size)) + 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    mem[(4 * ceil32(return_data.size)) + 256] = 0x762b156200000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 260] = ext_call.return_data[0] * cashoutFee / 100
                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                    mem[(4 * ceil32(return_data.size)) + 324] = 160
                    mem[(4 * ceil32(return_data.size)) + 420] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 452
                    t = (2 * ceil32(return_data.size)) + 192
                    while idx < mem[(2 * ceil32(return_data.size)) + 160]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 356] = this.address
                    mem[(4 * ceil32(return_data.size)) + 388] = block.timestamp
                    require ext_code.size(joeV2RouterAddress)
                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0] * cashoutFee / 100, 0, 160, address(this.address), block.timestamp, mem[(4 * ceil32(return_data.size)) + 420 len (32 * mem[(2 * ceil32(return_data.size)) + 160]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    call futurUsePoolAddress with:
                         gas 2300 wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                        revert with 0, 17
                    require ext_code.size(stor15)
                    call stor15.0x23b872dd with:
                         gas gas_remaining wei
                        args distributionPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0x5c298b1c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
        emit PaymentReceived(msg.sender, msg.value);
    else:
        if unknown_0x715018a6(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xab574761(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x9852595c(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x8b83209b(?????) > uint32(call.func_hash) >> 224:
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            emit OwnershipTransferred(owner, 0);
                            owner = 0
                        else:
                            if unknown_0x7628b3d7(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return nodeRewardManagerAddress
                            if unknown_0x85141a77(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return deadWalletAddress
                            require unknown_0x88c41d7c(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            futurFee = arg1
                            if rewardsFee > !liquidityPoolFee:
                                revert with 0, 17
                            if rewardsFee + liquidityPoolFee < rewardsFee:
                                revert with 0, 'SafeMath: addition overflow'
                            if rewardsFee + liquidityPoolFee > !arg1:
                                revert with 0, 17
                            if arg1 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees = rewardsFee + liquidityPoolFee + arg1
                    if unknown_0x8b83209b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if arg1 >= payee.length:
                            revert with 0, 50
                        return payee[arg1]
                    if unknown_0x8bc9c7b0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor26 = arg1
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if unknown_0x9349c47d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        distributionPoolAddress = address(arg1)
                    require unknown_0x95d89b41(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        if bool(stor4.length):
                            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, stor4.length):
                                if 31 < uint255(stor4.length) * 0.5:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while (uint255(stor4.length) * 0.5) + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                mem[160] = 256 * stor4.length.field_8
                        else:
                            if bool(stor4.length) == stor4.length.field_1 < 32:
                                revert with 0, 34
                            if stor4.length.field_1:
                                if 31 < stor4.length.field_1:
                                    mem[160] = uint256(stor4.field_0)
                                    idx = 160
                                    s = 0
                                    while stor4.length.field_1 + 128 > idx:
                                        mem[idx + 32] = stor4[s].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)])
                                mem[160] = 256 * stor4.length.field_8
                        mem[ceil32(uint255(stor4.length) * 0.5) + 224 len ceil32(uint255(stor4.length) * 0.5)] = mem[160 len ceil32(uint255(stor4.length) * 0.5)]
                        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
                            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 224] = 0
                        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[160 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
                    if bool(stor4.length) == stor4.length.field_1 < 32:
                        revert with 0, 34
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor4.length):
                            if 31 < uint255(stor4.length) * 0.5:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor4.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                            mem[160] = 256 * stor4.length.field_8
                    else:
                        if bool(stor4.length) == stor4.length.field_1 < 32:
                            revert with 0, 34
                        if stor4.length.field_1:
                            if 31 < stor4.length.field_1:
                                mem[160] = uint256(stor4.field_0)
                                idx = 160
                                s = 0
                                while stor4.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor4[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)])
                            mem[160] = 256 * stor4.length.field_8
                    mem[ceil32(stor4.length.field_1) + 224 len ceil32(stor4.length.field_1)] = mem[160 len ceil32(stor4.length.field_1)]
                    if ceil32(stor4.length.field_1) > stor4.length.field_1:
                        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 224] = 0
                    return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
                if unknown_0x9d76ea58(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x9d76ea58(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return tokenAddress
                    if unknown_0xa0a8fe65(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.0xb8527aef with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xa457c2d7(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if arg2 > allowance[msg.sender][address(arg1)]:
                            revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[197 len 27] >> 40, 0
                        if allowance[msg.sender][address(arg1)] < arg2:
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                        emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, address(arg1));
                    else:
                        if unknown_0xa538ddf2(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return futurUsePoolAddress
                        require unknown_0xa9059cbb(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if stor29[address(msg.sender)]:
                            revert with 0, 'Blacklisted address'
                        if stor29[address(arg1)]:
                            revert with 0, 'Blacklisted address'
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                        if balanceOf[address(msg.sender)] < arg2:
                            revert with 0, 17
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, msg.sender, address(arg1));
                    return 1
                if unknown_0x9852595c(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return released[address(arg1)]
                if unknown_0x9a7a23d6(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if joeV2PairAddress == address(arg1):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    'TKN: The Joe pair cannot be removed from automatedMarketMakerPairs'
                    if bool(arg2) == bool(stor30[address(arg1)]):
                        revert with 0, 'TKN: Automated market maker pair is already set to that value'
                    stor30[address(arg1)] = uint8(bool(arg2))
                    emit SetAutomatedMarketMakerPair(address(arg1), bool(arg2));
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x9c3088da(?????):
                        require unknown_0x9c733750(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return joeV2PairAddress
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if joeV2RouterAddress == address(arg1):
                        revert with 0, 'TKN: The router already has that address'
                    emit 0xf7c6b736: address(arg1), joeV2RouterAddress
                    joeV2RouterAddress = address(arg1)
                    require ext_code.size(joeV2RouterAddress)
                    staticcall joeV2RouterAddress.factory() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(joeV2RouterAddress)
                    staticcall joeV2RouterAddress.0x73b295c2 with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require ext_code.size(address(ext_call.return_data[0]))
                    if not arg2:
                        staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
                                gas gas_remaining wei
                               args address(this.address), address(ext_call.return_data[0])
                    else:
                        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
                             gas gas_remaining wei
                            args address(this.address), address(ext_call.return_data[0])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    joeV2PairAddress = ext_call.return_data[12 len 20]
            if unknown_0xdd38dc99(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xe627f2db(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xdd38dc99(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        require ext_code.size(stor15)
                        staticcall stor15.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(arg1), address(arg2)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        return allowance[address(arg1)][address(arg2)]
                    if uint32(call.func_hash) >> 224 != unknown_0xe2d88aef(?????):
                        require unknown_0xe33b7de3(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return totalReleased
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require ext_code.size(stor15)
                    call stor15.approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    return bool(ext_call.return_data[0])
                if unknown_0xe627f2db(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require ext_code.size(nodeRewardManagerAddress)
                    staticcall nodeRewardManagerAddress.0x619a635e with:
                            gas gas_remaining wei
                           args msg.sender
                else:
                    if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        if not address(arg1):
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, address(arg1));
                        owner = address(arg1)
                    if unknown_0xf6454f94(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        require ext_code.size(stor15)
                        call stor15.0x23b872dd with:
                             gas gas_remaining wei
                            args address(this.address), msg.sender, 10^18 * arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if uint32(call.func_hash) >> 224 != unknown_0xf74c9934(?????):
                        require unknown_0xfb0a7494(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        nodeRewardManagerAddress = address(arg1)
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require ext_code.size(nodeRewardManagerAddress)
                    staticcall nodeRewardManagerAddress.0x4491a7e4 with:
                            gas gas_remaining wei
                           args address(arg1)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return ext_call.return_data[0]
            if unknown_0xcd3e04ab(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xcd3e04ab(?????):
                    if unknown_0xce7c2ac2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return shares[address(arg1)]
                    if unknown_0xd79779b2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return totalReleased[address(arg1)]
                    if unknown_0xd8929342(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == bool(arg2)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        stor29[address(arg1)] = uint8(bool(arg2))
                    else:
                        require unknown_0xdb9e9b9a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        require ext_code.size(stor15)
                        call stor15.0x23b872dd with:
                             gas gas_remaining wei
                            args distributionPoolAddress, msg.sender, 10^18 * arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                require not msg.value
                if not msg.sender:
                    revert with 0, 'SENDER CAN'T BE ZERO'
                mem[132] = msg.sender
                require ext_code.size(nodeRewardManagerAddress)
                staticcall nodeRewardManagerAddress.0x15f7aaab with:
                        gas gas_remaining wei
                       args msg.sender
                mem[128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'NO NODE OWNER'
                mem[ceil32(return_data.size) + 128] = 0x9f4d248e00000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 132] = msg.sender
                require ext_code.size(nodeRewardManagerAddress)
                staticcall nodeRewardManagerAddress.0x9f4d248e with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 128
                require return_data.size >= 32
                _310 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                _374 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129 > test266151307():
                    revert with 0, 65
                mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129
                mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                require _310 + (32 * _374) + 32 <= return_data.size
                s = ceil32(return_data.size) + _310 + 160
                t = (2 * ceil32(return_data.size)) + 160
                idx = 0
                while idx < _374:
                    require mem[s] == mem[s + 31 len 1]
                    mem[t] = mem[s]
                    s = s + 32
                    t = t + 32
                    idx = idx + 1
                    continue 
                _1245 = mem[64]
                mem[mem[64]] = 32
                mem[mem[64] + 32] = _374
                idx = 0
                s = mem[64] + 64
                t = (2 * ceil32(return_data.size)) + 160
                while idx < _374:
                    mem[s] = mem[t + 31 len 1]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from mem[64]
                   len _1245 + (32 * _374) + -mem[64] + 64
            if unknown_0xab574761(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return futurFee
            if unknown_0xb62496f5(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor30[arg1])
            if uint32(call.func_hash) >> 224 != unknown_0xc164fa57(?????):
                require unknown_0xc5ca7d6d(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return distributionPoolAddress
            require not msg.value
            if not msg.sender:
                revert with 0, 'SENDER CAN'T BE ZERO'
            mem[132] = msg.sender
            require ext_code.size(nodeRewardManagerAddress)
            staticcall nodeRewardManagerAddress.0x15f7aaab with:
                    gas gas_remaining wei
                   args msg.sender
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'NO NODE OWNER'
            mem[ceil32(return_data.size) + 128] = 0x519f6a4d00000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 132] = msg.sender
            require ext_code.size(nodeRewardManagerAddress)
            staticcall nodeRewardManagerAddress.0x519f6a4d with:
                    gas gas_remaining wei
                   args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (2 * ceil32(return_data.size)) + 128
            require return_data.size >= 32
            _400 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
            require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
            require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
            _445 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129 > test266151307():
                revert with 0, 65
            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129
            mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
            require _400 + (32 * _445) + 32 <= return_data.size
            mem[(2 * ceil32(return_data.size)) + 160 len 32 * _445] = mem[ceil32(return_data.size) + _400 + 160 len 32 * _445]
            mem[mem[64]] = 32
            mem[mem[64] + 32] = _445
            mem[mem[64] + 64 len 32 * _445] = mem[(2 * ceil32(return_data.size)) + 160 len 32 * _445]
            return Array(len=_445, data=mem[mem[64] + 64 len 32 * _445])
        if unknown_0x42bc9fca(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0x583bd7a6(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x52e3ce7e(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x42bc9fca(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        liquidityPoolFee = arg1
                        if rewardsFee > !arg1:
                            revert with 0, 17
                        if rewardsFee + arg1 < rewardsFee:
                            revert with 0, 'SafeMath: addition overflow'
                        if rewardsFee + arg1 > !futurFee:
                            revert with 0, 17
                        if futurFee < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees = rewardsFee + arg1 + futurFee
                    else:
                        if unknown_0x44d83112(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if not msg.sender:
                                revert with 0, 'SENDER CAN'T BE ZERO'
                            mem[132] = msg.sender
                            require ext_code.size(nodeRewardManagerAddress)
                            staticcall nodeRewardManagerAddress.0x15f7aaab with:
                                    gas gas_remaining wei
                                   args msg.sender
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'NO NODE OWNER'
                            mem[ceil32(return_data.size) + 128] = 0x89fef76900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(return_data.size) + 132] = msg.sender
                            require ext_code.size(nodeRewardManagerAddress)
                            staticcall nodeRewardManagerAddress.0x89fef769 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            _327 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                            require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                            require ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159 < ceil32(return_data.size) + return_data.size + 128
                            _387 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                            if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129 > test266151307():
                                revert with 0, 65
                            mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129
                            mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                            require _327 + (32 * _387) + 32 <= return_data.size
                            idx = 0
                            s = ceil32(return_data.size) + _327 + 160
                            t = (2 * ceil32(return_data.size)) + 160
                            while idx < _387:
                                _1208 = mem[s]
                                require mem[s] <= test266151307()
                                require ceil32(return_data.size) + _327 + mem[s] + 191 < ceil32(return_data.size) + return_data.size + 128
                                _1247 = mem[ceil32(return_data.size) + _327 + mem[s] + 160]
                                if mem[ceil32(return_data.size) + _327 + mem[s] + 160] > test266151307():
                                    revert with 0, 65
                                _1336 = mem[64]
                                if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _327 + mem[s] + 160])) + 1 < mem[64] or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _327 + mem[s] + 160])) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + _327 + mem[s] + 160])) + 1
                                mem[_1336] = _1247
                                require _327 + _1208 + _1247 + 64 <= return_data.size
                                u = 0
                                while u < _1247:
                                    mem[u + _1336 + 32] = mem[u + ceil32(return_data.size) + _327 + _1208 + 192]
                                    u = u + 32
                                    continue 
                                if ceil32(_1247) > _1247:
                                    mem[_1247 + _1336 + 32] = 0
                                mem[t] = _1336
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            _1238 = mem[64]
                            mem[mem[64]] = 32
                            _1246 = mem[(2 * ceil32(return_data.size)) + 128]
                            mem[mem[64] + 32] = mem[(2 * ceil32(return_data.size)) + 128]
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 160
                            t = mem[64] + 64
                            u = mem[64] + (32 * _1246) + 64
                            while idx < _1246:
                                mem[t] = u + -_1238 - 64
                                _2289 = mem[s]
                                _2315 = mem[mem[s]]
                                mem[u] = mem[mem[s]]
                                v = 0
                                while v < _2315:
                                    mem[v + u + 32] = mem[v + _2289 + 32]
                                    v = v + 32
                                    continue 
                                if ceil32(_2315) > _2315:
                                    mem[_2315 + u + 32] = 0
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                u = ceil32(_2315) + u + 32
                                continue 
                            return memory
                              from mem[64]
                               len u - mem[64]
                        if uint32(call.func_hash) >> 224 != unknown_0x48b75044(?????):
                            require unknown_0x48e5642b(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require ext_code.size(nodeRewardManagerAddress)
                            staticcall nodeRewardManagerAddress.0x8a327eaa with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            return ext_call.return_data[0]
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        if not shares[address(arg2)]:
                            revert with 0, 'PaymentSplitter: account has no shares'
                        mem[132] = this.address
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] > !totalReleased[address(arg1)]:
                            revert with 0, 17
                        if ext_call.return_data[0] + totalReleased[address(arg1)] and shares[address(arg2)] > -1 / ext_call.return_data[0] + totalReleased[address(arg1)]:
                            revert with 0, 17
                        if not totalShares:
                            revert with 0, 18
                        if (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares < released[address(arg1)][address(arg2)]:
                            revert with 0, 17
                        if not ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]:
                            revert with 0, 'PaymentSplitter: account is not due payment'
                        if released[address(arg1)][address(arg2)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
                            revert with 0, 17
                        released[address(arg1)][address(arg2)] = (ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares
                        if totalReleased[address(arg1)] > !(((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]):
                            revert with 0, 17
                        totalReleased[address(arg1)] = totalReleased[address(arg1)] + ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
                        mem[ceil32(return_data.size) + 164] = address(arg2)
                        mem[ceil32(return_data.size) + 196] = ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)]
                        mem[ceil32(return_data.size) + 128] = 68
                        mem[ceil32(return_data.size) + 164 len 28] = address(arg2) << 64
                        mem[ceil32(return_data.size) + 160 len 4] = unknown_0xa9059cbb(?????)
                        mem[ceil32(return_data.size) + 228] = 32
                        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(arg1)):
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 292 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0
                        mem[ceil32(return_data.size) + 360] = 0
                        call address(arg1) with:
                           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) >> 224
                             gas gas_remaining wei
                            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], 0) << 288)
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if mem[96]:
                                require mem[96] >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not ext_call.return_data[0]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                                if not mem[ceil32(return_data.size) + 324]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit ERC20PaymentReleased(address(arg2), ((ext_call.return_data[0] * shares[address(arg2)]) + (totalReleased[address(arg1)] * shares[address(arg2)]) / totalShares) - released[address(arg1)][address(arg2)], address(arg1));
                else:
                    if unknown_0x52e3ce7e(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return joeV2RouterAddress
                    if unknown_0x53a374fe(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if not msg.sender:
                            revert with 0, 'SENDER CAN'T BE ZERO'
                        mem[132] = msg.sender
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.0x15f7aaab with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'NO NODE OWNER'
                        mem[ceil32(return_data.size) + 128] = 0xd100c45100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 132] = msg.sender
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.0xd100c451 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 128
                        require return_data.size >= 32
                        _363 = mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32
                        require mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
                        require ceil32(return_data.size) + return_data.size + 128 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 159
                        _409 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129 > test266151307():
                            revert with 0, 65
                        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]) + 129
                        mem[(2 * ceil32(return_data.size)) + 128] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 128 len 4], Mask(224, 32, msg.sender) >> 32 + 128]
                        require _363 + (32 * _409) + 32 <= return_data.size
                        mem[(2 * ceil32(return_data.size)) + 160 len 32 * _409] = mem[ceil32(return_data.size) + _363 + 160 len 32 * _409]
                        mem[mem[64]] = 32
                        mem[mem[64] + 32] = _409
                        mem[mem[64] + 64 len 32 * _409] = mem[(2 * ceil32(return_data.size)) + 160 len 32 * _409]
                        return Array(len=_409, data=mem[mem[64] + 64 len 32 * _409])
                    if uint32(call.func_hash) >> 224 != unknown_0x54557973(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x54b4fdfd(?????):
                            require unknown_0x54f12f1f(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return liquidityPoolFee
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require ext_code.size(stor15)
                        call stor15.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return bool(ext_call.return_data[0])
                    require not msg.value
                    if not msg.sender:
                        revert with 0, 'MANIA CSHT:  creation from the zero address'
                    mem[0] = msg.sender
                    mem[32] = 29
                    if stor29[address(msg.sender)]:
                        revert with 0, 'MANIA CSHT: Blacklisted address'
                    if futurUsePoolAddress == msg.sender:
                        revert with 0, 'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
                    if distributionPoolAddress == msg.sender:
                        revert with 0, 'MANIA CSHT: futur and rewardsPool cannot cashout rewards'
                    mem[132] = msg.sender
                    require ext_code.size(nodeRewardManagerAddress)
                    staticcall nodeRewardManagerAddress.0x619a635e with:
                            gas gas_remaining wei
                           args msg.sender
                    mem[128] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
                    if not uint8(stor27.field_8):
                        require ext_code.size(stor15)
                        call stor15.0x23b872dd with:
                             gas gas_remaining wei
                            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        if cashoutFee <= 0:
                            if ext_call.return_data[0] < 0:
                                revert with 0, 17
                            require ext_code.size(stor15)
                            call stor15.0x23b872dd with:
                                 gas gas_remaining wei
                                args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            mem[ceil32(return_data.size) + 132] = this.address
                            require ext_code.size(stor15)
                            staticcall stor15.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 10^18:
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(stor15)
                                call stor15.0x23b872dd with:
                                     gas gas_remaining wei
                                    args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                if not ext_call.return_data[0]:
                                    mem[(2 * ceil32(return_data.size)) + 128] = 26
                                    mem[(2 * ceil32(return_data.size)) + 160] = 'SafeMath: division by zero'
                                    mem[(2 * ceil32(return_data.size)) + 192] = 2
                                    mem[(2 * ceil32(return_data.size)) + 224] = tokenAddress
                                    require ext_code.size(joeV2RouterAddress)
                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                    mem[(4 * ceil32(return_data.size)) + 292] = joeV2RouterAddress
                                    mem[(4 * ceil32(return_data.size)) + 324] = 0
                                    require ext_code.size(stor15)
                                    call stor15.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 288
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 292] = 0
                                    mem[(4 * ceil32(return_data.size)) + 324] = 0
                                    mem[(4 * ceil32(return_data.size)) + 356] = 160
                                    mem[(4 * ceil32(return_data.size)) + 452] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 484
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                                    require ext_code.size(joeV2RouterAddress)
                                    call joeV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 544]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1318 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1318] = 30
                                    mem[_1318 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call futurUsePoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 17
                                    mem[mem[64] + 4] = distributionPoolAddress
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = ext_call.return_data[0]
                                    require ext_code.size(stor15)
                                    call stor15.0x23b872dd with:
                                         gas gas_remaining wei
                                        args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1472 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1472] == bool(mem[_1472])
                                else:
                                    if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                                        revert with 0, 17
                                    if not ext_call.return_data[0]:
                                        revert with 0, 18
                                    if ext_call.return_data[0] * cashoutFee / ext_call.return_data[0] != cashoutFee:
                                        revert with 0, 'SafeMath: multiplication overflow'
                                    mem[(2 * ceil32(return_data.size)) + 128] = 26
                                    mem[(2 * ceil32(return_data.size)) + 160] = 'SafeMath: division by zero'
                                    mem[(2 * ceil32(return_data.size)) + 192] = 2
                                    mem[(2 * ceil32(return_data.size)) + 224] = tokenAddress
                                    require ext_code.size(joeV2RouterAddress)
                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                    mem[(4 * ceil32(return_data.size)) + 292] = joeV2RouterAddress
                                    mem[(4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] * cashoutFee / 100
                                    require ext_code.size(stor15)
                                    call stor15.approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = (4 * ceil32(return_data.size)) + 288
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    mem[(4 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * cashoutFee / 100
                                    mem[(4 * ceil32(return_data.size)) + 324] = 0
                                    mem[(4 * ceil32(return_data.size)) + 356] = 160
                                    mem[(4 * ceil32(return_data.size)) + 452] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 484
                                    t = (2 * ceil32(return_data.size)) + 224
                                    while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                                    require ext_code.size(joeV2RouterAddress)
                                    call joeV2RouterAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 544]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1317 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_1317] = 30
                                    mem[_1317 + 32] = 'SafeMath: subtraction overflow'
                                    if eth.balance(this.address) > eth.balance(this.address):
                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                    if eth.balance(this.address) < eth.balance(this.address):
                                        revert with 0, 17
                                    call futurUsePoolAddress with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                                        revert with 0, 17
                                    mem[mem[64] + 4] = distributionPoolAddress
                                    mem[mem[64] + 36] = msg.sender
                                    mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                                    require ext_code.size(stor15)
                                    call stor15.0x23b872dd with:
                                         gas gas_remaining wei
                                        args distributionPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1471 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1471] == bool(mem[_1471])
                    require ext_code.size(nodeRewardManagerAddress)
                    call nodeRewardManagerAddress.0x5c298b1c with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
            else:
                if unknown_0x6770474b(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x6770474b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        swapTokensAmount = arg1
                    else:
                        if unknown_0x6815a91c(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            cashoutFee = arg1
                        else:
                            if unknown_0x6d9ae0be(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                return cashoutFee
                            if uint32(call.func_hash) >> 224 != unknown_0x6ef30041(?????):
                                require unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224
                                require not msg.value
                                require calldata.size - 4 >= 32
                                require arg1 == address(arg1)
                                return balanceOf[address(arg1)]
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 0, 17
                            require ext_code.size(stor15)
                            call stor15.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), 10^18 * arg1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if unknown_0x583bd7a6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == bool(arg1)
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        Mask(248, 0, stor27.field_8) = Mask(248, 0, bool(arg1))
                    else:
                        if unknown_0x5f1c3182(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return swapTokensAmount
                        if unknown_0x64b78570(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            mem[128] = 0x6fdde0300000000000000000000000000000000000000000000000000000000
                            require ext_code.size(stor15)
                            staticcall stor15.name() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            _98 = mem[128]
                            require mem[128] <= test266151307()
                            require mem[128] + 159 < return_data.size + 128
                            _151 = mem[mem[128] + 128]
                            if mem[mem[128] + 128] > test266151307():
                                revert with 0, 65
                            if ceil32(ceil32(mem[mem[128] + 128])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[128] + 128])) + 129 > test266151307():
                                revert with 0, 65
                            mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[128] + 128])) + 129
                            mem[ceil32(return_data.size) + 128] = mem[mem[128] + 128]
                            require _98 + _151 + 32 <= return_data.size
                            mem[ceil32(return_data.size) + 160 len ceil32(_151)] = mem[_98 + 160 len ceil32(_151)]
                            if ceil32(_151) <= _151:
                                _1319 = mem[64]
                                mem[mem[64]] = 32
                                mem[mem[64] + 32] = _151
                                mem[mem[64] + 64 len ceil32(_151)] = mem[ceil32(return_data.size) + 160 len ceil32(_151)]
                                if ceil32(_151) <= _151:
                                    return Array(len=_151, data=mem[mem[64] + 64 len ceil32(_151)])
                                mem[_151 + mem[64] + 64] = 0
                                return memory
                                  from mem[64]
                                   len ceil32(_151) + _1319 + -mem[64] + 64
                            mem[_151 + ceil32(return_data.size) + 160] = 0
                            _1320 = mem[64]
                            mem[mem[64]] = 32
                            mem[mem[64] + 32] = _151
                            mem[mem[64] + 64 len ceil32(_151)] = mem[ceil32(return_data.size) + 160 len ceil32(_151)]
                            if ceil32(_151) <= _151:
                                return Array(len=_151, data=mem[mem[64] + 64 len ceil32(_151)])
                            mem[_151 + mem[64] + 64] = 0
                            return memory
                              from mem[64]
                               len ceil32(_151) + _1320 + -mem[64] + 64
                        require unknown_0x65bfe430(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not msg.sender:
                            revert with 0, 'CSHT:  creation from the zero address'
                        mem[0] = msg.sender
                        mem[32] = 29
                        if stor29[address(msg.sender)]:
                            revert with 0, 'MANIA CSHT: Blacklisted address'
                        if futurUsePoolAddress == msg.sender:
                            revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                        if distributionPoolAddress == msg.sender:
                            revert with 0, 'CSHT: futur and rewardsPool cannot cashout rewards'
                        mem[132] = msg.sender
                        mem[164] = arg1
                        require ext_code.size(nodeRewardManagerAddress)
                        staticcall nodeRewardManagerAddress.0xa6e15cc4 with:
                                gas gas_remaining wei
                               args msg.sender, arg1
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'CSHT: You don't have enough reward to cash out'
                        if not uint8(stor27.field_8):
                            require ext_code.size(stor15)
                            call stor15.0x23b872dd with:
                                 gas gas_remaining wei
                                args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            if cashoutFee <= 0:
                                if ext_call.return_data[0] < 0:
                                    revert with 0, 17
                                require ext_code.size(stor15)
                                call stor15.0x23b872dd with:
                                     gas gas_remaining wei
                                    args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            else:
                                mem[ceil32(return_data.size) + 132] = this.address
                                require ext_code.size(stor15)
                                staticcall stor15.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] < 10^18:
                                    if ext_call.return_data[0] < 0:
                                        revert with 0, 17
                                    require ext_code.size(stor15)
                                    call stor15.0x23b872dd with:
                                         gas gas_remaining wei
                                        args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                else:
                                    if not ext_call.return_data[0]:
                                        mem[(2 * ceil32(return_data.size)) + 128] = 26
                                        mem[(2 * ceil32(return_data.size)) + 160] = 'SafeMath: division by zero'
                                        mem[(2 * ceil32(return_data.size)) + 192] = 2
                                        mem[(2 * ceil32(return_data.size)) + 224] = tokenAddress
                                        require ext_code.size(joeV2RouterAddress)
                                        staticcall joeV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                        mem[(4 * ceil32(return_data.size)) + 292] = joeV2RouterAddress
                                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                                        require ext_code.size(stor15)
                                        call stor15.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 288
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(4 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 292] = 0
                                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                                        mem[(4 * ceil32(return_data.size)) + 356] = 160
                                        mem[(4 * ceil32(return_data.size)) + 452] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 484
                                        t = (2 * ceil32(return_data.size)) + 224
                                        while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                                        require ext_code.size(joeV2RouterAddress)
                                        call joeV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 544]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1322 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1322] = 30
                                        mem[_1322 + 32] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call futurUsePoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < 0:
                                            revert with 0, 17
                                        mem[mem[64] + 4] = distributionPoolAddress
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = ext_call.return_data[0]
                                        require ext_code.size(stor15)
                                        call stor15.0x23b872dd with:
                                             gas gas_remaining wei
                                            args distributionPoolAddress, msg.sender, ext_call.return_data[0]
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1474 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1474] == bool(mem[_1474])
                                    else:
                                        if ext_call.return_data[0] and cashoutFee > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if ext_call.return_data[0] * cashoutFee / ext_call.return_data[0] != cashoutFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[(2 * ceil32(return_data.size)) + 128] = 26
                                        mem[(2 * ceil32(return_data.size)) + 160] = 'SafeMath: division by zero'
                                        mem[(2 * ceil32(return_data.size)) + 192] = 2
                                        mem[(2 * ceil32(return_data.size)) + 224] = tokenAddress
                                        require ext_code.size(joeV2RouterAddress)
                                        staticcall joeV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[(2 * ceil32(return_data.size)) + 288] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[(2 * ceil32(return_data.size)) + 256] = ext_call.return_data[12 len 20]
                                        mem[(4 * ceil32(return_data.size)) + 292] = joeV2RouterAddress
                                        mem[(4 * ceil32(return_data.size)) + 324] = ext_call.return_data[0] * cashoutFee / 100
                                        require ext_code.size(stor15)
                                        call stor15.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[(4 * ceil32(return_data.size)) + 292 len (5 * ceil32(return_data.size)) + 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = (4 * ceil32(return_data.size)) + 288
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[(4 * ceil32(return_data.size)) + 288] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 292] = ext_call.return_data[0] * cashoutFee / 100
                                        mem[(4 * ceil32(return_data.size)) + 324] = 0
                                        mem[(4 * ceil32(return_data.size)) + 356] = 160
                                        mem[(4 * ceil32(return_data.size)) + 452] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 484
                                        t = (2 * ceil32(return_data.size)) + 224
                                        while idx < mem[(2 * ceil32(return_data.size)) + 192]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 388] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 420] = block.timestamp
                                        require ext_code.size(joeV2RouterAddress)
                                        call joeV2RouterAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len (4 * ceil32(return_data.size)) + -mem[64] + 544]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1321 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_1321] = 30
                                        mem[_1321 + 32] = 'SafeMath: subtraction overflow'
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call futurUsePoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if ext_call.return_data[0] < ext_call.return_data[0] * cashoutFee / 100:
                                            revert with 0, 17
                                        mem[mem[64] + 4] = distributionPoolAddress
                                        mem[mem[64] + 36] = msg.sender
                                        mem[mem[64] + 68] = ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                                        require ext_code.size(stor15)
                                        call stor15.0x23b872dd with:
                                             gas gas_remaining wei
                                            args distributionPoolAddress, msg.sender, ext_call.return_data[0] - (ext_call.return_data[0] * cashoutFee / 100)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1473 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1473] == bool(mem[_1473])
                        require ext_code.size(nodeRewardManagerAddress)
                        call nodeRewardManagerAddress.0x6edb7002 with:
                             gas gas_remaining wei
                            args msg.sender, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
        else:
            if unknown_0x1cdd3be3(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0x3317237b(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x3317237b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 96
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        require ext_code.size(stor15)
                        call stor15.0x23b872dd with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), arg3
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        return bool(ext_call.return_data[0])
                    if unknown_0x39509351(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if allowance[msg.sender][address(arg1)] > !arg2:
                            revert with 0, 17
                        if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if not msg.sender:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
                        emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, address(arg1));
                        return 1
                    if unknown_0x3a98ef39(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalShares
                    if unknown_0x406072a9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        return released[address(arg1)][address(arg2)]
                    require unknown_0x4195fbf3(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    if arg1 <= eth.balance(this.address):
                        call owner with:
                           value arg1 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        call owner with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if unknown_0x1cdd3be3(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor29[arg1])
                if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
                    if unknown_0x2bb14e1d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return rewardsFee
                    require unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return 18
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                if not address(arg1):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if stor29[address(arg1)]:
                    revert with 0, 'Blacklisted address'
                if stor29[address(arg2)]:
                    revert with 0, 'Blacklisted address'
                if not address(arg1):
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
                if balanceOf[address(arg1)] < arg3:
                    revert with 0, 17
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, address(arg1), address(arg2));
                if arg3 > allowance[address(arg1)][msg.sender]:
                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[296 len 24] >> 64, 0
                if allowance[address(arg1)][msg.sender] < arg3:
                    revert with 0, 17
                if not address(arg1):
                    revert with 0, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
                return 1
            if unknown_0x0eef1c14(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != name():
                    if uint32(call.func_hash) >> 224 != updateRewardsFee(uint256 arg1):
                        if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                            require updateFuturWall(address arg1) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            futurUsePoolAddress = address(arg1)
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        if not msg.sender:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(msg.sender)][address(arg1)] = arg2
                        emit Approval(arg2, msg.sender, address(arg1));
                        return 1
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    rewardsFee = arg1
                    if arg1 > !liquidityPoolFee:
                        revert with 0, 17
                    if arg1 + liquidityPoolFee < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg1 + liquidityPoolFee > !futurFee:
                        revert with 0, 17
                    if futurFee < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees = arg1 + liquidityPoolFee + futurFee
                require not msg.value
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if bool(stor3.length):
                        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, stor3.length):
                            if 31 < uint255(stor3.length) * 0.5:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while (uint255(stor3.length) * 0.5) + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                            mem[160] = 256 * stor3.length.field_8
                    else:
                        if bool(stor3.length) == stor3.length.field_1 < 32:
                            revert with 0, 34
                        if stor3.length.field_1:
                            if 31 < stor3.length.field_1:
                                mem[160] = uint256(stor3.field_0)
                                idx = 160
                                s = 0
                                while stor3.length.field_1 + 128 > idx:
                                    mem[idx + 32] = stor3[s].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)])
                            mem[160] = 256 * stor3.length.field_8
                    mem[ceil32(uint255(stor3.length) * 0.5) + 224 len ceil32(uint255(stor3.length) * 0.5)] = mem[160 len ceil32(uint255(stor3.length) * 0.5)]
                    if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
                        mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 224] = 0
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[160 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 224 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
                if bool(stor3.length) == stor3.length.field_1 < 32:
                    revert with 0, 34
                if bool(stor3.length):
                    if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, stor3.length):
                        if 31 < uint255(stor3.length) * 0.5:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while (uint255(stor3.length) * 0.5) + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                        mem[160] = 256 * stor3.length.field_8
                else:
                    if bool(stor3.length) == stor3.length.field_1 < 32:
                        revert with 0, 34
                    if stor3.length.field_1:
                        if 31 < stor3.length.field_1:
                            mem[160] = uint256(stor3.field_0)
                            idx = 160
                            s = 0
                            while stor3.length.field_1 + 128 > idx:
                                mem[idx + 32] = stor3[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)])
                        mem[160] = 256 * stor3.length.field_8
                mem[ceil32(stor3.length.field_1) + 224 len ceil32(stor3.length.field_1)] = mem[160 len ceil32(stor3.length.field_1)]
                if ceil32(stor3.length.field_1) > stor3.length.field_1:
                    mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 224] = 0
                return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
            if uint32(call.func_hash) >> 224 != unknown_0x0eef1c14(?????):
                if unknown_0x126cbe60(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require ext_code.size(stor15)
                    staticcall stor15.0x70a08231 with:
                            gas gas_remaining wei
                           args address(arg1)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return ext_call.return_data[0]
                if unknown_0x13114a9d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalFees
                if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return totalSupply
                require unknown_0x19165587(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if not shares[address(arg1)]:
                    revert with 0, 'PaymentSplitter: account has no shares'
                if eth.balance(this.address) > !totalReleased:
                    revert with 0, 17
                if eth.balance(this.address) + totalReleased and shares[address(arg1)] > -1 / eth.balance(this.address) + totalReleased:
                    revert with 0, 17
                if not totalShares:
                    revert with 0, 18
                if (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares < released[address(arg1)]:
                    revert with 0, 17
                if not ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
                    revert with 0, 'PaymentSplitter: account is not due payment'
                if released[address(arg1)] > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
                    revert with 0, 17
                released[address(arg1)] = (eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares
                if totalReleased > !(((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]):
                    revert with 0, 17
                totalReleased = totalReleased + ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]
                if eth.balance(this.address) < ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]:
                    revert with 0, 'Address: insufficient balance'
                call address(arg1) with:
                   value ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)] wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Address: unable to send value, recipient may have reverted'
                emit PaymentReleased(address(arg1), ((eth.balance(this.address) * shares[address(arg1)]) + (totalReleased * shares[address(arg1)]) / totalShares) - released[address(arg1)]);
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 <= test266151307()
                require calldata.size > arg1 + 35
                if arg1.length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(arg1.length)) + 129 < 128 or ceil32(ceil32(arg1.length)) + 129 > test266151307():
                    revert with 0, 65
                require arg1 + arg1.length + 36 <= calldata.size
                require arg2 == uint8(arg2)
                if arg1.length <= 3:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                if arg1.length >= 32:
                    revert with 0, 'NODE CREATION: NAME SIZE INVALID'
                if not msg.sender:
                    revert with 0, 'NODE CREATION:  creation from the zero address'
                if stor29[address(msg.sender)]:
                    revert with 0, 'NODE CREATION: Blacklisted address'
                if futurUsePoolAddress == msg.sender:
                    revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                if distributionPoolAddress == msg.sender:
                    revert with 0, 'NODE CREATION: futur and rewardsPool cannot create node'
                require ext_code.size(nodeRewardManagerAddress)
                staticcall nodeRewardManagerAddress.0xf90f0eaa with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(nodeRewardManagerAddress)
                staticcall nodeRewardManagerAddress.0x4491a7e4 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= ext_call.return_data[0]:
                    revert with 0, 'Create node: Reached node limit'
                require ext_code.size(nodeRewardManagerAddress)
                staticcall nodeRewardManagerAddress.0x385c95f4 with:
                        gas gas_remaining wei
                       args uint8(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'Create Node: Invalid node tier'
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'NODE CREATION: Balance too low for creation.'
                require ext_code.size(stor15)
                staticcall stor15.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < swapTokensAmount:
                    require ext_code.size(stor15)
                    call stor15.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require ext_code.size(nodeRewardManagerAddress)
                    call nodeRewardManagerAddress.0xc75956d1 with:
                         gas gas_remaining wei
                        args msg.sender, Array(len=arg1.length, data=arg1[all]), uint8(arg2)
                else:
                    if not uint8(stor27.field_8):
                        require ext_code.size(stor15)
                        call stor15.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        require ext_code.size(nodeRewardManagerAddress)
                        call nodeRewardManagerAddress.0xc75956d1 with:
                             gas gas_remaining wei
                            args msg.sender, Array(len=arg1.length, data=arg1[all]), uint8(arg2)
                    else:
                        if uint8(stor27.field_0):
                            require ext_code.size(stor15)
                            call stor15.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, address(this.address), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            require ext_code.size(nodeRewardManagerAddress)
                            call nodeRewardManagerAddress.0xc75956d1 with:
                                 gas gas_remaining wei
                                args msg.sender, Array(len=arg1.length, data=arg1[all]), uint8(arg2)
                        else:
                            if owner == msg.sender:
                                require ext_code.size(stor15)
                                call stor15.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, address(this.address), ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                require ext_code.size(nodeRewardManagerAddress)
                                call nodeRewardManagerAddress.0xc75956d1 with:
                                     gas gas_remaining wei
                                    args msg.sender, Array(len=arg1.length, data=arg1[all]), uint8(arg2)
                            else:
                                if stor30[address(msg.sender)]:
                                    require ext_code.size(stor15)
                                    call stor15.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, address(this.address), ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    require ext_code.size(nodeRewardManagerAddress)
                                    call nodeRewardManagerAddress.0xc75956d1 with:
                                         gas gas_remaining wei
                                        args msg.sender, Array(len=arg1.length, data=arg1[all]), uint8(arg2)
                                else:
                                    uint8(stor27.field_0) = 1
                                    if ext_call.return_data[0]:
                                        if ext_call.return_data[0] and futurFee > -1 / ext_call.return_data[0]:
                                            revert with 0, 17
                                        if not ext_call.return_data[0]:
                                            revert with 0, 18
                                        if ext_call.return_data[0] * futurFee / ext_call.return_data[0] != futurFee:
                                            revert with 0, 'SafeMath: multiplication overflow'
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 225] = tokenAddress
                                        require ext_code.size(joeV2RouterAddress)
                                        staticcall joeV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 257] = ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 293] = joeV2RouterAddress
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 325] = ext_call.return_data[0] * futurFee / 100
                                        require ext_code.size(stor15)
                                        call stor15.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 293 len ceil32(return_data.size) + 64]
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 289] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 293] = ext_call.return_data[0] * futurFee / 100
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 485
                                        t = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 225
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(joeV2RouterAddress)
                                        call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0] * futurFee / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 485 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call futurUsePoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not ext_call.return_data[0]:
                                            mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 513] = tokenAddress
                                            require ext_code.size(joeV2RouterAddress)
                                            staticcall joeV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                            require ext_code.size(stor15)
                                            call stor15.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args joeV2RouterAddress, 0
                                            mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 581] = 0
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 741] = 2
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 773
                                            t = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 513
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(joeV2RouterAddress)
                                            call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 773 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739] = 0
                                                revert with 0, 
                                                            'SafeMath: subtraction overflow',
                                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739 len (5 * ceil32(return_data.size)) + 2]
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(stor15)
                                            call stor15.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(this.address), distributionPoolAddress, 0, mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 805 len 5 * ceil32(return_data.size)]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929] = tokenAddress
                                                require ext_code.size(joeV2RouterAddress)
                                                staticcall joeV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, 0
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 997] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189
                                                t = ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1093] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1125] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1157] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1189] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args tokenAddress, 0, 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = 0
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    0,
                                            else:
                                                if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 18
                                                if ext_call.return_data[0] * liquidityPoolFee / ext_call.return_data[0] != liquidityPoolFee:
                                                    revert with 0, 
                                                                'SafeMath: multiplication overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 837 len 9 * ceil32(return_data.size)]
                                                if ext_call.return_data[0] * liquidityPoolFee / 100 / 2 > ext_call.return_data[0] * liquidityPoolFee / 100:
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 995] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 995 len (9 * ceil32(return_data.size)) + 2]
                                                if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929] = tokenAddress
                                                require ext_code.size(joeV2RouterAddress)
                                                staticcall joeV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 997] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189
                                                t = ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1093] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1125] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1157] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1189] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args tokenAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                                            require ext_code.size(stor15)
                                            staticcall stor15.0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089] = tokenAddress
                                            require ext_code.size(joeV2RouterAddress)
                                            staticcall joeV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                            require ext_code.size(stor15)
                                            call stor15.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args joeV2RouterAddress, ext_call.return_data[0]
                                            mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349
                                            t = ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(joeV2RouterAddress)
                                            call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            uint8(stor27.field_0) = 0
                                            require ext_code.size(stor15)
                                            call stor15.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(this.address), ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            require ext_code.size(nodeRewardManagerAddress)
                                            call nodeRewardManagerAddress.0xc75956d1 with:
                                                 gas gas_remaining wei
                                                args msg.sender, Array(len=arg1.length, data=arg1[all]), uint8(arg2)
                                        else:
                                            if ext_call.return_data[0] and rewardsFee > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if ext_call.return_data[0] * rewardsFee / ext_call.return_data[0] != rewardsFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if ext_call.return_data[0] * rewardsFee / 100:
                                                if ext_call.return_data[0] * rewardsFee / 100 and stor26 > -1 / ext_call.return_data[0] * rewardsFee / 100:
                                                    revert with 0, 17
                                                if not ext_call.return_data[0] * rewardsFee / 100:
                                                    revert with 0, 18
                                                if ext_call.return_data[0] * rewardsFee / 100 * stor26 / ext_call.return_data[0] * rewardsFee / 100 != stor26:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 513] = tokenAddress
                                                require ext_code.size(joeV2RouterAddress)
                                                staticcall joeV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, ext_call.return_data[0] * rewardsFee / 100 * stor26 / 100
                                                mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0] * rewardsFee / 100 * stor26 / 100
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 741] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 773
                                                t = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 513
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] * rewardsFee / 100 * stor26 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 773 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739 len (5 * ceil32(return_data.size)) + 2]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] * rewardsFee / 100 * stor26 / 100 > ext_call.return_data[0] * rewardsFee / 100:
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 803] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 803 len (5 * ceil32(return_data.size)) + 2]
                                                if ext_call.return_data[0] * rewardsFee / 100 < ext_call.return_data[0] * rewardsFee / 100 * stor26 / 100:
                                                    revert with 0, 17
                                                require ext_code.size(stor15)
                                                call stor15.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(this.address), distributionPoolAddress, (ext_call.return_data[0] * rewardsFee / 100) - (ext_call.return_data[0] * rewardsFee / 100 * stor26 / 100), mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 805 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if ext_call.return_data[0]:
                                                    if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 18
                                                    if ext_call.return_data[0] * liquidityPoolFee / ext_call.return_data[0] != liquidityPoolFee:
                                                        revert with 0, 
                                                                    'SafeMath: multiplication overflow',
                                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 837 len 9 * ceil32(return_data.size)]
                                                    if ext_call.return_data[0] * liquidityPoolFee / 100 / 2 > ext_call.return_data[0] * liquidityPoolFee / 100:
                                                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 995] = 0
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 995 len (9 * ceil32(return_data.size)) + 2]
                                                    if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 997] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189
                                                    t = ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1093] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1157] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1189] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                                                    require ext_code.size(stor15)
                                                    staticcall stor15.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, ext_call.return_data[0]
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349
                                                    t = ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor27.field_0) = 0
                                                    require ext_code.size(stor15)
                                                    call stor15.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0xc75956d1 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=arg1.length, data=arg1[all]), uint8(arg2)
                                                else:
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, 0
                                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 997] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189
                                                    t = ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1155] = 0
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1155 len (5 * ceil32(return_data.size)) + 2]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1093] = 0
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, 0, mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1157] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1189] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, 0, 0, 0, this.address, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1121] = 0
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        0,
                                                    require ext_code.size(stor15)
                                                    staticcall stor15.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1089] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, ext_call.return_data[0]
                                                    mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1317] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1349
                                                    t = ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1089
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1253] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1285] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1349 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor27.field_0) = 0
                                                    require ext_code.size(stor15)
                                                    call stor15.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), ext_call.return_data[0], mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1253 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (27 * ceil32(return_data.size)) + 1285 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) > arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + (27 * ceil32(return_data.size)) + 1285] = 0
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0xc75956d1 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (27 * ceil32(return_data.size)) + 1285 len (9 * ceil32(return_data.size)) + ceil32(arg1.length)]), uint8(arg2)
                                            else:
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 513] = tokenAddress
                                                require ext_code.size(joeV2RouterAddress)
                                                staticcall joeV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, 0
                                                mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 581] = 0
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 773
                                                t = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 513
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 773 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if 0 > ext_call.return_data[0] * rewardsFee / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if ext_call.return_data[0] * rewardsFee / 100 < 0:
                                                    revert with 0, 17
                                                require ext_code.size(stor15)
                                                call stor15.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(this.address), distributionPoolAddress, ext_call.return_data[0] * rewardsFee / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, 0
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 997] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1157] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189
                                                    t = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1093] = 0
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1157] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1189] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, 0, 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = 0
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        0,
                                                else:
                                                    if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 18
                                                    if ext_call.return_data[0] * liquidityPoolFee / ext_call.return_data[0] != liquidityPoolFee:
                                                        revert with 0, 'SafeMath: multiplication overflow'
                                                    if ext_call.return_data[0] * liquidityPoolFee / 100 / 2 > ext_call.return_data[0] * liquidityPoolFee / 100:
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 997] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1157] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189
                                                    t = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1093] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1157] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1189] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                                                require ext_code.size(stor15)
                                                staticcall stor15.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089] = tokenAddress
                                                require ext_code.size(joeV2RouterAddress)
                                                staticcall joeV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, ext_call.return_data[0]
                                                mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1317] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349
                                                t = ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1253] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1285] = block.timestamp
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor27.field_0) = 0
                                                require ext_code.size(stor15)
                                                call stor15.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), ext_call.return_data[0], mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1253 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (26 * ceil32(return_data.size)) + 1285 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) > arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + (26 * ceil32(return_data.size)) + 1285] = 0
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0xc75956d1 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (26 * ceil32(return_data.size)) + 1285 len (9 * ceil32(return_data.size)) + ceil32(arg1.length)]), uint8(arg2)
                                    else:
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 225] = tokenAddress
                                        require ext_code.size(joeV2RouterAddress)
                                        staticcall joeV2RouterAddress.0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 257] = ext_call.return_data[12 len 20]
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 293] = joeV2RouterAddress
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 325] = 0
                                        require ext_code.size(stor15)
                                        call stor15.approve(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 293 len ceil32(return_data.size) + 64]
                                        mem[ceil32(ceil32(arg1.length)) + (8 * ceil32(return_data.size)) + 289] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 289] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 293] = 0
                                        idx = 0
                                        s = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 485
                                        t = ceil32(ceil32(arg1.length)) + (7 * ceil32(return_data.size)) + 225
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(joeV2RouterAddress)
                                        call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 485 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if eth.balance(this.address) > eth.balance(this.address):
                                            revert with 0, 'SafeMath: subtraction overflow', 0
                                        if eth.balance(this.address) < eth.balance(this.address):
                                            revert with 0, 17
                                        call futurUsePoolAddress with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if not ext_call.return_data[0]:
                                            mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 513] = tokenAddress
                                            require ext_code.size(joeV2RouterAddress)
                                            staticcall joeV2RouterAddress.0x73b295c2 with:
                                                    gas gas_remaining wei
                                            mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                            mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                            require ext_code.size(stor15)
                                            call stor15.approve(address arg1, uint256 arg2) with:
                                                 gas gas_remaining wei
                                                args joeV2RouterAddress, 0
                                            mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                            mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 581] = 0
                                            idx = 0
                                            s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 773
                                            t = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 513
                                            while idx < 2:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            require ext_code.size(joeV2RouterAddress)
                                            call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                 gas gas_remaining wei
                                                args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 773 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if eth.balance(this.address) > eth.balance(this.address):
                                                revert with 0, 'SafeMath: subtraction overflow', 0
                                            if eth.balance(this.address) < eth.balance(this.address):
                                                revert with 0, 17
                                            call distributionPoolAddress with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require ext_code.size(stor15)
                                            call stor15.0x23b872dd with:
                                                 gas gas_remaining wei
                                                args address(this.address), distributionPoolAddress, 0
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929] = tokenAddress
                                                require ext_code.size(joeV2RouterAddress)
                                                staticcall joeV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, 0
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 997] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1157] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189
                                                t = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1093] = 0
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args tokenAddress, 0, 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1121] = 0
                                                emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                    0,
                                                require ext_code.size(stor15)
                                                staticcall stor15.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089] = tokenAddress
                                                require ext_code.size(joeV2RouterAddress)
                                                staticcall joeV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, ext_call.return_data[0]
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1349
                                                t = ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1089
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1349 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor27.field_0) = 0
                                                require ext_code.size(stor15)
                                                call stor15.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0xc75956d1 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, Array(len=arg1.length, data=arg1[all]), uint8(arg2)
                                            else:
                                                if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                                    revert with 0, 17
                                                if not ext_call.return_data[0]:
                                                    revert with 0, 18
                                                if ext_call.return_data[0] * liquidityPoolFee / ext_call.return_data[0] != liquidityPoolFee:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                if ext_call.return_data[0] * liquidityPoolFee / 100 / 2 > ext_call.return_data[0] * liquidityPoolFee / 100:
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929] = tokenAddress
                                                require ext_code.size(joeV2RouterAddress)
                                                staticcall joeV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 997] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1157] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189
                                                t = ceil32(ceil32(arg1.length)) + (14 * ceil32(return_data.size)) + 929
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1189 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    revert with 0, 'SafeMath: subtraction overflow', 0
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                mem[ceil32(ceil32(arg1.length)) + (17 * ceil32(return_data.size)) + 1093] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1125] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1157] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1189] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                     gas gas_remaining wei
                                                    args tokenAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, this.address, block.timestamp
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 96
                                                mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                                                require ext_code.size(stor15)
                                                staticcall stor15.0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089] = tokenAddress
                                                require ext_code.size(joeV2RouterAddress)
                                                staticcall joeV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, ext_call.return_data[0]
                                                mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1317] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349
                                                t = ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1253] = this.address
                                                mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1285] = block.timestamp
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor27.field_0) = 0
                                                require ext_code.size(stor15)
                                                call stor15.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), ext_call.return_data[0], mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1253 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (26 * ceil32(return_data.size)) + 1285 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                                                if ceil32(arg1.length) > arg1.length:
                                                    mem[arg1.length + ceil32(ceil32(arg1.length)) + (26 * ceil32(return_data.size)) + 1285] = 0
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0xc75956d1 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (26 * ceil32(return_data.size)) + 1285 len (9 * ceil32(return_data.size)) + ceil32(arg1.length)]), uint8(arg2)
                                        else:
                                            if ext_call.return_data[0] and rewardsFee > -1 / ext_call.return_data[0]:
                                                revert with 0, 17
                                            if not ext_call.return_data[0]:
                                                revert with 0, 18
                                            if ext_call.return_data[0] * rewardsFee / ext_call.return_data[0] != rewardsFee:
                                                revert with 0, 'SafeMath: multiplication overflow'
                                            if not ext_call.return_data[0] * rewardsFee / 100:
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 513] = tokenAddress
                                                require ext_code.size(joeV2RouterAddress)
                                                staticcall joeV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, 0
                                                mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 581] = 0
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 741] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 773
                                                t = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 513
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 773 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739 len (5 * ceil32(return_data.size)) + 2]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if 0 > ext_call.return_data[0] * rewardsFee / 100:
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 803] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 803 len (5 * ceil32(return_data.size)) + 2]
                                                if ext_call.return_data[0] * rewardsFee / 100 < 0:
                                                    revert with 0, 17
                                                require ext_code.size(stor15)
                                                call stor15.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(this.address), distributionPoolAddress, ext_call.return_data[0] * rewardsFee / 100, mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 805 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, 0
                                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 997] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189
                                                    t = ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        revert with 0, 'SafeMath: subtraction overflow', 0
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1093] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1157] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1189] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (19 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, 0, 0, 0, this.address, block.timestamp
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1121] = 0
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        0,
                                                    require ext_code.size(stor15)
                                                    staticcall stor15.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, ext_call.return_data[0]
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349
                                                    t = ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1089
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (24 * ceil32(return_data.size)) + 1349 len 64]
                                                else:
                                                    if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 18
                                                    if ext_call.return_data[0] * liquidityPoolFee / ext_call.return_data[0] != liquidityPoolFee:
                                                        revert with 0, 
                                                                    'SafeMath: multiplication overflow',
                                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 837 len 9 * ceil32(return_data.size)]
                                                    if ext_call.return_data[0] * liquidityPoolFee / 100 / 2 > ext_call.return_data[0] * liquidityPoolFee / 100:
                                                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 995] = 0
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 995 len (9 * ceil32(return_data.size)) + 2]
                                                    if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 997] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189
                                                    t = ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1155] = 0
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1155 len (5 * ceil32(return_data.size)) + 2]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1093] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1157] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1189] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, this.address, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1121] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                                                    require ext_code.size(stor15)
                                                    staticcall stor15.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1089] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, ext_call.return_data[0]
                                                    mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1349
                                                    t = ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1089
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1349 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                uint8(stor27.field_0) = 0
                                                require ext_code.size(stor15)
                                                call stor15.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(this.address), ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                require ext_code.size(nodeRewardManagerAddress)
                                                call nodeRewardManagerAddress.0xc75956d1 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, Array(len=arg1.length, data=arg1[all]), uint8(arg2)
                                            else:
                                                if ext_call.return_data[0] * rewardsFee / 100 and stor26 > -1 / ext_call.return_data[0] * rewardsFee / 100:
                                                    revert with 0, 17
                                                if not ext_call.return_data[0] * rewardsFee / 100:
                                                    revert with 0, 18
                                                if ext_call.return_data[0] * rewardsFee / 100 * stor26 / ext_call.return_data[0] * rewardsFee / 100 != stor26:
                                                    revert with 0, 'SafeMath: multiplication overflow'
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 513] = tokenAddress
                                                require ext_code.size(joeV2RouterAddress)
                                                staticcall joeV2RouterAddress.0x73b295c2 with:
                                                        gas gas_remaining wei
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                mem[ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 545] = ext_call.return_data[12 len 20]
                                                require ext_code.size(stor15)
                                                call stor15.approve(address arg1, uint256 arg2) with:
                                                     gas gas_remaining wei
                                                    args joeV2RouterAddress, ext_call.return_data[0] * rewardsFee / 100 * stor26 / 100
                                                mem[ceil32(ceil32(arg1.length)) + (11 * ceil32(return_data.size)) + 577] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 577] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 581] = ext_call.return_data[0] * rewardsFee / 100 * stor26 / 100
                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 741] = 2
                                                idx = 0
                                                s = ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 773
                                                t = ceil32(ceil32(arg1.length)) + (10 * ceil32(return_data.size)) + 513
                                                while idx < 2:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                require ext_code.size(joeV2RouterAddress)
                                                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                     gas gas_remaining wei
                                                    args ext_call.return_data[0] * rewardsFee / 100 * stor26 / 100, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 773 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if eth.balance(this.address) > eth.balance(this.address):
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 739 len (5 * ceil32(return_data.size)) + 2]
                                                if eth.balance(this.address) < eth.balance(this.address):
                                                    revert with 0, 17
                                                call distributionPoolAddress with:
                                                     gas 2300 wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                if ext_call.return_data[0] * rewardsFee / 100 * stor26 / 100 > ext_call.return_data[0] * rewardsFee / 100:
                                                    mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 803] = 0
                                                    revert with 0, 
                                                                'SafeMath: subtraction overflow',
                                                                mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 803 len (5 * ceil32(return_data.size)) + 2]
                                                if ext_call.return_data[0] * rewardsFee / 100 < ext_call.return_data[0] * rewardsFee / 100 * stor26 / 100:
                                                    revert with 0, 17
                                                require ext_code.size(stor15)
                                                call stor15.0x23b872dd with:
                                                     gas gas_remaining wei
                                                    args address(this.address), distributionPoolAddress, (ext_call.return_data[0] * rewardsFee / 100) - (ext_call.return_data[0] * rewardsFee / 100 * stor26 / 100), mem[ceil32(ceil32(arg1.length)) + (13 * ceil32(return_data.size)) + 805 len 5 * ceil32(return_data.size)]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                if not ext_call.return_data[0]:
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, 0
                                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 997] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189
                                                    t = ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args 0, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1155] = 0
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1155 len (5 * ceil32(return_data.size)) + 2]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1093] = 0
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, 0, mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1157] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1189] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, 0, 0, 0, this.address, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1121] = 0
                                                    emit SwapAndLiquify(uint256 arg1, uint256 arg2, uint256 arg3):
                                                                        0,
                                                    require ext_code.size(stor15)
                                                    staticcall stor15.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1089] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, ext_call.return_data[0]
                                                    mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1349
                                                    t = ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1089
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1349 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor27.field_0) = 0
                                                    require ext_code.size(stor15)
                                                    call stor15.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0xc75956d1 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=arg1.length, data=arg1[all]), uint8(arg2)
                                                else:
                                                    if ext_call.return_data[0] and liquidityPoolFee > -1 / ext_call.return_data[0]:
                                                        revert with 0, 17
                                                    if not ext_call.return_data[0]:
                                                        revert with 0, 18
                                                    if ext_call.return_data[0] * liquidityPoolFee / ext_call.return_data[0] != liquidityPoolFee:
                                                        revert with 0, 
                                                                    'SafeMath: multiplication overflow',
                                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 837 len 9 * ceil32(return_data.size)]
                                                    if ext_call.return_data[0] * liquidityPoolFee / 100 / 2 > ext_call.return_data[0] * liquidityPoolFee / 100:
                                                        mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 995] = 0
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 995 len (9 * ceil32(return_data.size)) + 2]
                                                    if ext_call.return_data[0] * liquidityPoolFee / 100 < ext_call.return_data[0] * liquidityPoolFee / 100 / 2:
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 961] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(arg1.length)) + (16 * ceil32(return_data.size)) + 993] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 993] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 997] = ext_call.return_data[0] * liquidityPoolFee / 100 / 2
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1157] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189
                                                    t = ceil32(ceil32(arg1.length)) + (15 * ceil32(return_data.size)) + 929
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1189 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    if eth.balance(this.address) > eth.balance(this.address):
                                                        mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1155] = 0
                                                        revert with 0, 
                                                                    'SafeMath: subtraction overflow',
                                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1155 len (5 * ceil32(return_data.size)) + 2]
                                                    if eth.balance(this.address) < eth.balance(this.address):
                                                        revert with 0, 17
                                                    mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1093] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), mem[ceil32(ceil32(arg1.length)) + (18 * ceil32(return_data.size)) + 1125 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1125] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1157] = 0
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1189] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1221] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                                         gas gas_remaining wei
                                                        args tokenAddress, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2), 0, 0, this.address, block.timestamp, mem[ceil32(ceil32(arg1.length)) + (20 * ceil32(return_data.size)) + 1253 len 9 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 96
                                                    mem[ceil32(ceil32(arg1.length)) + (21 * ceil32(return_data.size)) + 1121] = (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2)
                                                    emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] * liquidityPoolFee / 100), 0, (ext_call.return_data[0] * liquidityPoolFee / 100) - (ext_call.return_data[0] * liquidityPoolFee / 100 / 2));
                                                    require ext_code.size(stor15)
                                                    staticcall stor15.0x70a08231 with:
                                                            gas gas_remaining wei
                                                           args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1089] = tokenAddress
                                                    require ext_code.size(joeV2RouterAddress)
                                                    staticcall joeV2RouterAddress.0x73b295c2 with:
                                                            gas gas_remaining wei
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                                    mem[ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1121] = ext_call.return_data[12 len 20]
                                                    require ext_code.size(stor15)
                                                    call stor15.approve(address arg1, uint256 arg2) with:
                                                         gas gas_remaining wei
                                                        args joeV2RouterAddress, ext_call.return_data[0]
                                                    mem[ceil32(ceil32(arg1.length)) + (23 * ceil32(return_data.size)) + 1153] = ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1153] = 0x762b156200000000000000000000000000000000000000000000000000000000
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1157] = ext_call.return_data[0]
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1317] = 2
                                                    idx = 0
                                                    s = ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1349
                                                    t = ceil32(ceil32(arg1.length)) + (22 * ceil32(return_data.size)) + 1089
                                                    while idx < 2:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1253] = this.address
                                                    mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1285] = block.timestamp
                                                    require ext_code.size(joeV2RouterAddress)
                                                    call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                                         gas gas_remaining wei
                                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1349 len 64]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    uint8(stor27.field_0) = 0
                                                    require ext_code.size(stor15)
                                                    call stor15.0x23b872dd with:
                                                         gas gas_remaining wei
                                                        args msg.sender, address(this.address), ext_call.return_data[0], mem[ceil32(ceil32(arg1.length)) + (25 * ceil32(return_data.size)) + 1253 len 5 * ceil32(return_data.size)]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                                    mem[ceil32(ceil32(arg1.length)) + (27 * ceil32(return_data.size)) + 1285 len ceil32(arg1.length)] = arg1[all], ext_call.return_data[arg1.length + -ceil32(ceil32(arg1.length)) + 31 len ceil32(arg1.length) - arg1.length]
                                                    if ceil32(arg1.length) > arg1.length:
                                                        mem[arg1.length + ceil32(ceil32(arg1.length)) + (27 * ceil32(return_data.size)) + 1285] = 0
                                                    require ext_code.size(nodeRewardManagerAddress)
                                                    call nodeRewardManagerAddress.0xc75956d1 with:
                                                         gas gas_remaining wei
                                                        args msg.sender, Array(len=arg1.length, data=mem[ceil32(ceil32(arg1.length)) + (27 * ceil32(return_data.size)) + 1285 len (9 * ceil32(return_data.size)) + ceil32(arg1.length)]), uint8(arg2)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
