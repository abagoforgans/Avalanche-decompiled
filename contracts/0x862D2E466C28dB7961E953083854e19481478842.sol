contract main {




// =====================  Runtime code  =====================


const PERMIT_TYPEHASH = 0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 nonces;
uint256 DOMAIN_SEPARATOR;
address owner;
address vaultAddress;
uint256 basisPointsRate;
uint256 maximumFee;
uint256 daoRevenuePointsRate;
uint8 blacklistMode; offset 160
uint128 stor13; offset 160
address daoAddress;
mapping of uint8 stor14;
uint8 whitelistMode;
uint256 stor15;
mapping of uint8 stor16;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function daoAddress() payable {
    return daoAddress
}

function decimals() payable {
    return decimals
}

function maximumFee() payable {
    return maximumFee
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(stor16[arg1]))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function whitelistMode() payable {
    return bool(uint8(whitelistMode))
}

function daoRevenuePointsRate() payable {
    return daoRevenuePointsRate
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[address(arg1)]
}

function blacklistMode() payable {
    return bool(blacklistMode)
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function basisPointsRate() payable {
    return basisPointsRate
}

function vault() payable {
    return vaultAddress
}

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(stor14[arg1]))
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
    return 1
}

function toggleBlacklistMode() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(96, 0, stor13.field_160) = Mask(96, 0, not bool(blacklistMode))
    return bool(blacklistMode)
}

function setDaoAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit DaoAddressChanged(daoAddress, arg1);
    daoAddress = arg1
}

function toggleWhitelistMode() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor15) = not bool(uint8(whitelistMode)) or Mask(248, 8, uint256(stor15))
    return bool(uint8(whitelistMode))
}

function setWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor16[address(arg1)]) = not bool(uint8(stor16[address(arg1)])) or Mask(248, 8, uint256(stor16[address(arg1)]))
    return bool(uint8(stor16[address(arg1)]))
}

function setBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor14[address(arg1)]) = not bool(uint8(stor14[address(arg1)])) or Mask(248, 8, uint256(stor14[address(arg1)]))
    return bool(uint8(stor14[address(arg1)]))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function setTaxParams(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 5000
    require daoRevenuePointsRate <= 10000
    basisPointsRate = arg1
    if not arg2:
        maximumFee = 0
    else:
        require arg2
        if arg2 * 10^decimals / arg2 != 10^decimals:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        maximumFee = arg2 * 10^decimals
    daoRevenuePointsRate = arg3
}

function approve(address arg1, uint256 arg2) payable {
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if vaultAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x655661756c744f776e65643a2063616c6c6572206973206e6f7420746865205661756c,
                    mem[199 len 29]
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x2e45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
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
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function _burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0x6545524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if block.timestamp > arg4:
        revert with 0, 'Permit: expired deadline'
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0x6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126c9, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 32, 33, 0x655a65726f537761705065726d69743a20496e76616c6964207369676e61747572, Mask(216, 0, arg7), mem[578 len 4]
    if address(signer) != arg1:
        revert with 0, 32, 33, 0x655a65726f537761705065726d69743a20496e76616c6964207369676e61747572, Mask(216, 0, arg7), mem[578 len 4]
    nonces[address(arg1)]++
    if not arg1:
        revert with 0, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[578 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[578 len 4]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) payable {
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
    if not blacklistMode:
        if not uint8(whitelistMode):
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if not uint8(stor16[address(msg.sender)]):
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if block.timestamp <= 455997 * 3600:
                    if 100 * 10^decimals / 100 != 10^decimals:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 > 100 * 10^decimals:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    58,
                                    0x73506c65617365207761697420666f72203630206d696e757465732061667465722072656c6561736520746f207472616e73666572206d6f7265,
                                    mem[222 len 6]
                if not arg2:
                    if 0 <= maximumFee:
                        if 0 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] += arg2
                        if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, msg.sender, daoAddress);
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if maximumFee > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not maximumFee:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 - maximumFee < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                            if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if maximumFee > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= maximumFee
                            emit Transfer(0, msg.sender, daoAddress);
                        else:
                            require maximumFee
                            if maximumFee * daoRevenuePointsRate / maximumFee != daoRevenuePointsRate:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 - maximumFee < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                            if balanceOf[address(stor13.field_0)] + (maximumFee * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(stor13.field_0)] += maximumFee * daoRevenuePointsRate / 10000
                            if maximumFee > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if maximumFee * daoRevenuePointsRate / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = totalSupply - maximumFee + (maximumFee * daoRevenuePointsRate / 10000)
                            emit Transfer((maximumFee * daoRevenuePointsRate / 10000), msg.sender, daoAddress);
                        emit Transfer((arg2 - maximumFee), msg.sender, arg1);
                else:
                    require arg2
                    if arg2 * basisPointsRate / arg2 != basisPointsRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg2 * basisPointsRate / 10000 <= maximumFee:
                        if arg2 * basisPointsRate / 10000 > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2 * basisPointsRate / 10000:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000)
                            if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg2 * basisPointsRate / 10000 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg2 * basisPointsRate / 10000
                            emit Transfer(0, msg.sender, daoAddress);
                        else:
                            require arg2 * basisPointsRate / 10000
                            if arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / arg2 * basisPointsRate / 10000 != daoRevenuePointsRate:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000) < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000)
                            if balanceOf[address(stor13.field_0)] + (arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(stor13.field_0)] += arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000
                            if arg2 * basisPointsRate / 10000 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = totalSupply - (arg2 * basisPointsRate / 10000) + (arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000)
                            emit Transfer((arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000), msg.sender, daoAddress);
                        emit Transfer((arg2 - (arg2 * basisPointsRate / 10000)), msg.sender, arg1);
                    else:
                        if maximumFee > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not maximumFee:
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 - maximumFee < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                            if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if maximumFee > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= maximumFee
                            emit Transfer(0, msg.sender, daoAddress);
                        else:
                            require maximumFee
                            if maximumFee * daoRevenuePointsRate / maximumFee != daoRevenuePointsRate:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 - maximumFee < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                            if balanceOf[address(stor13.field_0)] + (maximumFee * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(stor13.field_0)] += maximumFee * daoRevenuePointsRate / 10000
                            if maximumFee > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if maximumFee * daoRevenuePointsRate / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = totalSupply - maximumFee + (maximumFee * daoRevenuePointsRate / 10000)
                            emit Transfer((maximumFee * daoRevenuePointsRate / 10000), msg.sender, daoAddress);
                        emit Transfer((arg2 - maximumFee), msg.sender, arg1);
    else:
        if not uint8(stor14[address(msg.sender)]):
            if block.timestamp <= 455997 * 3600:
                if 100 * 10^decimals / 100 != 10^decimals:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg2 > 100 * 10^decimals:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                58,
                                0x73506c65617365207761697420666f72203630206d696e757465732061667465722072656c6561736520746f207472616e73666572206d6f7265,
                                mem[222 len 6]
            if not arg2:
                if 0 <= maximumFee:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[358 len 26],
                                    mem[410 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, msg.sender, daoAddress);
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if maximumFee > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not maximumFee:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 - maximumFee < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                        if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if maximumFee > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= maximumFee
                        emit Transfer(0, msg.sender, daoAddress);
                    else:
                        require maximumFee
                        if maximumFee * daoRevenuePointsRate / maximumFee != daoRevenuePointsRate:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 - maximumFee < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                        if balanceOf[address(stor13.field_0)] + (maximumFee * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(stor13.field_0)] += maximumFee * daoRevenuePointsRate / 10000
                        if maximumFee > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if maximumFee * daoRevenuePointsRate / 10000 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply - maximumFee + (maximumFee * daoRevenuePointsRate / 10000)
                        emit Transfer((maximumFee * daoRevenuePointsRate / 10000), msg.sender, daoAddress);
                    emit Transfer((arg2 - maximumFee), msg.sender, arg1);
            else:
                require arg2
                if arg2 * basisPointsRate / arg2 != basisPointsRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg2 * basisPointsRate / 10000 <= maximumFee:
                    if arg2 * basisPointsRate / 10000 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2 * basisPointsRate / 10000:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000)
                        if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg2 * basisPointsRate / 10000 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg2 * basisPointsRate / 10000
                        emit Transfer(0, msg.sender, daoAddress);
                    else:
                        require arg2 * basisPointsRate / 10000
                        if arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / arg2 * basisPointsRate / 10000 != daoRevenuePointsRate:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000) < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000)
                        if balanceOf[address(stor13.field_0)] + (arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(stor13.field_0)] += arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000
                        if arg2 * basisPointsRate / 10000 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply - (arg2 * basisPointsRate / 10000) + (arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000)
                        emit Transfer((arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000), msg.sender, daoAddress);
                    emit Transfer((arg2 - (arg2 * basisPointsRate / 10000)), msg.sender, arg1);
                else:
                    if maximumFee > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not maximumFee:
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 - maximumFee < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                        if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if maximumFee > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= maximumFee
                        emit Transfer(0, msg.sender, daoAddress);
                    else:
                        require maximumFee
                        if maximumFee * daoRevenuePointsRate / maximumFee != daoRevenuePointsRate:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if balanceOf[address(arg1)] + arg2 - maximumFee < balanceOf[address(arg1)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                        if balanceOf[address(stor13.field_0)] + (maximumFee * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(stor13.field_0)] += maximumFee * daoRevenuePointsRate / 10000
                        if maximumFee > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if maximumFee * daoRevenuePointsRate / 10000 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply - maximumFee + (maximumFee * daoRevenuePointsRate / 10000)
                        emit Transfer((maximumFee * daoRevenuePointsRate / 10000), msg.sender, daoAddress);
                    emit Transfer((arg2 - maximumFee), msg.sender, arg1);
        else:
            if not uint8(whitelistMode):
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not uint8(stor16[address(msg.sender)]):
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if block.timestamp <= 455997 * 3600:
                        if 100 * 10^decimals / 100 != 10^decimals:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg2 > 100 * 10^decimals:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        58,
                                        0x73506c65617365207761697420666f72203630206d696e757465732061667465722072656c6561736520746f207472616e73666572206d6f7265,
                                        mem[222 len 6]
                    if not arg2:
                        if 0 <= maximumFee:
                            if 0 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] += arg2
                            if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, msg.sender, daoAddress);
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if maximumFee > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not maximumFee:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 - maximumFee < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                                if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if maximumFee > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= maximumFee
                                emit Transfer(0, msg.sender, daoAddress);
                            else:
                                require maximumFee
                                if maximumFee * daoRevenuePointsRate / maximumFee != daoRevenuePointsRate:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 - maximumFee < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                                if balanceOf[address(stor13.field_0)] + (maximumFee * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(stor13.field_0)] += maximumFee * daoRevenuePointsRate / 10000
                                if maximumFee > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if maximumFee * daoRevenuePointsRate / 10000 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = totalSupply - maximumFee + (maximumFee * daoRevenuePointsRate / 10000)
                                emit Transfer((maximumFee * daoRevenuePointsRate / 10000), msg.sender, daoAddress);
                            emit Transfer((arg2 - maximumFee), msg.sender, arg1);
                    else:
                        require arg2
                        if arg2 * basisPointsRate / arg2 != basisPointsRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg2 * basisPointsRate / 10000 <= maximumFee:
                            if arg2 * basisPointsRate / 10000 > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg2 * basisPointsRate / 10000:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000)
                                if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg2 * basisPointsRate / 10000 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg2 * basisPointsRate / 10000
                                emit Transfer(0, msg.sender, daoAddress);
                            else:
                                require arg2 * basisPointsRate / 10000
                                if arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / arg2 * basisPointsRate / 10000 != daoRevenuePointsRate:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000) < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 * basisPointsRate / 10000)
                                if balanceOf[address(stor13.field_0)] + (arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(stor13.field_0)] += arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000
                                if arg2 * basisPointsRate / 10000 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = totalSupply - (arg2 * basisPointsRate / 10000) + (arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000)
                                emit Transfer((arg2 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000), msg.sender, daoAddress);
                            emit Transfer((arg2 - (arg2 * basisPointsRate / 10000)), msg.sender, arg1);
                        else:
                            if maximumFee > arg2:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not maximumFee:
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 - maximumFee < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                                if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if maximumFee > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= maximumFee
                                emit Transfer(0, msg.sender, daoAddress);
                            else:
                                require maximumFee
                                if maximumFee * daoRevenuePointsRate / maximumFee != daoRevenuePointsRate:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if balanceOf[address(arg1)] + arg2 - maximumFee < balanceOf[address(arg1)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - maximumFee
                                if balanceOf[address(stor13.field_0)] + (maximumFee * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(stor13.field_0)] += maximumFee * daoRevenuePointsRate / 10000
                                if maximumFee > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if maximumFee * daoRevenuePointsRate / 10000 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = totalSupply - maximumFee + (maximumFee * daoRevenuePointsRate / 10000)
                                emit Transfer((maximumFee * daoRevenuePointsRate / 10000), msg.sender, daoAddress);
                            emit Transfer((arg2 - maximumFee), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
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
    if not blacklistMode:
        if not uint8(whitelistMode):
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] += arg3
            emit Transfer(arg3, arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[264 len 24],
                            mem[312 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
        else:
            if not uint8(stor16[address(arg1)]):
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                if block.timestamp <= 455997 * 3600:
                    if 100 * 10^decimals / 100 != 10^decimals:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg3 > 100 * 10^decimals:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    58,
                                    0x73506c65617365207761697420666f72203630206d696e757465732061667465722072656c6561736520746f207472616e73666572206d6f7265,
                                    mem[222 len 6]
                if not arg3:
                    if 0 <= maximumFee:
                        if 0 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] += arg3
                        if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 0 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        emit Transfer(0, arg1, daoAddress);
                        emit Transfer(arg3, arg1, arg2);
                    else:
                        if maximumFee > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not maximumFee:
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 - maximumFee < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                            if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if maximumFee > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= maximumFee
                            emit Transfer(0, arg1, daoAddress);
                        else:
                            require maximumFee
                            if maximumFee * daoRevenuePointsRate / maximumFee != daoRevenuePointsRate:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 - maximumFee < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                            if balanceOf[address(stor13.field_0)] + (maximumFee * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(stor13.field_0)] += maximumFee * daoRevenuePointsRate / 10000
                            if maximumFee > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if maximumFee * daoRevenuePointsRate / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = totalSupply - maximumFee + (maximumFee * daoRevenuePointsRate / 10000)
                            emit Transfer((maximumFee * daoRevenuePointsRate / 10000), arg1, daoAddress);
                        emit Transfer((arg3 - maximumFee), arg1, arg2);
                else:
                    require arg3
                    if arg3 * basisPointsRate / arg3 != basisPointsRate:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if arg3 * basisPointsRate / 10000 <= maximumFee:
                        if arg3 * basisPointsRate / 10000 > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg3 * basisPointsRate / 10000:
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000)
                            if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 * basisPointsRate / 10000 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg3 * basisPointsRate / 10000
                            emit Transfer(0, arg1, daoAddress);
                        else:
                            require arg3 * basisPointsRate / 10000
                            if arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / arg3 * basisPointsRate / 10000 != daoRevenuePointsRate:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000) < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000)
                            if balanceOf[address(stor13.field_0)] + (arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(stor13.field_0)] += arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000
                            if arg3 * basisPointsRate / 10000 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = totalSupply - (arg3 * basisPointsRate / 10000) + (arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000)
                            emit Transfer((arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000), arg1, daoAddress);
                        emit Transfer((arg3 - (arg3 * basisPointsRate / 10000)), arg1, arg2);
                    else:
                        if maximumFee > arg3:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not maximumFee:
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 - maximumFee < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                            if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if maximumFee > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= maximumFee
                            emit Transfer(0, arg1, daoAddress);
                        else:
                            require maximumFee
                            if maximumFee * daoRevenuePointsRate / maximumFee != daoRevenuePointsRate:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 - maximumFee < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                            if balanceOf[address(stor13.field_0)] + (maximumFee * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(stor13.field_0)] += maximumFee * daoRevenuePointsRate / 10000
                            if maximumFee > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if maximumFee * daoRevenuePointsRate / 10000 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalSupply = totalSupply - maximumFee + (maximumFee * daoRevenuePointsRate / 10000)
                            emit Transfer((maximumFee * daoRevenuePointsRate / 10000), arg1, daoAddress);
                        emit Transfer((arg3 - maximumFee), arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[520 len 24],
                                mem[568 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
    else:
        if not uint8(stor14[address(arg1)]):
            if block.timestamp <= 455997 * 3600:
                if 100 * 10^decimals / 100 != 10^decimals:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg3 > 100 * 10^decimals:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                58,
                                0x73506c65617365207761697420666f72203630206d696e757465732061667465722072656c6561736520746f207472616e73666572206d6f7265,
                                mem[222 len 6]
            if not arg3:
                if 0 <= maximumFee:
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[358 len 26],
                                    mem[410 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    emit Transfer(0, arg1, daoAddress);
                    emit Transfer(arg3, arg1, arg2);
                else:
                    if maximumFee > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not maximumFee:
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 - maximumFee < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                        if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if maximumFee > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= maximumFee
                        emit Transfer(0, arg1, daoAddress);
                    else:
                        require maximumFee
                        if maximumFee * daoRevenuePointsRate / maximumFee != daoRevenuePointsRate:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 - maximumFee < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                        if balanceOf[address(stor13.field_0)] + (maximumFee * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(stor13.field_0)] += maximumFee * daoRevenuePointsRate / 10000
                        if maximumFee > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if maximumFee * daoRevenuePointsRate / 10000 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply - maximumFee + (maximumFee * daoRevenuePointsRate / 10000)
                        emit Transfer((maximumFee * daoRevenuePointsRate / 10000), arg1, daoAddress);
                    emit Transfer((arg3 - maximumFee), arg1, arg2);
            else:
                require arg3
                if arg3 * basisPointsRate / arg3 != basisPointsRate:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if arg3 * basisPointsRate / 10000 <= maximumFee:
                    if arg3 * basisPointsRate / 10000 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg3 * basisPointsRate / 10000:
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000)
                        if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 * basisPointsRate / 10000 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg3 * basisPointsRate / 10000
                        emit Transfer(0, arg1, daoAddress);
                    else:
                        require arg3 * basisPointsRate / 10000
                        if arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / arg3 * basisPointsRate / 10000 != daoRevenuePointsRate:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000) < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000)
                        if balanceOf[address(stor13.field_0)] + (arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(stor13.field_0)] += arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000
                        if arg3 * basisPointsRate / 10000 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply - (arg3 * basisPointsRate / 10000) + (arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000)
                        emit Transfer((arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000), arg1, daoAddress);
                    emit Transfer((arg3 - (arg3 * basisPointsRate / 10000)), arg1, arg2);
                else:
                    if maximumFee > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not maximumFee:
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 - maximumFee < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                        if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        if maximumFee > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= maximumFee
                        emit Transfer(0, arg1, daoAddress);
                    else:
                        require maximumFee
                        if maximumFee * daoRevenuePointsRate / maximumFee != daoRevenuePointsRate:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if arg3 > balanceOf[address(arg1)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[358 len 26],
                                        mem[410 len 6]
                        balanceOf[address(arg1)] -= arg3
                        if balanceOf[address(arg2)] + arg3 - maximumFee < balanceOf[address(arg2)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                        if balanceOf[address(stor13.field_0)] + (maximumFee * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(stor13.field_0)] += maximumFee * daoRevenuePointsRate / 10000
                        if maximumFee > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if maximumFee * daoRevenuePointsRate / 10000 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = totalSupply - maximumFee + (maximumFee * daoRevenuePointsRate / 10000)
                        emit Transfer((maximumFee * daoRevenuePointsRate / 10000), arg1, daoAddress);
                    emit Transfer((arg3 - maximumFee), arg1, arg2);
            if arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[520 len 24],
                            mem[568 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
        else:
            if not uint8(whitelistMode):
                if arg3 > balanceOf[address(arg1)]:
                    revert with 0, 
                                32,
                                38,
                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(arg1)] -= arg3
                if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg2)] += arg3
                emit Transfer(arg3, arg1, arg2);
                if arg3 > allowance[address(arg1)][address(msg.sender)]:
                    revert with 0, 
                                32,
                                40,
                                0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                mem[264 len 24],
                                mem[312 len 8]
                if not arg1:
                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                if not msg.sender:
                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
            else:
                if not uint8(stor16[address(arg1)]):
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[264 len 24],
                                    mem[312 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
                else:
                    if block.timestamp <= 455997 * 3600:
                        if 100 * 10^decimals / 100 != 10^decimals:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg3 > 100 * 10^decimals:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        58,
                                        0x73506c65617365207761697420666f72203630206d696e757465732061667465722072656c6561736520746f207472616e73666572206d6f7265,
                                        mem[222 len 6]
                    if not arg3:
                        if 0 <= maximumFee:
                            if 0 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg3 > balanceOf[address(arg1)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[358 len 26],
                                            mem[410 len 6]
                            balanceOf[address(arg1)] -= arg3
                            if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg2)] += arg3
                            if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                revert with 0, 'SafeMath: addition overflow'
                            if 0 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if totalSupply < totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            emit Transfer(0, arg1, daoAddress);
                            emit Transfer(arg3, arg1, arg2);
                        else:
                            if maximumFee > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not maximumFee:
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 - maximumFee < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                                if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if maximumFee > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= maximumFee
                                emit Transfer(0, arg1, daoAddress);
                            else:
                                require maximumFee
                                if maximumFee * daoRevenuePointsRate / maximumFee != daoRevenuePointsRate:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 - maximumFee < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                                if balanceOf[address(stor13.field_0)] + (maximumFee * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(stor13.field_0)] += maximumFee * daoRevenuePointsRate / 10000
                                if maximumFee > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if maximumFee * daoRevenuePointsRate / 10000 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = totalSupply - maximumFee + (maximumFee * daoRevenuePointsRate / 10000)
                                emit Transfer((maximumFee * daoRevenuePointsRate / 10000), arg1, daoAddress);
                            emit Transfer((arg3 - maximumFee), arg1, arg2);
                    else:
                        require arg3
                        if arg3 * basisPointsRate / arg3 != basisPointsRate:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if arg3 * basisPointsRate / 10000 <= maximumFee:
                            if arg3 * basisPointsRate / 10000 > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not arg3 * basisPointsRate / 10000:
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000) < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000)
                                if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if arg3 * basisPointsRate / 10000 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg3 * basisPointsRate / 10000
                                emit Transfer(0, arg1, daoAddress);
                            else:
                                require arg3 * basisPointsRate / 10000
                                if arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / arg3 * basisPointsRate / 10000 != daoRevenuePointsRate:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000) < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - (arg3 * basisPointsRate / 10000)
                                if balanceOf[address(stor13.field_0)] + (arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(stor13.field_0)] += arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000
                                if arg3 * basisPointsRate / 10000 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = totalSupply - (arg3 * basisPointsRate / 10000) + (arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000)
                                emit Transfer((arg3 * basisPointsRate / 10000 * daoRevenuePointsRate / 10000), arg1, daoAddress);
                            emit Transfer((arg3 - (arg3 * basisPointsRate / 10000)), arg1, arg2);
                        else:
                            if maximumFee > arg3:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not maximumFee:
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 - maximumFee < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                                if balanceOf[address(stor13.field_0)] < balanceOf[address(stor13.field_0)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if maximumFee > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= maximumFee
                                emit Transfer(0, arg1, daoAddress);
                            else:
                                require maximumFee
                                if maximumFee * daoRevenuePointsRate / maximumFee != daoRevenuePointsRate:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if arg3 > balanceOf[address(arg1)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[358 len 26],
                                                mem[410 len 6]
                                balanceOf[address(arg1)] -= arg3
                                if balanceOf[address(arg2)] + arg3 - maximumFee < balanceOf[address(arg2)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg2)] = balanceOf[address(arg2)] + arg3 - maximumFee
                                if balanceOf[address(stor13.field_0)] + (maximumFee * daoRevenuePointsRate / 10000) < balanceOf[address(stor13.field_0)]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(stor13.field_0)] += maximumFee * daoRevenuePointsRate / 10000
                                if maximumFee > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if maximumFee * daoRevenuePointsRate / 10000 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalSupply = totalSupply - maximumFee + (maximumFee * daoRevenuePointsRate / 10000)
                                emit Transfer((maximumFee * daoRevenuePointsRate / 10000), arg1, daoAddress);
                            emit Transfer((arg3 - maximumFee), arg1, arg2);
                    if arg3 > allowance[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    40,
                                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                                    mem[520 len 24],
                                    mem[568 len 8]
                    if not arg1:
                        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[648 len 28]
                    if not msg.sender:
                        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[646 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
