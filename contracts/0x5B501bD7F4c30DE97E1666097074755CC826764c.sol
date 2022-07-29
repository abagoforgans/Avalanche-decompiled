contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address nodeRewardManagerAddress;
address joeV2RouterAddress;
address joeV2PairAddress;
address treasuryAddress;
address teamAddress;
uint256 stor11;
uint256 sub_366d5ada;
uint256 teamRate;
uint256 liquidityRate;
uint256 treasuryRate;
uint8 stor16;
uint256 stor16;
uint256 sub_7ba8edf5;
mapping of uint8 stor18;
uint8 stor19;
uint8 stor19; offset 8
address deadWalletAddress; offset 16
mapping of uint8 stor20;
mapping of uint8 stor21;

function totalSupply() {
    return totalSupply
}

function teamAddress() {
    return teamAddress
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor20[arg1])
}

function sub_366d5ada(?) {
    return sub_366d5ada
}

function whiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor18[arg1]))
}

function joeV2Router() {
    return joeV2RouterAddress
}

function liquidityRate() {
    return liquidityRate
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function nodeRewardManager() {
    return nodeRewardManagerAddress
}

function teamRate() {
    return teamRate
}

function sub_7ba8edf5(?) {
    return sub_7ba8edf5
}

function deadWallet() {
    return deadWalletAddress
}

function owner() {
    return owner
}

function joeV2Pair() {
    return joeV2PairAddress
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
}

function treasuryAddress() {
    return treasuryAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function treasuryRate() {
    return treasuryRate
}

function tokenLock() {
    return bool(uint8(stor16))
}

function start() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor19.field_0) = 1
}

function sub_012507f5(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11 = arg1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTeamRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamRate = arg1
}

function sub_f819b8b6(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_7ba8edf5 > -2:
        revert with 0, 17
    sub_7ba8edf5++
}

function setTreasuryRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryRate = arg1
}

function setLiquidityRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityRate = arg1
}

function setRewardPoolRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_366d5ada = arg1
}

function setTokenLock() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_7ba8edf5:
        revert with 0, 'Can't lock forever!'
    uint256(stor16) = not uint8(stor16) or Mask(248, 8, uint256(stor16))
}

function setTeam(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Team CANNOT BE ZERO'
    teamAddress = arg1
}

function blacklistMalicious(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor20[address(arg1)] = uint8(arg2)
}

function setTreasury(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Treasury CANNOT BE ZERO'
    treasuryAddress = arg1
}

function setNodeManagement(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Manager CANNOT BE ZERO'
    nodeRewardManagerAddress = arg1
}

function setWhiteList(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor18[address(arg1)]) = not uint8(stor18[address(arg1)]) or Mask(248, 8, uint256(stor18[address(arg1)]))
}

function getNodePrice() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.nodePrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalCreatedNodes() {
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.totalNodesCreated() with:
            gas gas_remaining wei
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

function sub_4145f0e0(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor19.field_8) = 1
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0xda989fc4 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    uint8(stor19.field_8) = 0
}

function changeNodePrice(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._changeNodePrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getNodeNumberOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
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
                    'TKN: The PancakeSwap pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor21[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor21[address(arg1)] = uint8(arg2)
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

function sub_4b885582(?) {
    if not msg.sender:
        revert with 0, 'SENDER CAN'T BE ZERO'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress._isNodeOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'NO NODE OWNER'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress._getRewardAmountOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_ae07e7b1(?) {
    require calldata.size - 4 >= 32
    if uint8(stor19.field_8):
        revert with 0, 'Distributing now!'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0x70692c4c with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'UPDATE : NO NODE OWNER'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0x36dd927a with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= balanceOf[this.address]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount of token is more than liquidity'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg1 > balanceOf[address(this.address)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(this.address)] < arg1:
        revert with 0, 17
    balanceOf[address(this.address)] -= arg1
    if balanceOf[msg.sender] > !arg1:
        revert with 0, 17
    if balanceOf[msg.sender] + arg1 < balanceOf[msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] = balanceOf[msg.sender] + arg1
    emit Transfer(arg1, this.address, msg.sender);
}

function sub_5812d3f6(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not uint8(stor19.field_0):
        revert with 0, 'Not Start'
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint8(stor19.field_8):
        revert with 0, 'Distributing now!'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE CREATION:  creation from the zero address'
    if stor20[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE CREATION: Blacklisted address'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > stor11:
        revert with 0, 'NODE CREATION: Your node maxium was limited'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0x5c6dc219 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if uint8(stor16):
        if not uint8(stor18[address(msg.sender)]):
            if not uint8(stor18[address(arg1)]):
                revert with 0, 'ERC20: lock now'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor20[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor20[address(arg1)]:
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

function sub_74baa81f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if joeV2RouterAddress == address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The router already has that address'
    emit 0xbef91ae5: address(arg1), joeV2RouterAddress
    joeV2RouterAddress = address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).factory() with:
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
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    joeV2PairAddress = ext_call.return_data[12 len 20]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if uint8(stor16):
        if not uint8(stor18[address(arg1)]):
            if not uint8(stor18[address(arg2)]):
                revert with 0, 'ERC20: lock now'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor20[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor20[address(arg2)]:
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

function cashoutAll() {
    if uint8(stor19.field_8):
        revert with 0, 'Distributing now!'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT:  creation from the zero address'
    if stor20[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if uint8(stor19.field_8):
        revert with 0, 'Distributing now!'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0xc8c3e4fe with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x3115213e with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
    if not this.address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[this.address] >= ext_call.return_data[0]:
        if ext_call.return_data[0] > balanceOf[address(this.address)]:
            revert with 0, 
                        32,
                        38,
                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                        0
        if balanceOf[address(this.address)] < ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[address(this.address)] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        if balanceOf[msg.sender] + ext_call.return_data[0] < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], this.address, msg.sender);
    else:
        if balanceOf[this.address] > balanceOf[address(this.address)]:
            revert with 0, 
                        32,
                        38,
                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                        0
        if balanceOf[address(this.address)] < balanceOf[this.address]:
            revert with 0, 17
        balanceOf[address(this.address)] -= balanceOf[this.address]
        if balanceOf[msg.sender] > !balanceOf[this.address]:
            revert with 0, 17
        if balanceOf[msg.sender] + balanceOf[this.address] < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] = balanceOf[msg.sender] + balanceOf[this.address]
        emit Transfer(balanceOf[this.address], this.address, msg.sender);
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._cashoutAllNodesReward(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b27e77b4(?) {
    require calldata.size - 4 >= 32
    if uint8(stor19.field_8):
        revert with 0, 'Distributing now!'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT:  creation from the zero address'
    if stor20[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if uint8(stor19.field_8):
        revert with 0, 'Distributing now!'
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0x70692c4c with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.0x6ee68a85 with:
            gas gas_remaining wei
           args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'MANIA CSHT: You don't have enough reward to cash out'
    if not this.address:
        revert with 0, 'ERC20: transfer from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: transfer to the zero address'
    if balanceOf[this.address] >= ext_call.return_data[0]:
        if ext_call.return_data[0] > balanceOf[address(this.address)]:
            revert with 0, 
                        32,
                        38,
                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                        0
        if balanceOf[address(this.address)] < ext_call.return_data[0]:
            revert with 0, 17
        balanceOf[address(this.address)] -= ext_call.return_data[0]
        if balanceOf[msg.sender] > !ext_call.return_data[0]:
            revert with 0, 17
        if balanceOf[msg.sender] + ext_call.return_data[0] < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], this.address, msg.sender);
    else:
        if balanceOf[this.address] > balanceOf[address(this.address)]:
            revert with 0, 
                        32,
                        38,
                        0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[ceil32(return_data.size) + 166 len 26] >> 48,
                        0
        if balanceOf[address(this.address)] < balanceOf[this.address]:
            revert with 0, 17
        balanceOf[address(this.address)] -= balanceOf[this.address]
        if balanceOf[msg.sender] > !balanceOf[this.address]:
            revert with 0, 17
        if balanceOf[msg.sender] + balanceOf[this.address] < balanceOf[msg.sender]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] = balanceOf[msg.sender] + balanceOf[this.address]
        emit Transfer(balanceOf[this.address], this.address, msg.sender);
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress._cashoutNodeReward(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
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
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
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
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function sub_c8c82737(?) {
    if not uint8(stor19.field_0):
        revert with 0, 'Not Start'
    if uint8(stor19.field_8):
        revert with 0, 'Distributing now!'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE CREATION:  creation from the zero address'
    if stor20[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'NODE CREATION: Blacklisted address'
    mem[100] = msg.sender
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress._getNodeNumberOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > stor11:
        revert with 0, 'NODE CREATION: Your node maxium was limited'
    require ext_code.size(nodeRewardManagerAddress)
    staticcall nodeRewardManagerAddress.nodePrice() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
        revert with 0, 'NODE CREATION: Balance too low for creation.'
    if not ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 96] = 26
        mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 224] = 26
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 352] = 30
                mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 416] = 30
                mem[(2 * ceil32(return_data.size)) + 448] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[(2 * ceil32(return_data.size)) + 480] = 38
                mem[(2 * ceil32(return_data.size)) + 512 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 550 len 26] >> 48,
                                0
                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                if balanceOf[this.address] > !ext_call.return_data[0]:
                    revert with 0, 17
                if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                mem[(2 * ceil32(return_data.size)) + 576] = 2
                mem[(2 * ceil32(return_data.size)) + 608] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 36
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                if not joeV2RouterAddress:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 34
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][stor7] = 10000
                mem[(4 * ceil32(return_data.size)) + 672] = 10000
                emit Approval(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], this.address, joeV2RouterAddress);
                mem[(4 * ceil32(return_data.size)) + 672] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 676] = 0
                mem[(4 * ceil32(return_data.size)) + 836] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 868
                t = (2 * ceil32(return_data.size)) + 608
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 868 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 672] = 30
                mem[(4 * ceil32(return_data.size)) + 704] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call teamAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 736] = 2
                mem[(4 * ceil32(return_data.size)) + 768] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 832
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = 10000
                emit Approval(10000, this.address, joeV2RouterAddress);
                mem[(6 * ceil32(return_data.size)) + 832] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 836] = 0
                mem[(6 * ceil32(return_data.size)) + 868] = 0
                mem[(6 * ceil32(return_data.size)) + 900] = 160
                mem[(6 * ceil32(return_data.size)) + 996] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 1028
                t = (4 * ceil32(return_data.size)) + 768
                while idx < mem[(4 * ceil32(return_data.size)) + 736]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 932] = this.address
                mem[(6 * ceil32(return_data.size)) + 964] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 736]) + -mem[64] + 1024]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1644 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1644] = 30
                mem[_1644 + 32] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call treasuryAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1700 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1700] = 26
                mem[_1700 + 32] = 'SafeMath: division by zero'
                _1708 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1708] = 30
                mem[_1708 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] / 2 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < ext_call.return_data[0] / 2:
                    revert with 0, 17
                _1762 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_1762 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_1762]:
                    revert with 0, 50
                mem[_1762 + 32] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[_1762 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1762 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_1762]:
                    revert with 0, 50
                mem[_1762 + 64] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] / 2):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] / 2) + 10000
                emit Approval(((ext_call.return_data[0] / 2) + 10000), this.address, joeV2RouterAddress);
                mem[_1762 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[_1762 + ceil32(return_data.size) + 100] = ext_call.return_data[0] / 2
                mem[_1762 + ceil32(return_data.size) + 132] = 0
                mem[_1762 + ceil32(return_data.size) + 164] = 160
                mem[_1762 + ceil32(return_data.size) + 260] = mem[_1762]
                idx = 0
                s = _1762 + ceil32(return_data.size) + 292
                t = _1762 + 32
                while idx < mem[_1762]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, ext_call.return_data[0]), 0, 160, address(this.address), block.timestamp, mem[_1762 + ceil32(return_data.size) + 260 len (32 * mem[_1762]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor7] = ext_call.return_data[0] - (ext_call.return_data[0] / 2)
                emit Approval((ext_call.return_data[0] - (ext_call.return_data[0] / 2)), this.address, joeV2RouterAddress);
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, ext_call.return_data[0] - (ext_call.return_data[0] / 2), 0, 0, msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0]), 0, ext_call.return_data[0] - (ext_call.return_data[0] / 2));
            else:
                if ext_call.return_data[0] and treasuryRate > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * treasuryRate / ext_call.return_data[0] != treasuryRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 224] = 26
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 352] = 30
                mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * treasuryRate / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < ext_call.return_data[0] * treasuryRate / 100:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 416] = 30
                mem[(2 * ceil32(return_data.size)) + 448] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) < 0:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[(2 * ceil32(return_data.size)) + 480] = 38
                mem[(2 * ceil32(return_data.size)) + 512 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 550 len 26] >> 48,
                                0
                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                if balanceOf[this.address] > !ext_call.return_data[0]:
                    revert with 0, 17
                if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                mem[(2 * ceil32(return_data.size)) + 576] = 2
                mem[(2 * ceil32(return_data.size)) + 608] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 36
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                if not joeV2RouterAddress:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 34
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][stor7] = 10000
                mem[(4 * ceil32(return_data.size)) + 672] = 10000
                emit Approval(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], this.address, joeV2RouterAddress);
                mem[(4 * ceil32(return_data.size)) + 672] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 676] = 0
                mem[(4 * ceil32(return_data.size)) + 836] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 868
                t = (2 * ceil32(return_data.size)) + 608
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 868 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 672] = 30
                mem[(4 * ceil32(return_data.size)) + 704] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call teamAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 736] = 2
                mem[(4 * ceil32(return_data.size)) + 768] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 832
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] * treasuryRate / 100):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] * treasuryRate / 100) + 10000
                emit Approval(((ext_call.return_data[0] * treasuryRate / 100) + 10000), this.address, joeV2RouterAddress);
                mem[(6 * ceil32(return_data.size)) + 832] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 836] = ext_call.return_data[0] * treasuryRate / 100
                mem[(6 * ceil32(return_data.size)) + 868] = 0
                mem[(6 * ceil32(return_data.size)) + 900] = 160
                mem[(6 * ceil32(return_data.size)) + 996] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 1028
                t = (4 * ceil32(return_data.size)) + 768
                while idx < mem[(4 * ceil32(return_data.size)) + 736]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 932] = this.address
                mem[(6 * ceil32(return_data.size)) + 964] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 736]) + -mem[64] + 1024]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1643 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1643] = 30
                mem[_1643 + 32] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call treasuryAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1699 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1699] = 26
                mem[_1699 + 32] = 'SafeMath: division by zero'
                _1707 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1707] = 30
                mem[_1707 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) / 2 > ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) < ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) / 2:
                    revert with 0, 17
                _1759 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_1759 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_1759]:
                    revert with 0, 50
                mem[_1759 + 32] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[_1759 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1759 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_1759]:
                    revert with 0, 50
                mem[_1759 + 64] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) / 2):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) / 2) + 10000
                emit Approval(((ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) / 2) + 10000), this.address, joeV2RouterAddress);
                mem[_1759 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[_1759 + ceil32(return_data.size) + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) / 2
                mem[_1759 + ceil32(return_data.size) + 132] = 0
                mem[_1759 + ceil32(return_data.size) + 164] = 160
                mem[_1759 + ceil32(return_data.size) + 260] = mem[_1759]
                idx = 0
                s = _1759 + ceil32(return_data.size) + 292
                t = _1759 + 32
                while idx < mem[_1759]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100)), 0, 160, address(this.address), block.timestamp, mem[_1759 + ceil32(return_data.size) + 260 len (32 * mem[_1759]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor7] = ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) / 2)
                emit Approval((ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) / 2)), this.address, joeV2RouterAddress);
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) / 2), 0, 0, msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100)), 0, ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) / 2));
        else:
            if ext_call.return_data[0] and teamRate > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * teamRate / ext_call.return_data[0] != teamRate:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 224] = 26
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * teamRate / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < ext_call.return_data[0] * teamRate / 100:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 352] = 30
                mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) < 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 416] = 30
                mem[(2 * ceil32(return_data.size)) + 448] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) < 0:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[(2 * ceil32(return_data.size)) + 480] = 38
                mem[(2 * ceil32(return_data.size)) + 512 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 550 len 26] >> 48,
                                0
                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                if balanceOf[this.address] > !ext_call.return_data[0]:
                    revert with 0, 17
                if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                mem[(2 * ceil32(return_data.size)) + 576] = 2
                mem[(2 * ceil32(return_data.size)) + 608] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] * teamRate / 100):
                    revert with 0, 17
                if not this.address:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 36
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                if not joeV2RouterAddress:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 34
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] * teamRate / 100) + 10000
                mem[(4 * ceil32(return_data.size)) + 672] = (ext_call.return_data[0] * teamRate / 100) + 10000
                emit Approval(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], this.address, joeV2RouterAddress);
                mem[(4 * ceil32(return_data.size)) + 672] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] * teamRate / 100
                mem[(4 * ceil32(return_data.size)) + 836] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 868
                t = (2 * ceil32(return_data.size)) + 608
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * teamRate / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 868 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 672] = 30
                mem[(4 * ceil32(return_data.size)) + 704] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call teamAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 736] = 2
                mem[(4 * ceil32(return_data.size)) + 768] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 832
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = 10000
                emit Approval(10000, this.address, joeV2RouterAddress);
                mem[(6 * ceil32(return_data.size)) + 832] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 836] = 0
                mem[(6 * ceil32(return_data.size)) + 868] = 0
                mem[(6 * ceil32(return_data.size)) + 900] = 160
                mem[(6 * ceil32(return_data.size)) + 996] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 1028
                t = (4 * ceil32(return_data.size)) + 768
                while idx < mem[(4 * ceil32(return_data.size)) + 736]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 932] = this.address
                mem[(6 * ceil32(return_data.size)) + 964] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 736]) + -mem[64] + 1024]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1642 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1642] = 30
                mem[_1642 + 32] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call treasuryAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1698 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1698] = 26
                mem[_1698 + 32] = 'SafeMath: division by zero'
                _1706 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1706] = 30
                mem[_1706 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) / 2 > ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) < ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) / 2:
                    revert with 0, 17
                _1756 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_1756 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_1756]:
                    revert with 0, 50
                mem[_1756 + 32] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[_1756 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1756 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_1756]:
                    revert with 0, 50
                mem[_1756 + 64] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) / 2):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) / 2) + 10000
                emit Approval(((ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) / 2) + 10000), this.address, joeV2RouterAddress);
                mem[_1756 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[_1756 + ceil32(return_data.size) + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) / 2
                mem[_1756 + ceil32(return_data.size) + 132] = 0
                mem[_1756 + ceil32(return_data.size) + 164] = 160
                mem[_1756 + ceil32(return_data.size) + 260] = mem[_1756]
                idx = 0
                s = _1756 + ceil32(return_data.size) + 292
                t = _1756 + 32
                while idx < mem[_1756]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1756 + ceil32(return_data.size) + 196] = this.address
                mem[_1756 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1756 + ceil32(return_data.size) + (32 * mem[_1756]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor7] = ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) / 2)
                emit Approval((ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) / 2)), this.address, joeV2RouterAddress);
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) / 2), 0, 0, msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100)), 0, ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) / 2));
            else:
                if ext_call.return_data[0] and treasuryRate > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * treasuryRate / ext_call.return_data[0] != treasuryRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 224] = 26
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * teamRate / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < ext_call.return_data[0] * teamRate / 100:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 352] = 30
                mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * treasuryRate / 100 > ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) < ext_call.return_data[0] * treasuryRate / 100:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 416] = 30
                mem[(2 * ceil32(return_data.size)) + 448] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) < 0:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[(2 * ceil32(return_data.size)) + 480] = 38
                mem[(2 * ceil32(return_data.size)) + 512 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 550 len 26] >> 48,
                                0
                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                if balanceOf[this.address] > !ext_call.return_data[0]:
                    revert with 0, 17
                if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                mem[(2 * ceil32(return_data.size)) + 576] = 2
                mem[(2 * ceil32(return_data.size)) + 608] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] * teamRate / 100):
                    revert with 0, 17
                if not this.address:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 36
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                if not joeV2RouterAddress:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 34
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] * teamRate / 100) + 10000
                mem[(4 * ceil32(return_data.size)) + 672] = (ext_call.return_data[0] * teamRate / 100) + 10000
                emit Approval(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], this.address, joeV2RouterAddress);
                mem[(4 * ceil32(return_data.size)) + 672] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] * teamRate / 100
                mem[(4 * ceil32(return_data.size)) + 836] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 868
                t = (2 * ceil32(return_data.size)) + 608
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * teamRate / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 868 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 672] = 30
                mem[(4 * ceil32(return_data.size)) + 704] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call teamAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 736] = 2
                mem[(4 * ceil32(return_data.size)) + 768] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 832
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] * treasuryRate / 100):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] * treasuryRate / 100) + 10000
                emit Approval(((ext_call.return_data[0] * treasuryRate / 100) + 10000), this.address, joeV2RouterAddress);
                mem[(6 * ceil32(return_data.size)) + 832] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 836] = ext_call.return_data[0] * treasuryRate / 100
                mem[(6 * ceil32(return_data.size)) + 868] = 0
                mem[(6 * ceil32(return_data.size)) + 900] = 160
                mem[(6 * ceil32(return_data.size)) + 996] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 1028
                t = (4 * ceil32(return_data.size)) + 768
                while idx < mem[(4 * ceil32(return_data.size)) + 736]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 932] = this.address
                mem[(6 * ceil32(return_data.size)) + 964] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 736]) + -mem[64] + 1024]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1641 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1641] = 30
                mem[_1641 + 32] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call treasuryAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1697 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1697] = 26
                mem[_1697 + 32] = 'SafeMath: division by zero'
                _1705 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1705] = 30
                mem[_1705 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) / 2 > ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) < ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) / 2:
                    revert with 0, 17
                _1753 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_1753 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_1753]:
                    revert with 0, 50
                mem[_1753 + 32] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[_1753 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1753 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_1753]:
                    revert with 0, 50
                mem[_1753 + 64] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) / 2):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) / 2) + 10000
                emit Approval(((ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) / 2) + 10000), this.address, joeV2RouterAddress);
                mem[_1753 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[_1753 + ceil32(return_data.size) + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) / 2
                mem[_1753 + ceil32(return_data.size) + 132] = 0
                mem[_1753 + ceil32(return_data.size) + 164] = 160
                mem[_1753 + ceil32(return_data.size) + 260] = mem[_1753]
                idx = 0
                s = _1753 + ceil32(return_data.size) + 292
                t = _1753 + 32
                while idx < mem[_1753]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1753 + ceil32(return_data.size) + 196] = this.address
                mem[_1753 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1753 + ceil32(return_data.size) + (32 * mem[_1753]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor7] = ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) / 2)
                emit Approval((ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) / 2)), this.address, joeV2RouterAddress);
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) / 2), 0, 0, msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100)), 0, ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) / 2));
    else:
        if ext_call.return_data[0] and sub_366d5ada > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if ext_call.return_data[0] * sub_366d5ada / ext_call.return_data[0] != sub_366d5ada:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(2 * ceil32(return_data.size)) + 96] = 26
        mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 224] = 26
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 352] = 30
                mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 416] = 30
                mem[(2 * ceil32(return_data.size)) + 448] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * sub_366d5ada / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < ext_call.return_data[0] * sub_366d5ada / 100:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[(2 * ceil32(return_data.size)) + 480] = 38
                mem[(2 * ceil32(return_data.size)) + 512 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 550 len 26] >> 48,
                                0
                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                if balanceOf[this.address] > !ext_call.return_data[0]:
                    revert with 0, 17
                if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                mem[(2 * ceil32(return_data.size)) + 576] = 2
                mem[(2 * ceil32(return_data.size)) + 608] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 36
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                if not joeV2RouterAddress:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 34
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][stor7] = 10000
                mem[(4 * ceil32(return_data.size)) + 672] = 10000
                emit Approval(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], this.address, joeV2RouterAddress);
                mem[(4 * ceil32(return_data.size)) + 672] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 676] = 0
                mem[(4 * ceil32(return_data.size)) + 836] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 868
                t = (2 * ceil32(return_data.size)) + 608
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 868 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 672] = 30
                mem[(4 * ceil32(return_data.size)) + 704] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call teamAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 736] = 2
                mem[(4 * ceil32(return_data.size)) + 768] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 832
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = 10000
                emit Approval(10000, this.address, joeV2RouterAddress);
                mem[(6 * ceil32(return_data.size)) + 832] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 836] = 0
                mem[(6 * ceil32(return_data.size)) + 868] = 0
                mem[(6 * ceil32(return_data.size)) + 900] = 160
                mem[(6 * ceil32(return_data.size)) + 996] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 1028
                t = (4 * ceil32(return_data.size)) + 768
                while idx < mem[(4 * ceil32(return_data.size)) + 736]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 932] = this.address
                mem[(6 * ceil32(return_data.size)) + 964] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 736]) + -mem[64] + 1024]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1640 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1640] = 30
                mem[_1640 + 32] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call treasuryAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1696 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1696] = 26
                mem[_1696 + 32] = 'SafeMath: division by zero'
                _1704 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1704] = 30
                mem[_1704 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) / 2 > ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) < ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) / 2:
                    revert with 0, 17
                _1750 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_1750 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_1750]:
                    revert with 0, 50
                mem[_1750 + 32] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[_1750 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1750 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_1750]:
                    revert with 0, 50
                mem[_1750 + 64] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) / 2):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) / 2) + 10000
                emit Approval(((ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) / 2) + 10000), this.address, joeV2RouterAddress);
                mem[_1750 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[_1750 + ceil32(return_data.size) + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) / 2
                mem[_1750 + ceil32(return_data.size) + 132] = 0
                mem[_1750 + ceil32(return_data.size) + 164] = 160
                mem[_1750 + ceil32(return_data.size) + 260] = mem[_1750]
                idx = 0
                s = _1750 + ceil32(return_data.size) + 292
                t = _1750 + 32
                while idx < mem[_1750]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1750 + ceil32(return_data.size) + 196] = this.address
                mem[_1750 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1750 + ceil32(return_data.size) + (32 * mem[_1750]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor7] = ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) / 2)
                emit Approval((ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) / 2)), this.address, joeV2RouterAddress);
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) / 2), 0, 0, msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100)), 0, ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * sub_366d5ada / 100) / 2));
            else:
                if ext_call.return_data[0] and treasuryRate > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * treasuryRate / ext_call.return_data[0] != treasuryRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 224] = 26
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 352] = 30
                mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * treasuryRate / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < ext_call.return_data[0] * treasuryRate / 100:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 416] = 30
                mem[(2 * ceil32(return_data.size)) + 448] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * sub_366d5ada / 100 > ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) < ext_call.return_data[0] * sub_366d5ada / 100:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[(2 * ceil32(return_data.size)) + 480] = 38
                mem[(2 * ceil32(return_data.size)) + 512 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 550 len 26] >> 48,
                                0
                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                if balanceOf[this.address] > !ext_call.return_data[0]:
                    revert with 0, 17
                if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                mem[(2 * ceil32(return_data.size)) + 576] = 2
                mem[(2 * ceil32(return_data.size)) + 608] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[12 len 20]
                if not this.address:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 36
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                if not joeV2RouterAddress:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 34
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][stor7] = 10000
                mem[(4 * ceil32(return_data.size)) + 672] = 10000
                emit Approval(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], this.address, joeV2RouterAddress);
                mem[(4 * ceil32(return_data.size)) + 672] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 676] = 0
                mem[(4 * ceil32(return_data.size)) + 836] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 868
                t = (2 * ceil32(return_data.size)) + 608
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args 0, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 868 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 672] = 30
                mem[(4 * ceil32(return_data.size)) + 704] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call teamAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 736] = 2
                mem[(4 * ceil32(return_data.size)) + 768] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 832
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] * treasuryRate / 100):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] * treasuryRate / 100) + 10000
                emit Approval(((ext_call.return_data[0] * treasuryRate / 100) + 10000), this.address, joeV2RouterAddress);
                mem[(6 * ceil32(return_data.size)) + 832] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 836] = ext_call.return_data[0] * treasuryRate / 100
                mem[(6 * ceil32(return_data.size)) + 868] = 0
                mem[(6 * ceil32(return_data.size)) + 900] = 160
                mem[(6 * ceil32(return_data.size)) + 996] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 1028
                t = (4 * ceil32(return_data.size)) + 768
                while idx < mem[(4 * ceil32(return_data.size)) + 736]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 932] = this.address
                mem[(6 * ceil32(return_data.size)) + 964] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 736]) + -mem[64] + 1024]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1639 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1639] = 30
                mem[_1639 + 32] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call treasuryAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1695 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1695] = 26
                mem[_1695 + 32] = 'SafeMath: division by zero'
                _1703 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1703] = 30
                mem[_1703 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2 > ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) < ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2:
                    revert with 0, 17
                _1747 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_1747 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_1747]:
                    revert with 0, 50
                mem[_1747 + 32] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[_1747 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1747 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_1747]:
                    revert with 0, 50
                mem[_1747 + 64] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2) + 10000
                emit Approval(((ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2) + 10000), this.address, joeV2RouterAddress);
                mem[_1747 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[_1747 + ceil32(return_data.size) + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2
                mem[_1747 + ceil32(return_data.size) + 132] = 0
                mem[_1747 + ceil32(return_data.size) + 164] = 160
                mem[_1747 + ceil32(return_data.size) + 260] = mem[_1747]
                idx = 0
                s = _1747 + ceil32(return_data.size) + 292
                t = _1747 + 32
                while idx < mem[_1747]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100)), 0, 160, address(this.address), block.timestamp, mem[_1747 + ceil32(return_data.size) + 260 len (32 * mem[_1747]) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor7] = ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2)
                emit Approval((ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2)), this.address, joeV2RouterAddress);
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2), 0, 0, msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100)), 0, ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2));
        else:
            if ext_call.return_data[0] and teamRate > -1 / ext_call.return_data[0]:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if ext_call.return_data[0] * teamRate / ext_call.return_data[0] != teamRate:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                mem[(2 * ceil32(return_data.size)) + 224] = 26
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * teamRate / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < ext_call.return_data[0] * teamRate / 100:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 352] = 30
                mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: subtraction overflow'
                if 0 > ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) < 0:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 416] = 30
                mem[(2 * ceil32(return_data.size)) + 448] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * sub_366d5ada / 100 > ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) < ext_call.return_data[0] * sub_366d5ada / 100:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[(2 * ceil32(return_data.size)) + 480] = 38
                mem[(2 * ceil32(return_data.size)) + 512 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 550 len 26] >> 48,
                                0
                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                if balanceOf[this.address] > !ext_call.return_data[0]:
                    revert with 0, 17
                if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                mem[(2 * ceil32(return_data.size)) + 576] = 2
                mem[(2 * ceil32(return_data.size)) + 608] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] * teamRate / 100):
                    revert with 0, 17
                if not this.address:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 36
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                if not joeV2RouterAddress:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 34
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] * teamRate / 100) + 10000
                mem[(4 * ceil32(return_data.size)) + 672] = (ext_call.return_data[0] * teamRate / 100) + 10000
                emit Approval(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], this.address, joeV2RouterAddress);
                mem[(4 * ceil32(return_data.size)) + 672] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] * teamRate / 100
                mem[(4 * ceil32(return_data.size)) + 836] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 868
                t = (2 * ceil32(return_data.size)) + 608
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * teamRate / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 868 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 672] = 30
                mem[(4 * ceil32(return_data.size)) + 704] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call teamAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 736] = 2
                mem[(4 * ceil32(return_data.size)) + 768] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 832
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = 10000
                emit Approval(10000, this.address, joeV2RouterAddress);
                mem[(6 * ceil32(return_data.size)) + 832] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 836] = 0
                mem[(6 * ceil32(return_data.size)) + 868] = 0
                mem[(6 * ceil32(return_data.size)) + 900] = 160
                mem[(6 * ceil32(return_data.size)) + 996] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 1028
                t = (4 * ceil32(return_data.size)) + 768
                while idx < mem[(4 * ceil32(return_data.size)) + 736]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 932] = this.address
                mem[(6 * ceil32(return_data.size)) + 964] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 736]) + -mem[64] + 1024]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1638 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1638] = 30
                mem[_1638 + 32] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call treasuryAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1694 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1694] = 26
                mem[_1694 + 32] = 'SafeMath: division by zero'
                _1702 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1702] = 30
                mem[_1702 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2 > ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) < ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2:
                    revert with 0, 17
                _1744 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_1744 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_1744]:
                    revert with 0, 50
                mem[_1744 + 32] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[_1744 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1744 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_1744]:
                    revert with 0, 50
                mem[_1744 + 64] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2) + 10000
                emit Approval(((ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2) + 10000), this.address, joeV2RouterAddress);
                mem[_1744 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[_1744 + ceil32(return_data.size) + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2
                mem[_1744 + ceil32(return_data.size) + 132] = 0
                mem[_1744 + ceil32(return_data.size) + 164] = 160
                mem[_1744 + ceil32(return_data.size) + 260] = mem[_1744]
                idx = 0
                s = _1744 + ceil32(return_data.size) + 292
                t = _1744 + 32
                while idx < mem[_1744]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1744 + ceil32(return_data.size) + 196] = this.address
                mem[_1744 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1744 + ceil32(return_data.size) + (32 * mem[_1744]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor7] = ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2)
                emit Approval((ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2)), this.address, joeV2RouterAddress);
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2), 0, 0, msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100)), 0, ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2));
            else:
                if ext_call.return_data[0] and treasuryRate > -1 / ext_call.return_data[0]:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if ext_call.return_data[0] * treasuryRate / ext_call.return_data[0] != treasuryRate:
                    revert with 0, 'SafeMath: multiplication overflow'
                mem[(2 * ceil32(return_data.size)) + 224] = 26
                mem[(2 * ceil32(return_data.size)) + 256] = 'SafeMath: division by zero'
                mem[(2 * ceil32(return_data.size)) + 288] = 30
                mem[(2 * ceil32(return_data.size)) + 320] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * teamRate / 100 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] < ext_call.return_data[0] * teamRate / 100:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 352] = 30
                mem[(2 * ceil32(return_data.size)) + 384] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * treasuryRate / 100 > ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) < ext_call.return_data[0] * treasuryRate / 100:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 416] = 30
                mem[(2 * ceil32(return_data.size)) + 448] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] * sub_366d5ada / 100 > ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) < ext_call.return_data[0] * sub_366d5ada / 100:
                    revert with 0, 17
                if not msg.sender:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not this.address:
                    revert with 0, 'ERC20: transfer to the zero address'
                mem[(2 * ceil32(return_data.size)) + 480] = 38
                mem[(2 * ceil32(return_data.size)) + 512 len 38] = 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63
                if ext_call.return_data[0] > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[(2 * ceil32(return_data.size)) + 550 len 26] >> 48,
                                0
                if balanceOf[address(msg.sender)] < ext_call.return_data[0]:
                    revert with 0, 17
                balanceOf[address(msg.sender)] -= ext_call.return_data[0]
                if balanceOf[this.address] > !ext_call.return_data[0]:
                    revert with 0, 17
                if balanceOf[this.address] + ext_call.return_data[0] < balanceOf[this.address]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(this.address)] = balanceOf[this.address] + ext_call.return_data[0]
                emit Transfer(ext_call.return_data[0], msg.sender, this.address);
                mem[(2 * ceil32(return_data.size)) + 576] = 2
                mem[(2 * ceil32(return_data.size)) + 608] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(2 * ceil32(return_data.size)) + 672] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(2 * ceil32(return_data.size)) + 640] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] * teamRate / 100):
                    revert with 0, 17
                if not this.address:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 36
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve from the zero add'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7265737300000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                if not joeV2RouterAddress:
                    mem[(4 * ceil32(return_data.size)) + 672] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[(4 * ceil32(return_data.size)) + 676] = 32
                    mem[(4 * ceil32(return_data.size)) + 708] = 34
                    mem[(4 * ceil32(return_data.size)) + 740] = 'ERC20: approve to the zero addre'
                    mem[(4 * ceil32(return_data.size)) + 772] = 0x7373000000000000000000000000000000000000000000000000000000000000
                    revert with memory
                      from (4 * ceil32(return_data.size)) + 672
                       len (5 * ceil32(return_data.size)) + 132
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] * teamRate / 100) + 10000
                mem[(4 * ceil32(return_data.size)) + 672] = (ext_call.return_data[0] * teamRate / 100) + 10000
                emit Approval(mem[(4 * ceil32(return_data.size)) + 672 len (5 * ceil32(return_data.size)) + 32], this.address, joeV2RouterAddress);
                mem[(4 * ceil32(return_data.size)) + 672] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 676] = ext_call.return_data[0] * teamRate / 100
                mem[(4 * ceil32(return_data.size)) + 836] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 868
                t = (2 * ceil32(return_data.size)) + 608
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0] * teamRate / 100, 0, 160, address(this.address), block.timestamp, 2, mem[(4 * ceil32(return_data.size)) + 868 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 672] = 30
                mem[(4 * ceil32(return_data.size)) + 704] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call teamAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 736] = 2
                mem[(4 * ceil32(return_data.size)) + 768] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[(4 * ceil32(return_data.size)) + 832] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 832
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[(4 * ceil32(return_data.size)) + 800] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] * treasuryRate / 100):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] * treasuryRate / 100) + 10000
                emit Approval(((ext_call.return_data[0] * treasuryRate / 100) + 10000), this.address, joeV2RouterAddress);
                mem[(6 * ceil32(return_data.size)) + 832] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[(6 * ceil32(return_data.size)) + 836] = ext_call.return_data[0] * treasuryRate / 100
                mem[(6 * ceil32(return_data.size)) + 868] = 0
                mem[(6 * ceil32(return_data.size)) + 900] = 160
                mem[(6 * ceil32(return_data.size)) + 996] = 2
                idx = 0
                s = (6 * ceil32(return_data.size)) + 1028
                t = (4 * ceil32(return_data.size)) + 768
                while idx < mem[(4 * ceil32(return_data.size)) + 736]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(6 * ceil32(return_data.size)) + 932] = this.address
                mem[(6 * ceil32(return_data.size)) + 964] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + 736]) + -mem[64] + 1024]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1637 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1637] = 30
                mem[_1637 + 32] = 'SafeMath: subtraction overflow'
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                call treasuryAddress with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1693 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1693] = 26
                mem[_1693 + 32] = 'SafeMath: division by zero'
                _1701 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1701] = 30
                mem[_1701 + 32] = 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2 > ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) < ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2:
                    revert with 0, 17
                _1741 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_1741 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_1741]:
                    revert with 0, 50
                mem[_1741 + 32] = this.address
                require ext_code.size(joeV2RouterAddress)
                staticcall joeV2RouterAddress.0x73b295c2 with:
                        gas gas_remaining wei
                mem[_1741 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1741 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_1741]:
                    revert with 0, 50
                mem[_1741 + 64] = ext_call.return_data[12 len 20]
                if 10000 > !(ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = joeV2RouterAddress
                mem[32] = sha3(address(this.address), 1)
                allowance[address(this.address)][stor7] = (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2) + 10000
                emit Approval(((ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2) + 10000), this.address, joeV2RouterAddress);
                mem[_1741 + ceil32(return_data.size) + 96] = 0x762b156200000000000000000000000000000000000000000000000000000000
                mem[_1741 + ceil32(return_data.size) + 100] = ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2
                mem[_1741 + ceil32(return_data.size) + 132] = 0
                mem[_1741 + ceil32(return_data.size) + 164] = 160
                mem[_1741 + ceil32(return_data.size) + 260] = mem[_1741]
                idx = 0
                s = _1741 + ceil32(return_data.size) + 292
                t = _1741 + 32
                while idx < mem[_1741]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_1741 + ceil32(return_data.size) + 196] = this.address
                mem[_1741 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _1741 + ceil32(return_data.size) + (32 * mem[_1741]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not joeV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor7] = ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2)
                emit Approval((ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2)), this.address, joeV2RouterAddress);
                require ext_code.size(joeV2RouterAddress)
                call joeV2RouterAddress.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                     gas gas_remaining wei
                    args this.address, ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2), 0, 0, msg.sender, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(Mask(255, 1, ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100)), 0, ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) - (ext_call.return_data[0] - (ext_call.return_data[0] * teamRate / 100) - (ext_call.return_data[0] * treasuryRate / 100) - (ext_call.return_data[0] * sub_366d5ada / 100) / 2));
    require ext_code.size(nodeRewardManagerAddress)
    call nodeRewardManagerAddress.0x5c6dc219 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
