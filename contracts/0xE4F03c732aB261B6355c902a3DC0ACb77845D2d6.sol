contract main {




// =====================  Runtime code  =====================


#
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
address _uniswapV2RouterAddress;
address _uniswapV2PairAddress;
address _treasuryAddress;
uint8 sub_30029217; offset 160
uint8 sub_7cf4b90f; offset 168
uint8 sub_1b7b84a2; offset 176
uint8 _isLaunched; offset 184
uint128 stor12; offset 176
uint128 stor12; offset 160
address sub_07b03f03Address;
uint256 _launchTime;
uint256 sub_8956dc3d;
uint256 sub_207a3c47;
uint256 sub_065b97b1;

function sub_065b97b1(?) {
    return sub_065b97b1
}

function sub_07b03f03(?) {
    return sub_07b03f03Address
}

function _launchTime() {
    return _launchTime
}

function totalSupply() {
    return totalSupply
}

function sub_1b7b84a2(?) {
    return bool(sub_1b7b84a2)
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function sub_207a3c47(?) {
    return sub_207a3c47
}

function sub_30029217(?) {
    return bool(sub_30029217)
}

function _uniswapV2Router() {
    return _uniswapV2RouterAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function sub_7cf4b90f(?) {
    return bool(sub_7cf4b90f)
}

function sub_8956dc3d(?) {
    return sub_8956dc3d
}

function owner() {
    return owner
}

function _uniswapV2Pair() {
    return _uniswapV2PairAddress
}

function _isLaunched() {
    return bool(_isLaunched)
}

function sub_d5d31abe(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function _treasury() {
    return _treasuryAddress
}

function sub_6c83a2d4(?) {
    if bool(stor8[msg.sender]) != 1:
        revert with 0, 'NOT MANAGER'
    _launchTime = block.timestamp
    _isLaunched = 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPolicy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_07b03f03Address = arg1
}

function setManager(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = uint8(arg2)
}

function sub_72336652(?) {
    require calldata.size - 4 >= 64
    require arg1 < 9
    require arg2 == address(arg2)
    if bool(stor8[msg.sender]) != 1:
        revert with 0, 'NOT MANAGER'
    if arg1 > 8:
        revert with 0, 33
    if arg1 == 8:
        _treasuryAddress = address(arg2)
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

function sub_fd364d19(?) {
    require calldata.size - 4 >= 64
    require arg1 < 9
    require arg2 == bool(arg2)
    if bool(stor8[msg.sender]) != 1:
        revert with 0, 'NOT MANAGER'
    if arg1 > 8:
        revert with 0, 33
    if arg1 == 3:
        Mask(96, 0, stor12.field_160) = Mask(96, 0, bool(arg2))
    else:
        if arg1 > 8:
            revert with 0, 33
        if arg1 == 4:
            Mask(80, 0, stor12.field_176) = Mask(80, 0, bool(arg2))
}

function sub_d219e26d(?) {
    require calldata.size - 4 >= 96
    require arg1 < 9
    require arg2 == address(arg2)
    require arg3 == bool(arg3)
    if bool(stor8[msg.sender]) != 1:
        revert with 0, 'NOT MANAGER'
    if arg1 > 8:
        revert with 0, 33
    if not arg1:
        stor6[address(arg2)] = uint8(bool(arg3))
    else:
        if arg1 > 8:
            revert with 0, 33
        if arg1 == 1:
            stor7[address(arg2)] = uint8(bool(arg3))
}

function sub_71cec707(?) {
    require calldata.size - 4 >= 64
    require arg1 < 9
    if bool(stor8[msg.sender]) != 1:
        revert with 0, 'NOT MANAGER'
    if arg1 > 8:
        revert with 0, 33
    if arg1 == 5:
        sub_065b97b1 = arg2
    else:
        if arg1 > 8:
            revert with 0, 33
        if arg1 == 7:
            sub_8956dc3d = arg2
        else:
            if arg1 > 8:
                revert with 0, 33
            if arg1 == 6:
                sub_207a3c47 = arg2
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
    if sub_07b03f03Address != msg.sender:
        revert with 0, 'NOT ALLOWED'
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not _isLaunched:
        if not stor7[address(arg1)]:
            revert with 0, 'OPEC: TRANSFER NOT LAUCHED YET'
    if stor6[address(arg1)]:
        revert with 0, 'OPEC: TRANSFER BLACKLIST'
    if stor6[address(arg2)]:
        revert with 0, 'OPEC: TRANSFER BLACKLIST'
    if not arg1:
        revert with 0, 'OPEC: TRANSFER FROM ZERO ADDRESS'
    if not arg2:
        revert with 0, 'OPEC: TRANSFER TO ZERO ADDRESS'
    if not stor7[address(arg2)]:
        if sub_1b7b84a2:
            if arg3 > !balanceOf[address(arg2)]:
                revert with 0, 17
            if arg3 + balanceOf[address(arg2)] > sub_8956dc3d:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OPEC: TRANSFER RECIPIENT BALANCE LIMIT'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[this.address] > !arg3:
        revert with 0, 17
    if balanceOf[this.address] + arg3 < balanceOf[this.address]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(this.address)] = balanceOf[this.address] + arg3
    emit Transfer(arg3, arg1, this.address);
    if not sub_30029217:
        if not this.address:
            revert with 0, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0, 'ERC20: transfer to the zero address'
        if arg3 > balanceOf[address(this.address)]:
            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
        if balanceOf[address(this.address)] < arg3:
            revert with 0, 17
        balanceOf[address(this.address)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        if balanceOf[arg2] + arg3 < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = balanceOf[arg2] + arg3
        emit Transfer(arg3, this.address, arg2);
        if not balanceOf[this.address]:
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
        else:
            if not this.address:
                revert with 0, 'ERC20: transfer from the zero address'
            if not _treasuryAddress:
                revert with 0, 'ERC20: transfer to the zero address'
            if balanceOf[this.address] > balanceOf[address(this.address)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
            if balanceOf[address(this.address)] < balanceOf[this.address]:
                revert with 0, 17
            balanceOf[address(this.address)] -= balanceOf[this.address]
            if balanceOf[stor11] > !balanceOf[this.address]:
                revert with 0, 17
            if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[stor11] += balanceOf[this.address]
            emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
    else:
        if block.timestamp < _launchTime:
            revert with 0, 17
        if block.timestamp - _launchTime / 24 * 3600 <= 4:
            if stor7[address(arg1)]:
                if sub_1b7b84a2:
                    if _uniswapV2PairAddress == arg1:
                        if not stor7[address(arg2)]:
                            if block.timestamp < _launchTime:
                                revert with 0, 17
                            if block.timestamp - _launchTime >= 600:
                                if arg3 > sub_207a3c47:
                                    revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                            else:
                                if arg3 > 10 * 10^18:
                                    revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                if not this.address:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(this.address)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                if balanceOf[address(this.address)] < arg3:
                    revert with 0, 17
                balanceOf[address(this.address)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                emit Transfer(arg3, this.address, arg2);
                if not balanceOf[this.address]:
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                else:
                    if not this.address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not _treasuryAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[this.address] > balanceOf[address(this.address)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                        revert with 0, 17
                    balanceOf[address(this.address)] -= balanceOf[this.address]
                    if balanceOf[stor11] > !balanceOf[this.address]:
                        revert with 0, 17
                    if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] += balanceOf[this.address]
                    emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
            else:
                if _uniswapV2PairAddress == arg2:
                    if block.timestamp - _launchTime / 24 * 3600 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if sub_065b97b1 < 10 * block.timestamp - _launchTime / 24 * 3600:
                        revert with 0, 17
                    if arg3 / 100 and sub_065b97b1 - (10 * block.timestamp - _launchTime / 24 * 3600) > -1 / arg3 / 100:
                        revert with 0, 17
                    if (sub_065b97b1 * arg3 / 100) - (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100) > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 < (sub_065b97b1 * arg3 / 100) - (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100) > balanceOf[address(this.address)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                    if balanceOf[address(this.address)] < arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100):
                        revert with 0, 17
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - arg3 + (sub_065b97b1 * arg3 / 100) - (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100)
                    if balanceOf[arg2] > !(arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100)):
                        revert with 0, 17
                    if balanceOf[arg2] + arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100) < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100)
                    emit Transfer((arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100)), this.address, arg2);
                    if not balanceOf[this.address]:
                        emit Transfer((arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                    else:
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not _treasuryAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[this.address] > balanceOf[address(this.address)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                            revert with 0, 17
                        balanceOf[address(this.address)] -= balanceOf[this.address]
                        if balanceOf[stor11] > !balanceOf[this.address]:
                            revert with 0, 17
                        if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor11] += balanceOf[this.address]
                        emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                        emit Transfer((arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                else:
                    if sub_1b7b84a2:
                        if _uniswapV2PairAddress == arg1:
                            if not stor7[address(arg2)]:
                                if block.timestamp < _launchTime:
                                    revert with 0, 17
                                if block.timestamp - _launchTime >= 600:
                                    if arg3 > sub_207a3c47:
                                        revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                                else:
                                    if arg3 > 10 * 10^18:
                                        revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                    if not this.address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(this.address)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                    if balanceOf[address(this.address)] < arg3:
                        revert with 0, 17
                    balanceOf[address(this.address)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, this.address, arg2);
                    if not balanceOf[this.address]:
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                    else:
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not _treasuryAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[this.address] > balanceOf[address(this.address)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                            revert with 0, 17
                        balanceOf[address(this.address)] -= balanceOf[this.address]
                        if balanceOf[stor11] > !balanceOf[this.address]:
                            revert with 0, 17
                        if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor11] += balanceOf[this.address]
                        emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
        else:
            if stor7[address(arg1)]:
                if sub_1b7b84a2:
                    if _uniswapV2PairAddress == arg1:
                        if not stor7[address(arg2)]:
                            if block.timestamp < _launchTime:
                                revert with 0, 17
                            if block.timestamp - _launchTime >= 600:
                                if arg3 > sub_207a3c47:
                                    revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                            else:
                                if arg3 > 10 * 10^18:
                                    revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                if not this.address:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(this.address)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                if balanceOf[address(this.address)] < arg3:
                    revert with 0, 17
                balanceOf[address(this.address)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                emit Transfer(arg3, this.address, arg2);
                if not balanceOf[this.address]:
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                else:
                    if not this.address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not _treasuryAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[this.address] > balanceOf[address(this.address)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                        revert with 0, 17
                    balanceOf[address(this.address)] -= balanceOf[this.address]
                    if balanceOf[stor11] > !balanceOf[this.address]:
                        revert with 0, 17
                    if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] += balanceOf[this.address]
                    emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
            else:
                if _uniswapV2PairAddress == arg2:
                    if sub_065b97b1 < 40:
                        revert with 0, 17
                    if arg3 / 100 and sub_065b97b1 - 40 > -1 / arg3 / 100:
                        revert with 0, 17
                    if (-40 * arg3 / 100) + (sub_065b97b1 * arg3 / 100) > arg3:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg3 < (-40 * arg3 / 100) + (sub_065b97b1 * arg3 / 100):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100) > balanceOf[address(this.address)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[326 len 26] >> 48, 0
                    if balanceOf[address(this.address)] < arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100):
                        revert with 0, 17
                    balanceOf[address(this.address)] = balanceOf[address(this.address)] - arg3 - (40 * arg3 / 100) + (sub_065b97b1 * arg3 / 100)
                    if balanceOf[arg2] > !(arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100)):
                        revert with 0, 17
                    if balanceOf[arg2] + arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100) < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100)
                    emit Transfer((arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100)), this.address, arg2);
                    if not balanceOf[this.address]:
                        emit Transfer((arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[424 len 24] >> 64, 0
                    else:
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not _treasuryAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[this.address] > balanceOf[address(this.address)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[422 len 26] >> 48, 0
                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                            revert with 0, 17
                        balanceOf[address(this.address)] -= balanceOf[this.address]
                        if balanceOf[stor11] > !balanceOf[this.address]:
                            revert with 0, 17
                        if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor11] += balanceOf[this.address]
                        emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                        emit Transfer((arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100)), arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[520 len 24] >> 64, 0
                else:
                    if sub_1b7b84a2:
                        if _uniswapV2PairAddress == arg1:
                            if not stor7[address(arg2)]:
                                if block.timestamp < _launchTime:
                                    revert with 0, 17
                                if block.timestamp - _launchTime >= 600:
                                    if arg3 > sub_207a3c47:
                                        revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                                else:
                                    if arg3 > 10 * 10^18:
                                        revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                    if not this.address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if arg3 > balanceOf[address(this.address)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[262 len 26] >> 48, 0
                    if balanceOf[address(this.address)] < arg3:
                        revert with 0, 17
                    balanceOf[address(this.address)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
                    emit Transfer(arg3, this.address, arg2);
                    if not balanceOf[this.address]:
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[360 len 24] >> 64, 0
                    else:
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not _treasuryAddress:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[this.address] > balanceOf[address(this.address)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                        if balanceOf[address(this.address)] < balanceOf[this.address]:
                            revert with 0, 17
                        balanceOf[address(this.address)] -= balanceOf[this.address]
                        if balanceOf[stor11] > !balanceOf[this.address]:
                            revert with 0, 17
                        if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[stor11] += balanceOf[this.address]
                        emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                        emit Transfer(arg3, arg1, arg2);
                        if arg3 > allowance[address(arg1)][msg.sender]:
                            revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
    ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 1)))))
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

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    if unknown_0x71cec707(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0x9e0a7810(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x7d4163d3(?????) > uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0x71cec707(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x72336652(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x768dc710(?????):
                            require unknown_0x7cf4b90f(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            return bool(sub_7cf4b90f)
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(stor7[arg1])
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 < 9
                    require arg2 == address(arg2)
                    if bool(stor8[msg.sender]) != 1:
                        revert with 0, 'NOT MANAGER'
                    if arg1 > 8:
                        revert with 0, 33
                    if arg1 == 8:
                        _treasuryAddress = address(arg2)
                else:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 < 9
                    if bool(stor8[msg.sender]) != 1:
                        revert with 0, 'NOT MANAGER'
                    if arg1 > 8:
                        revert with 0, 33
                    if arg1 == 5:
                        sub_065b97b1 = arg2
                    else:
                        if arg1 > 8:
                            revert with 0, 33
                        if arg1 == 7:
                            sub_8956dc3d = arg2
                        else:
                            if arg1 > 8:
                                revert with 0, 33
                            if arg1 == 6:
                                sub_207a3c47 = arg2
            if unknown_0x7d4163d3(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                sub_07b03f03Address = address(arg1)
            if unknown_0x8956dc3d(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_8956dc3d
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if uint32(call.func_hash) >> 224 != unknown_0x95d89b41(?????):
                require unknown_0x9c74daf0(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                return _uniswapV2PairAddress
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
                    mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 224] = 0
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
                mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 224] = 0
            return Array(len=stor4.length % 128, data=mem[160 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 224 len 2 * ceil32(stor4.length.field_1)]), 
        if unknown_0xd5d31abe(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xd5d31abe(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require arg1 == address(arg1)
                return bool(stor8[arg1])
            if unknown_0xdd62ed3e(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == address(arg2)
                return allowance[address(arg1)][address(arg2)]
            if unknown_0xe319a3d9(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return _treasuryAddress
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
            else:
                require unknown_0xfd364d19(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 < 9
                require arg2 == bool(arg2)
                if bool(stor8[msg.sender]) != 1:
                    revert with 0, 'NOT MANAGER'
                if arg1 > 8:
                    revert with 0, 33
                if arg1 == 3:
                    Mask(96, 0, stor12.field_160) = Mask(96, 0, bool(arg2))
                else:
                    if arg1 > 8:
                        revert with 0, 33
                    if arg1 == 4:
                        Mask(80, 0, stor12.field_176) = Mask(80, 0, bool(arg2))
        if unknown_0x9e0a7810(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            return bool(_isLaunched)
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
            if unknown_0xa5e90eee(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == bool(arg2)
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                stor8[address(arg1)] = uint8(bool(arg2))
            if uint32(call.func_hash) >> 224 != unknown_0xa9059cbb(?????):
                require unknown_0xd219e26d(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 < 9
                require arg2 == address(arg2)
                require arg3 == bool(arg3)
                if bool(stor8[msg.sender]) != 1:
                    revert with 0, 'NOT MANAGER'
                if arg1 > 8:
                    revert with 0, 33
                if not arg1:
                    stor6[address(arg2)] = uint8(bool(arg3))
                else:
                    if arg1 > 8:
                        revert with 0, 33
                    if arg1 == 1:
                        stor7[address(arg2)] = uint8(bool(arg3))
            require not msg.value
            require calldata.size - 4 >= 64
            require arg1 == address(arg1)
            if not _isLaunched:
                if not stor7[address(msg.sender)]:
                    revert with 0, 'OPEC: TRANSFER NOT LAUCHED YET'
            if stor6[address(msg.sender)]:
                revert with 0, 'OPEC: TRANSFER BLACKLIST'
            if stor6[address(arg1)]:
                revert with 0, 'OPEC: TRANSFER BLACKLIST'
            if not msg.sender:
                revert with 0, 'OPEC: TRANSFER FROM ZERO ADDRESS'
            if not address(arg1):
                revert with 0, 'OPEC: TRANSFER TO ZERO ADDRESS'
            if not stor7[address(arg1)]:
                if sub_1b7b84a2:
                    if arg2 > !balanceOf[address(arg1)]:
                        revert with 0, 17
                    if arg2 + balanceOf[address(arg1)] > sub_8956dc3d:
                        revert with 0, 'OPEC: TRANSFER RECIPIENT BALANCE LIMIT'
            if not msg.sender:
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0, 17
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[this.address] > !arg2:
                revert with 0, 17
            if balanceOf[this.address] + arg2 < balanceOf[this.address]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] = balanceOf[this.address] + arg2
            emit Transfer(arg2, msg.sender, this.address);
            if not sub_30029217:
                if not this.address:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg1):
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg2 > balanceOf[address(this.address)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                if balanceOf[address(this.address)] < arg2:
                    revert with 0, 17
                balanceOf[address(this.address)] -= arg2
                if balanceOf[address(arg1)] > !arg2:
                    revert with 0, 17
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, this.address, address(arg1));
                if balanceOf[this.address]:
                    if not this.address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not _treasuryAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[this.address] > balanceOf[address(this.address)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                        revert with 0, 17
                    balanceOf[address(this.address)] -= balanceOf[this.address]
                    if balanceOf[stor11] > !balanceOf[this.address]:
                        revert with 0, 17
                    if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] += balanceOf[this.address]
                    emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                emit Transfer(arg2, msg.sender, address(arg1));
            else:
                if block.timestamp < _launchTime:
                    revert with 0, 17
                if block.timestamp - _launchTime / 24 * 3600 <= 4:
                    if stor7[address(msg.sender)]:
                        if sub_1b7b84a2:
                            if _uniswapV2PairAddress == msg.sender:
                                if not stor7[address(arg1)]:
                                    if block.timestamp < _launchTime:
                                        revert with 0, 17
                                    if block.timestamp - _launchTime >= 600:
                                        if arg2 > sub_207a3c47:
                                            revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                                    else:
                                        if arg2 > 10 * 10^18:
                                            revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(this.address)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                        if balanceOf[address(this.address)] < arg2:
                            revert with 0, 17
                        balanceOf[address(this.address)] -= arg2
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, this.address, address(arg1));
                        if balanceOf[this.address]:
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not _treasuryAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[this.address] > balanceOf[address(this.address)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                revert with 0, 17
                            balanceOf[address(this.address)] -= balanceOf[this.address]
                            if balanceOf[stor11] > !balanceOf[this.address]:
                                revert with 0, 17
                            if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor11] += balanceOf[this.address]
                            emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                        emit Transfer(arg2, msg.sender, address(arg1));
                    else:
                        if _uniswapV2PairAddress == address(arg1):
                            if block.timestamp - _launchTime / 24 * 3600 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if sub_065b97b1 < 10 * block.timestamp - _launchTime / 24 * 3600:
                                revert with 0, 17
                            if arg2 / 100 and sub_065b97b1 - (10 * block.timestamp - _launchTime / 24 * 3600) > -1 / arg2 / 100:
                                revert with 0, 17
                            if (sub_065b97b1 * arg2 / 100) - (10 * block.timestamp - _launchTime / 24 * 3600 * arg2 / 100) > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < (sub_065b97b1 * arg2 / 100) - (10 * block.timestamp - _launchTime / 24 * 3600 * arg2 / 100):
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(arg1):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 - (sub_065b97b1 * arg2 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg2 / 100) > balanceOf[address(this.address)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            if balanceOf[address(this.address)] < arg2 - (sub_065b97b1 * arg2 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg2 / 100):
                                revert with 0, 17
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - arg2 + (sub_065b97b1 * arg2 / 100) - (10 * block.timestamp - _launchTime / 24 * 3600 * arg2 / 100)
                            if balanceOf[address(arg1)] > !(arg2 - (sub_065b97b1 * arg2 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg2 / 100)):
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 - (sub_065b97b1 * arg2 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg2 / 100) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (sub_065b97b1 * arg2 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg2 / 100)
                            emit Transfer((arg2 - (sub_065b97b1 * arg2 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg2 / 100)), this.address, address(arg1));
                            if balanceOf[this.address]:
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not _treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[this.address] > balanceOf[address(this.address)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                    revert with 0, 17
                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                if balanceOf[stor11] > !balanceOf[this.address]:
                                    revert with 0, 17
                                if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor11] += balanceOf[this.address]
                                emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                            emit Transfer((arg2 - (sub_065b97b1 * arg2 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg2 / 100)), msg.sender, address(arg1));
                        else:
                            if sub_1b7b84a2:
                                if _uniswapV2PairAddress == msg.sender:
                                    if not stor7[address(arg1)]:
                                        if block.timestamp < _launchTime:
                                            revert with 0, 17
                                        if block.timestamp - _launchTime >= 600:
                                            if arg2 > sub_207a3c47:
                                                revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                                        else:
                                            if arg2 > 10 * 10^18:
                                                revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(arg1):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(this.address)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                            if balanceOf[address(this.address)] < arg2:
                                revert with 0, 17
                            balanceOf[address(this.address)] -= arg2
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, this.address, address(arg1));
                            if balanceOf[this.address]:
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not _treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[this.address] > balanceOf[address(this.address)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                    revert with 0, 17
                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                if balanceOf[stor11] > !balanceOf[this.address]:
                                    revert with 0, 17
                                if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor11] += balanceOf[this.address]
                                emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                            emit Transfer(arg2, msg.sender, address(arg1));
                else:
                    if stor7[address(msg.sender)]:
                        if sub_1b7b84a2:
                            if _uniswapV2PairAddress == msg.sender:
                                if not stor7[address(arg1)]:
                                    if block.timestamp < _launchTime:
                                        revert with 0, 17
                                    if block.timestamp - _launchTime >= 600:
                                        if arg2 > sub_207a3c47:
                                            revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                                    else:
                                        if arg2 > 10 * 10^18:
                                            revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg1):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg2 > balanceOf[address(this.address)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                        if balanceOf[address(this.address)] < arg2:
                            revert with 0, 17
                        balanceOf[address(this.address)] -= arg2
                        if balanceOf[address(arg1)] > !arg2:
                            revert with 0, 17
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        emit Transfer(arg2, this.address, address(arg1));
                        if balanceOf[this.address]:
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not _treasuryAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[this.address] > balanceOf[address(this.address)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                revert with 0, 17
                            balanceOf[address(this.address)] -= balanceOf[this.address]
                            if balanceOf[stor11] > !balanceOf[this.address]:
                                revert with 0, 17
                            if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor11] += balanceOf[this.address]
                            emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                        emit Transfer(arg2, msg.sender, address(arg1));
                    else:
                        if _uniswapV2PairAddress == address(arg1):
                            if sub_065b97b1 < 40:
                                revert with 0, 17
                            if arg2 / 100 and sub_065b97b1 - 40 > -1 / arg2 / 100:
                                revert with 0, 17
                            if (-40 * arg2 / 100) + (sub_065b97b1 * arg2 / 100) > arg2:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg2 < (-40 * arg2 / 100) + (sub_065b97b1 * arg2 / 100):
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(arg1):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 + (40 * arg2 / 100) - (sub_065b97b1 * arg2 / 100) > balanceOf[address(this.address)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            if balanceOf[address(this.address)] < arg2 + (40 * arg2 / 100) - (sub_065b97b1 * arg2 / 100):
                                revert with 0, 17
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - arg2 - (40 * arg2 / 100) + (sub_065b97b1 * arg2 / 100)
                            if balanceOf[address(arg1)] > !(arg2 + (40 * arg2 / 100) - (sub_065b97b1 * arg2 / 100)):
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 + (40 * arg2 / 100) - (sub_065b97b1 * arg2 / 100) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 + (40 * arg2 / 100) - (sub_065b97b1 * arg2 / 100)
                            emit Transfer((arg2 + (40 * arg2 / 100) - (sub_065b97b1 * arg2 / 100)), this.address, address(arg1));
                            if balanceOf[this.address]:
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not _treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[this.address] > balanceOf[address(this.address)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                    revert with 0, 17
                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                if balanceOf[stor11] > !balanceOf[this.address]:
                                    revert with 0, 17
                                if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor11] += balanceOf[this.address]
                                emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                            emit Transfer((arg2 + (40 * arg2 / 100) - (sub_065b97b1 * arg2 / 100)), msg.sender, address(arg1));
                        else:
                            if sub_1b7b84a2:
                                if _uniswapV2PairAddress == msg.sender:
                                    if not stor7[address(arg1)]:
                                        if block.timestamp < _launchTime:
                                            revert with 0, 17
                                        if block.timestamp - _launchTime >= 600:
                                            if arg2 > sub_207a3c47:
                                                revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                                        else:
                                            if arg2 > 10 * 10^18:
                                                revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(arg1):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg2 > balanceOf[address(this.address)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                            if balanceOf[address(this.address)] < arg2:
                                revert with 0, 17
                            balanceOf[address(this.address)] -= arg2
                            if balanceOf[address(arg1)] > !arg2:
                                revert with 0, 17
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            emit Transfer(arg2, this.address, address(arg1));
                            if balanceOf[this.address]:
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not _treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[this.address] > balanceOf[address(this.address)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                    revert with 0, 17
                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                if balanceOf[stor11] > !balanceOf[this.address]:
                                    revert with 0, 17
                                if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor11] += balanceOf[this.address]
                                emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                            emit Transfer(arg2, msg.sender, address(arg1));
    else:
        if unknown_0x23b872dd(?????) > uint32(call.func_hash) >> 224:
            if approve(address arg1, uint256 arg2) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != approve(address arg1, uint256 arg2):
                    if unknown_0x18160ddd(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return totalSupply
                    if unknown_0x1b7b84a2(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return bool(sub_1b7b84a2)
                    if uint32(call.func_hash) >> 224 != unknown_0x1cdd3be3(?????):
                        require unknown_0x207a3c47(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        return sub_207a3c47
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor6[arg1])
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
            if unknown_0x065b97b1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return sub_065b97b1
            if uint32(call.func_hash) >> 224 != name():
                if unknown_0x07b03f03(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_07b03f03Address
                require _launchTime() == uint32(call.func_hash) >> 224
                require not msg.value
                return _launchTime
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
                    mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 224] = 0
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
                mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 224] = 0
            return Array(len=stor3.length % 128, data=mem[160 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 224 len 2 * ceil32(stor3.length.field_1)]), 
        if unknown_0x40c10f19(?????) <= uint32(call.func_hash) >> 224:
            if uint32(call.func_hash) >> 224 != unknown_0x40c10f19(?????):
                if unknown_0x583e0568(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return _uniswapV2RouterAddress
                if unknown_0x6c83a2d4(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if bool(stor8[msg.sender]) != 1:
                        revert with 0, 'NOT MANAGER'
                    _launchTime = block.timestamp
                    _isLaunched = 1
                else:
                    if unknown_0x70a08231(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return balanceOf[address(arg1)]
                    require unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    emit OwnershipTransferred(owner, 0);
                    owner = 0
            else:
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                if sub_07b03f03Address != msg.sender:
                    revert with 0, 'NOT ALLOWED'
                if not address(arg1):
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
                emit Transfer(arg2, 0, address(arg1));
        if uint32(call.func_hash) >> 224 != unknown_0x23b872dd(?????):
            if unknown_0x30029217(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return bool(sub_30029217)
            if unknown_0x313ce567(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return 18
            require unknown_0x39509351(?????) == uint32(call.func_hash) >> 224
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
        else:
            require not msg.value
            require calldata.size - 4 >= 96
            require arg1 == address(arg1)
            require arg2 == address(arg2)
            if not _isLaunched:
                if not stor7[address(arg1)]:
                    revert with 0, 'OPEC: TRANSFER NOT LAUCHED YET'
            if stor6[address(arg1)]:
                revert with 0, 'OPEC: TRANSFER BLACKLIST'
            if stor6[address(arg2)]:
                revert with 0, 'OPEC: TRANSFER BLACKLIST'
            if not address(arg1):
                revert with 0, 'OPEC: TRANSFER FROM ZERO ADDRESS'
            if not address(arg2):
                revert with 0, 'OPEC: TRANSFER TO ZERO ADDRESS'
            if not stor7[address(arg2)]:
                if sub_1b7b84a2:
                    if arg3 > !balanceOf[address(arg2)]:
                        revert with 0, 17
                    if arg3 + balanceOf[address(arg2)] > sub_8956dc3d:
                        revert with 0, 'OPEC: TRANSFER RECIPIENT BALANCE LIMIT'
            if not address(arg1):
                revert with 0, 'ERC20: transfer from the zero address'
            if not this.address:
                revert with 0, 'ERC20: transfer to the zero address'
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[198 len 26] >> 48, 0
            if balanceOf[address(arg1)] < arg3:
                revert with 0, 17
            balanceOf[address(arg1)] -= arg3
            if balanceOf[this.address] > !arg3:
                revert with 0, 17
            if balanceOf[this.address] + arg3 < balanceOf[this.address]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(this.address)] = balanceOf[this.address] + arg3
            emit Transfer(arg3, address(arg1), this.address);
            if not sub_30029217:
                if not this.address:
                    revert with 0, 'ERC20: transfer from the zero address'
                if not address(arg2):
                    revert with 0, 'ERC20: transfer to the zero address'
                if arg3 > balanceOf[address(this.address)]:
                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                if balanceOf[address(this.address)] < arg3:
                    revert with 0, 17
                balanceOf[address(this.address)] -= arg3
                if balanceOf[address(arg2)] > !arg3:
                    revert with 0, 17
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, this.address, address(arg2));
                if not balanceOf[this.address]:
                    emit Transfer(arg3, address(arg1), address(arg2));
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                else:
                    if not this.address:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not _treasuryAddress:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[this.address] > balanceOf[address(this.address)]:
                        revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                    if balanceOf[address(this.address)] < balanceOf[this.address]:
                        revert with 0, 17
                    balanceOf[address(this.address)] -= balanceOf[this.address]
                    if balanceOf[stor11] > !balanceOf[this.address]:
                        revert with 0, 17
                    if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] += balanceOf[this.address]
                    emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                    emit Transfer(arg3, address(arg1), address(arg2));
                    if arg3 > allowance[address(arg1)][msg.sender]:
                        revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
            else:
                if block.timestamp < _launchTime:
                    revert with 0, 17
                if block.timestamp - _launchTime / 24 * 3600 <= 4:
                    if stor7[address(arg1)]:
                        if sub_1b7b84a2:
                            if _uniswapV2PairAddress == address(arg1):
                                if not stor7[address(arg2)]:
                                    if block.timestamp < _launchTime:
                                        revert with 0, 17
                                    if block.timestamp - _launchTime >= 600:
                                        if arg3 > sub_207a3c47:
                                            revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                                    else:
                                        if arg3 > 10 * 10^18:
                                            revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg2):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(this.address)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                        if balanceOf[address(this.address)] < arg3:
                            revert with 0, 17
                        balanceOf[address(this.address)] -= arg3
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, this.address, address(arg2));
                        if not balanceOf[this.address]:
                            emit Transfer(arg3, address(arg1), address(arg2));
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                        else:
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not _treasuryAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[this.address] > balanceOf[address(this.address)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                revert with 0, 17
                            balanceOf[address(this.address)] -= balanceOf[this.address]
                            if balanceOf[stor11] > !balanceOf[this.address]:
                                revert with 0, 17
                            if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor11] += balanceOf[this.address]
                            emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                            emit Transfer(arg3, address(arg1), address(arg2));
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                    else:
                        if _uniswapV2PairAddress == address(arg2):
                            if block.timestamp - _launchTime / 24 * 3600 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                                revert with 0, 17
                            if sub_065b97b1 < 10 * block.timestamp - _launchTime / 24 * 3600:
                                revert with 0, 17
                            if arg3 / 100 and sub_065b97b1 - (10 * block.timestamp - _launchTime / 24 * 3600) > -1 / arg3 / 100:
                                revert with 0, 17
                            if (sub_065b97b1 * arg3 / 100) - (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100) > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < (sub_065b97b1 * arg3 / 100) - (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100):
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(arg2):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100) > balanceOf[address(this.address)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            if balanceOf[address(this.address)] < arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100):
                                revert with 0, 17
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - arg3 + (sub_065b97b1 * arg3 / 100) - (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100)
                            if balanceOf[address(arg2)] > !(arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100)):
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100)
                            emit Transfer((arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100)), this.address, address(arg2));
                            if not balanceOf[this.address]:
                                emit Transfer((arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100)), address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                            else:
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not _treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[this.address] > balanceOf[address(this.address)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                    revert with 0, 17
                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                if balanceOf[stor11] > !balanceOf[this.address]:
                                    revert with 0, 17
                                if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor11] += balanceOf[this.address]
                                emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                                emit Transfer((arg3 - (sub_065b97b1 * arg3 / 100) + (10 * block.timestamp - _launchTime / 24 * 3600 * arg3 / 100)), address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[552 len 24] >> 64, 0
                        else:
                            if sub_1b7b84a2:
                                if _uniswapV2PairAddress == address(arg1):
                                    if not stor7[address(arg2)]:
                                        if block.timestamp < _launchTime:
                                            revert with 0, 17
                                        if block.timestamp - _launchTime >= 600:
                                            if arg3 > sub_207a3c47:
                                                revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                                        else:
                                            if arg3 > 10 * 10^18:
                                                revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(arg2):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(this.address)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                            if balanceOf[address(this.address)] < arg3:
                                revert with 0, 17
                            balanceOf[address(this.address)] -= arg3
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, this.address, address(arg2));
                            if not balanceOf[this.address]:
                                emit Transfer(arg3, address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                            else:
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not _treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[this.address] > balanceOf[address(this.address)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                    revert with 0, 17
                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                if balanceOf[stor11] > !balanceOf[this.address]:
                                    revert with 0, 17
                                if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor11] += balanceOf[this.address]
                                emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                                emit Transfer(arg3, address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                else:
                    if stor7[address(arg1)]:
                        if sub_1b7b84a2:
                            if _uniswapV2PairAddress == address(arg1):
                                if not stor7[address(arg2)]:
                                    if block.timestamp < _launchTime:
                                        revert with 0, 17
                                    if block.timestamp - _launchTime >= 600:
                                        if arg3 > sub_207a3c47:
                                            revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                                    else:
                                        if arg3 > 10 * 10^18:
                                            revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                        if not this.address:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not address(arg2):
                            revert with 0, 'ERC20: transfer to the zero address'
                        if arg3 > balanceOf[address(this.address)]:
                            revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                        if balanceOf[address(this.address)] < arg3:
                            revert with 0, 17
                        balanceOf[address(this.address)] -= arg3
                        if balanceOf[address(arg2)] > !arg3:
                            revert with 0, 17
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        emit Transfer(arg3, this.address, address(arg2));
                        if not balanceOf[this.address]:
                            emit Transfer(arg3, address(arg1), address(arg2));
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                        else:
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not _treasuryAddress:
                                revert with 0, 'ERC20: transfer to the zero address'
                            if balanceOf[this.address] > balanceOf[address(this.address)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                            if balanceOf[address(this.address)] < balanceOf[this.address]:
                                revert with 0, 17
                            balanceOf[address(this.address)] -= balanceOf[this.address]
                            if balanceOf[stor11] > !balanceOf[this.address]:
                                revert with 0, 17
                            if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[stor11] += balanceOf[this.address]
                            emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                            emit Transfer(arg3, address(arg1), address(arg2));
                            if arg3 > allowance[address(arg1)][msg.sender]:
                                revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
                    else:
                        if _uniswapV2PairAddress == address(arg2):
                            if sub_065b97b1 < 40:
                                revert with 0, 17
                            if arg3 / 100 and sub_065b97b1 - 40 > -1 / arg3 / 100:
                                revert with 0, 17
                            if (-40 * arg3 / 100) + (sub_065b97b1 * arg3 / 100) > arg3:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg3 < (-40 * arg3 / 100) + (sub_065b97b1 * arg3 / 100):
                                revert with 0, 17
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(arg2):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100) > balanceOf[address(this.address)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[358 len 26] >> 48, 0
                            if balanceOf[address(this.address)] < arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100):
                                revert with 0, 17
                            balanceOf[address(this.address)] = balanceOf[address(this.address)] - arg3 - (40 * arg3 / 100) + (sub_065b97b1 * arg3 / 100)
                            if balanceOf[address(arg2)] > !(arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100)):
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100)
                            emit Transfer((arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100)), this.address, address(arg2));
                            if not balanceOf[this.address]:
                                emit Transfer((arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100)), address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[456 len 24] >> 64, 0
                            else:
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not _treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[this.address] > balanceOf[address(this.address)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[454 len 26] >> 48, 0
                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                    revert with 0, 17
                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                if balanceOf[stor11] > !balanceOf[this.address]:
                                    revert with 0, 17
                                if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor11] += balanceOf[this.address]
                                emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                                emit Transfer((arg3 + (40 * arg3 / 100) - (sub_065b97b1 * arg3 / 100)), address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[552 len 24] >> 64, 0
                        else:
                            if sub_1b7b84a2:
                                if _uniswapV2PairAddress == address(arg1):
                                    if not stor7[address(arg2)]:
                                        if block.timestamp < _launchTime:
                                            revert with 0, 17
                                        if block.timestamp - _launchTime >= 600:
                                            if arg3 > sub_207a3c47:
                                                revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                                        else:
                                            if arg3 > 10 * 10^18:
                                                revert with 0, 'OPEC: TRANSFER BUY LIMIT ERROR'
                            if not this.address:
                                revert with 0, 'ERC20: transfer from the zero address'
                            if not address(arg2):
                                revert with 0, 'ERC20: transfer to the zero address'
                            if arg3 > balanceOf[address(this.address)]:
                                revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[294 len 26] >> 48, 0
                            if balanceOf[address(this.address)] < arg3:
                                revert with 0, 17
                            balanceOf[address(this.address)] -= arg3
                            if balanceOf[address(arg2)] > !arg3:
                                revert with 0, 17
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            emit Transfer(arg3, this.address, address(arg2));
                            if not balanceOf[this.address]:
                                emit Transfer(arg3, address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[392 len 24] >> 64, 0
                            else:
                                if not this.address:
                                    revert with 0, 'ERC20: transfer from the zero address'
                                if not _treasuryAddress:
                                    revert with 0, 'ERC20: transfer to the zero address'
                                if balanceOf[this.address] > balanceOf[address(this.address)]:
                                    revert with 0, 32, 38, 0xfe45524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[390 len 26] >> 48, 0
                                if balanceOf[address(this.address)] < balanceOf[this.address]:
                                    revert with 0, 17
                                balanceOf[address(this.address)] -= balanceOf[this.address]
                                if balanceOf[stor11] > !balanceOf[this.address]:
                                    revert with 0, 17
                                if balanceOf[stor11] + balanceOf[this.address] < balanceOf[stor11]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[stor11] += balanceOf[this.address]
                                emit Transfer(balanceOf[this.address], this.address, _treasuryAddress);
                                emit Transfer(arg3, address(arg1), address(arg2));
                                if arg3 > allowance[address(arg1)][msg.sender]:
                                    revert with 0, 32, 40, 0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63, mem[488 len 24] >> 64, 0
            ('le', ('param', 'arg3'), ('stor', ('map', 'msg.sender', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'allowance', 1)))))
            if allowance[address(arg1)][msg.sender] < arg3:
                revert with 0, 17
            if not address(arg1):
                revert with 0, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
            emit Approval((allowance[address(arg1)][msg.sender] - arg3), address(arg1), msg.sender);
    return 1
}



}
