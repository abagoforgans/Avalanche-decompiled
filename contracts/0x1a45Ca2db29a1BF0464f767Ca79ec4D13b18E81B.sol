contract main {




// =====================  Runtime code  =====================


const getBalanceContract = eth.balance(this.address)

const getMsgSender = msg.sender


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint8 decimals;
array of uint256 symbol;
array of uint256 name;
array of uint256 sub_689c711a;
uint256 withdrawLimit;
uint256 transactionFee;
uint256 sub_2c7c780c;
uint256 sub_ce574286;
uint256 stor14;
uint256 sub_fe35505b;
uint256 sub_dcc35187;
uint256 sub_4dc35bb1;
mapping of address stor18;
array of struct stor19;
mapping of uint256 sub_a7d12a2e;
mapping of uint256 sub_a34a068d;
uint8 sub_1d46b9dc;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1d46b9dc(?) {
    return bool(sub_1d46b9dc)
}

function sub_2c7c780c(?) {
    return sub_2c7c780c
}

function decimals() {
    return decimals
}

function sub_4dc35bb1(?) {
    return sub_4dc35bb1
}

function sub_689c711a(?) {
    return sub_689c711a[address(arg1)][0 len sub_689c711a[address(arg1)].length]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getTransactionFee() {
    return transactionFee
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a34a068d(?) {
    require calldata.size - 4 >= 32
    return sub_a34a068d[arg1]
}

function getWithdrawLimit() {
    return withdrawLimit
}

function sub_a7d12a2e(?) {
    require calldata.size - 4 >= 32
    return sub_a7d12a2e[arg1]
}

function sub_ce574286(?) {
    return sub_ce574286
}

function sub_dcc35187(?) {
    return sub_dcc35187
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_fe35505b(?) {
    return sub_fe35505b
}

function _fallback() payable {
    revert
}

function sub_0932f3ac(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dcc35187 = arg1
}

function sub_1647567a(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4dc35bb1 = arg1
}

function sub_39afc9cc(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ce574286 = 10^18 * arg1
}

function setWithdrawLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    withdrawLimit = arg1
}

function setTransactionFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    transactionFee = arg1
}

function setMaxStake(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_fe35505b = 10^18 * arg1
}

function StakeStatusChange(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(sub_1d46b9dc) == arg1:
        revert with 0, 'Stake Status No Change!'
    sub_1d46b9dc = uint8(arg1)
    return 1
}

function burnToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 > 0
    if balanceOf[address(msg.sender)] <= arg1:
        revert with 0, 'Insufficient coin count'
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit TokenBurn(arg1, msg.sender);
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, 'approve from the zero address'
    if not arg1:
        revert with 0, 'approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0, 'approve from the zero address'
    if not arg1:
        revert with 0, 'approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 36, 0x65415641583a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[164 len 28], mem[220 len 4]
    if not msg.sender:
        revert with 0, 'approve from the zero address'
    if not arg1:
        revert with 0, 'approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not msg.sender:
        revert with 0, 'AVAX: mint to the zero address'
    if totalSupply + (10^18 * arg1) < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 10^18 * arg1
    if balanceOf[address(msg.sender)] + (10^18 * arg1) < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += 10^18 * arg1
    emit Transfer((10^18 * arg1), 0, msg.sender);
    return 1
}

function sub_57ea4caf(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.value <= transactionFee:
        revert with 0, 'Transaction Fee Very Low'
    if arg1 >= withdrawLimit:
        revert with 0, 'Withdraw Limit Exceeded'
    if not msg.sender:
        revert with 0, 'sender is the zero address'
    if 10^18 * arg1 > balanceOf[stor0]:
        revert with 0, 'transfer amount exceeds balance'
    balanceOf[stor0] += -1 * 10^18 * arg1
    if balanceOf[address(msg.sender)] + (10^18 * arg1) < balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(msg.sender)] += 10^18 * arg1
    sub_689c711a[address(msg.sender)][] = Array(len=arg2.length, data=arg2[all])
    emit Transfer((10^18 * arg1), owner, msg.sender);
    emit 0x9e87a623: 10^18 * arg1, Array(len=arg2.length, data=arg2[all]), arg3, owner, msg.sender
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe415641583a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f415641583a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    37,
                    0x73415641583a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[165 len 27],
                    mem[219 len 5]
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFromTo(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'AVAX: zero address'
    if not arg2:
        revert with 0, 'AVAX: zero address'
    if arg3 <= 0:
        revert with 0, 'AVAX: amounts zero'
    if balanceOf[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73415641583a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[201 len 27]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x73415641583a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[165 len 27],
                    mem[219 len 5]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 0
}

function sub_b288b067(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + ('cd', 36).length + 36 <= calldata.size
    if bool(sub_1d46b9dc) != 1:
        revert with 0, 'Stake Off'
    if balanceOf[address(msg.sender)] < 10^18 * cd[4]:
        revert with 0, 'Insufficient Coin Count'
    if sub_2c7c780c > sub_ce574286:
        revert with 0, 'Maximum current stake exceeded'
    if msg.value < sub_4dc35bb1:
        revert with 0, 'Transaction Fee Very Low'
    if 10^18 * cd[4] < stor14:
        revert with 0, 'Amount Stake Low'
    if 10^18 * cd[4] > sub_fe35505b:
        revert with 0, 'Stakes Limit Exceeded'
    sub_2c7c780c += 10^18 * cd[4]
    stor18[block.timestamp] = msg.sender
    stor19[block.timestamp].field_0 = (2 * ('cd', 36).length) + 1
    s = 0
    idx = cd[36] + 36
    while cd[36] + ('cd', 36).length + 36 > idx:
        stor19[block.timestamp][s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
    while stor19[block.timestamp].length + 31 / 32 > idx:
        stor19[block.timestamp][idx].field_0 = 0
        idx = idx + 1
        continue 
    sub_a7d12a2e[block.timestamp] = 10^18 * cd[4]
    sub_a34a068d[block.timestamp] = sub_dcc35187
    balanceOf[address(msg.sender)] += -1 * 10^18 * cd[4]
    totalSupply += -1 * 10^18 * cd[4]
    emit 0xd15758df: 10^18 * cd[4], block.timestamp, Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len ('cd', 36).length]), sub_dcc35187, msg.sender
    emit Transfer((10^18 * cd[4]), msg.sender, 0);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe415641583a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f415641583a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x73415641583a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[165 len 27],
                    mem[219 len 5]
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    39,
                    0x73415641583a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[263 len 25],
                    mem[313 len 7]
    if not arg1:
        revert with 0, 'approve from the zero address'
    if not msg.sender:
        revert with 0, 'approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_268b15ed(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    if msg.value < sub_4dc35bb1:
        revert with 0, 'Transaction Fee Very Low'
    if stor18[arg1] != msg.sender:
        revert with 0, 'Address did not match Time'
    mem[arg2.length + 160] = stor19[arg1].field_0
    idx = arg2.length + 160
    s = 0
    while arg2.length + stor19[arg1].length + 128 > idx:
        mem[idx + 32] = stor19[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[arg2.length + 160 len stor19[arg1].length]) != sha3(arg2[all]):
        revert with 0, 'ID did not match Time'
    require sub_a34a068d[arg1]
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (sub_a7d12a2e[arg1] / sub_a34a068d[arg1] * block.timestamp - arg1 - (block.timestamp - arg1 % 24 * 3600) / 24 * 3600) + sub_a7d12a2e[arg1]
    totalSupply = totalSupply + (sub_a7d12a2e[arg1] / sub_a34a068d[arg1] * block.timestamp - arg1 - (block.timestamp - arg1 % 24 * 3600) / 24 * 3600) + sub_a7d12a2e[arg1]
    sub_a7d12a2e[arg1] = 0
    sub_2c7c780c -= sub_a7d12a2e[arg1]
    emit Transfer(((sub_a7d12a2e[arg1] / sub_a34a068d[arg1] * block.timestamp - arg1 - (block.timestamp - arg1 % 24 * 3600) / 24 * 3600) + sub_a7d12a2e[arg1]), 0, msg.sender);
    emit 0xbff291f8: (sub_a7d12a2e[arg1] / sub_a34a068d[arg1] * block.timestamp - arg1 - (block.timestamp - arg1 % 24 * 3600) / 24 * 3600) + sub_a7d12a2e[arg1], arg1, Array(len=arg2.length, data=arg2[all]), block.timestamp, block.timestamp - arg1 - (block.timestamp - arg1 % 24 * 3600), block.timestamp - arg1 % 24 * 3600, block.timestamp - arg1 - (block.timestamp - arg1 % 24 * 3600) / 24 * 3600, msg.sender
    return 1
}



}
