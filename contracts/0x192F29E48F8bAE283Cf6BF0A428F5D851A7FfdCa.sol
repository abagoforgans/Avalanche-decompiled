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
address treasuryAddress;
address sub_84ff3e1bAddress;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 taxFee;
uint256 burnRate;
uint8 tokenLock;
uint256 stor16;
uint256 sub_7ba8edf5;
mapping of uint8 stor18;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function whiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(stor18[arg1]))
}

function isExcludedFromFees(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(stor13[arg1]))
}

function treasury() payable {
    return treasuryAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_7ba8edf5(?) payable {
    return sub_7ba8edf5
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[address(arg1)]
}

function sub_8072b47c(?) payable {
    require calldata.size - 4 >= 32
    return bool(uint8(stor12[arg1]))
}

function sub_84ff3e1b(?) payable {
    return sub_84ff3e1bAddress
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function taxFee() payable {
    return taxFee
}

function burnRate() payable {
    return burnRate
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function tokenLock() payable {
    return bool(uint8(tokenLock))
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function sub_f819b8b6(?) payable {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    sub_7ba8edf5++
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function updateTaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    taxFee = arg1
}

function updateBurnRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    burnRate = arg1
}

function updateTreasuryAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    treasuryAddress = arg1
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    vaultAddress = arg1
    return 1
}

function setTokenLock() payable {
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    if sub_7ba8edf5:
        revert with 0, 'Can't lock forever!'
    uint256(stor16) = not uint8(tokenLock) or Mask(248, 8, uint256(stor16))
}

function setWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    uint256(stor18[address(arg1)]) = not uint8(stor18[address(arg1)]) or Mask(248, 8, uint256(stor18[address(arg1)]))
}

function sub_0425ff7f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    uint256(stor13[address(arg1)]) = not uint8(stor13[address(arg1)]) or Mask(248, 8, uint256(stor13[address(arg1)]))
    emit 0x28dcba12: bool(uint8(not uint8(stor13[address(arg1)]))), arg1
}

function sub_b9457c3b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
    uint256(stor12[address(arg1)]) = not uint8(stor12[address(arg1)]) or Mask(248, 8, uint256(stor12[address(arg1)]))
    emit 0x28dcba12: bool(uint8(not uint8(stor12[address(arg1)]))), arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'tOwnable: caller is not the owne'
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
                    0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit 0x65ddf252: arg1, msg.sender, 0
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
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit 0x65ddf252: arg2, this.address, arg1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x7345524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
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
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7245524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit 0x65ddf252: arg2, arg1, 0
}

function _burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7245524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    if not arg1:
        revert with 0, 32, 33, 0xef45524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[293 len 31]
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[258 len 30], mem[318 len 2]
    balanceOf[address(arg1)] -= arg2
    if arg2 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg2
    emit 0x65ddf252: arg2, arg1, 0
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
    if uint8(tokenLock):
        if not uint8(stor18[address(msg.sender)]):
            if not uint8(stor18[address(arg1)]):
                revert with 0, 'ERC20: lock now'
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
    if not uint8(stor12[address(arg1)]):
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
        if arg2 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(msg.sender)] -= arg2
        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
        emit 0x65ddf252: arg2, msg.sender, arg1
        emit 0x65ddf252: arg2, msg.sender, arg1
    else:
        if uint8(stor13[address(msg.sender)]):
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
            if arg2 > balanceOf[address(msg.sender)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(msg.sender)] -= arg2
            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
            emit 0x65ddf252: arg2, msg.sender, arg1
            emit 0x65ddf252: arg2, msg.sender, arg1
        else:
            if not arg2:
                if not arg2:
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[422 len 26],
                                    mem[474 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit 0x65ddf252: arg2, msg.sender, arg1
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                    if not sub_84ff3e1bAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[518 len 26],
                                    mem[570 len 6]
                    if balanceOf[stor11] < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] = balanceOf[stor11]
                    emit 0x65ddf252: 0, msg.sender, sub_84ff3e1bAddress
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                    if not treasuryAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[614 len 26],
                                    mem[666 len 6]
                    if balanceOf[stor10] < balanceOf[stor10]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor10] = balanceOf[stor10]
                    emit 0x65ddf252: 0, msg.sender, treasuryAddress
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x65ddf252: arg2, msg.sender, arg1
                else:
                    if burnRate * arg2 / arg2 != burnRate:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if burnRate * arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                    if arg2 - (burnRate * arg2 / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[422 len 26],
                                    mem[474 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (burnRate * arg2 / 100)
                    if arg2 - (burnRate * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (burnRate * arg2 / 100) + balanceOf[arg1]
                    emit 0x65ddf252: (arg2 - (burnRate * arg2 / 100)), msg.sender, arg1
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                    if not sub_84ff3e1bAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                    if burnRate * arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[518 len 26],
                                    mem[570 len 6]
                    balanceOf[address(msg.sender)] -= burnRate * arg2 / 100
                    if (burnRate * arg2 / 100) + balanceOf[stor11] < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] += burnRate * arg2 / 100
                    emit 0x65ddf252: (burnRate * arg2 / 100), msg.sender, sub_84ff3e1bAddress
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                    if not treasuryAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[614 len 26],
                                    mem[666 len 6]
                    if balanceOf[stor10] < balanceOf[stor10]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor10] = balanceOf[stor10]
                    emit 0x65ddf252: 0, msg.sender, treasuryAddress
                    if 0 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if burnRate * arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x65ddf252: (arg2 - (burnRate * arg2 / 100)), msg.sender, arg1
            else:
                if taxFee * arg2 / arg2 != taxFee:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not arg2:
                    if taxFee * arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg2 - (taxFee * arg2 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                    if arg2 - (taxFee * arg2 / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[422 len 26],
                                    mem[474 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (taxFee * arg2 / 100)
                    if arg2 - (taxFee * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (taxFee * arg2 / 100) + balanceOf[arg1]
                    emit 0x65ddf252: (arg2 - (taxFee * arg2 / 100)), msg.sender, arg1
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                    if not sub_84ff3e1bAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                    if 0 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[518 len 26],
                                    mem[570 len 6]
                    if balanceOf[stor11] < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] = balanceOf[stor11]
                    emit 0x65ddf252: 0, msg.sender, sub_84ff3e1bAddress
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                    if not treasuryAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                    if taxFee * arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[614 len 26],
                                    mem[666 len 6]
                    balanceOf[address(msg.sender)] -= taxFee * arg2 / 100
                    if (taxFee * arg2 / 100) + balanceOf[stor10] < balanceOf[stor10]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor10] += taxFee * arg2 / 100
                    emit 0x65ddf252: (taxFee * arg2 / 100), msg.sender, treasuryAddress
                    if taxFee * arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg2 - (taxFee * arg2 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x65ddf252: (arg2 - (taxFee * arg2 / 100)), msg.sender, arg1
                else:
                    if burnRate * arg2 / arg2 != burnRate:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if taxFee * arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if burnRate * arg2 / 100 > arg2 - (taxFee * arg2 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                    if not arg1:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                    if arg2 - (taxFee * arg2 / 100) - (burnRate * arg2 / 100) > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[422 len 26],
                                    mem[474 len 6]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (taxFee * arg2 / 100) + (burnRate * arg2 / 100)
                    if arg2 - (taxFee * arg2 / 100) - (burnRate * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 - (taxFee * arg2 / 100) - (burnRate * arg2 / 100) + balanceOf[arg1]
                    emit 0x65ddf252: (arg2 - (taxFee * arg2 / 100) - (burnRate * arg2 / 100)), msg.sender, arg1
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                    if not sub_84ff3e1bAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                    if burnRate * arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[518 len 26],
                                    mem[570 len 6]
                    balanceOf[address(msg.sender)] -= burnRate * arg2 / 100
                    if (burnRate * arg2 / 100) + balanceOf[stor11] < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] += burnRate * arg2 / 100
                    emit 0x65ddf252: (burnRate * arg2 / 100), msg.sender, sub_84ff3e1bAddress
                    if not msg.sender:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                    if not treasuryAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                    if taxFee * arg2 / 100 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[614 len 26],
                                    mem[666 len 6]
                    balanceOf[address(msg.sender)] -= taxFee * arg2 / 100
                    if (taxFee * arg2 / 100) + balanceOf[stor10] < balanceOf[stor10]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor10] += taxFee * arg2 / 100
                    emit 0x65ddf252: (taxFee * arg2 / 100), msg.sender, treasuryAddress
                    if taxFee * arg2 / 100 > arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if burnRate * arg2 / 100 > arg2 - (taxFee * arg2 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x65ddf252: (arg2 - (taxFee * arg2 / 100) - (burnRate * arg2 / 100)), msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(tokenLock):
        if not uint8(stor18[address(arg1)]):
            if not uint8(stor18[address(arg2)]):
                revert with 0, 'ERC20: lock now'
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
    if not uint8(stor12[address(arg2)]):
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
        if arg3 > balanceOf[address(arg1)]:
            revert with 0, 
                        32,
                        38,
                        0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        balanceOf[address(arg1)] -= arg3
        if arg3 + balanceOf[arg2] < balanceOf[arg2]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
        emit 0x65ddf252: arg3, arg1, arg2
        emit 0x65ddf252: arg3, arg1, arg2
        if arg3 > allowance[address(arg1)][msg.sender]:
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
        if uint8(stor13[address(arg1)]):
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
            if arg3 > balanceOf[address(arg1)]:
                revert with 0, 
                            32,
                            38,
                            0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                            mem[166 len 26],
                            mem[218 len 6]
            balanceOf[address(arg1)] -= arg3
            if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit 0x65ddf252: arg3, arg1, arg2
            emit 0x65ddf252: arg3, arg1, arg2
            if arg3 > allowance[address(arg1)][msg.sender]:
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
            if not arg3:
                if not arg3:
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                    if arg3 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[422 len 26],
                                    mem[474 len 6]
                    balanceOf[address(arg1)] -= arg3
                    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
                    emit 0x65ddf252: arg3, arg1, arg2
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                    if not sub_84ff3e1bAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[518 len 26],
                                    mem[570 len 6]
                    if balanceOf[stor11] < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] = balanceOf[stor11]
                    emit 0x65ddf252: 0, arg1, sub_84ff3e1bAddress
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                    if not treasuryAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[614 len 26],
                                    mem[666 len 6]
                    if balanceOf[stor10] < balanceOf[stor10]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor10] = balanceOf[stor10]
                    emit 0x65ddf252: 0, arg1, treasuryAddress
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x65ddf252: arg3, arg1, arg2
                else:
                    if burnRate * arg3 / arg3 != burnRate:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if burnRate * arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                    if arg3 - (burnRate * arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[422 len 26],
                                    mem[474 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (burnRate * arg3 / 100)
                    if arg3 - (burnRate * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (burnRate * arg3 / 100) + balanceOf[arg2]
                    emit 0x65ddf252: (arg3 - (burnRate * arg3 / 100)), arg1, arg2
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                    if not sub_84ff3e1bAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                    if burnRate * arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[518 len 26],
                                    mem[570 len 6]
                    balanceOf[address(arg1)] -= burnRate * arg3 / 100
                    if (burnRate * arg3 / 100) + balanceOf[stor11] < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] += burnRate * arg3 / 100
                    emit 0x65ddf252: (burnRate * arg3 / 100), arg1, sub_84ff3e1bAddress
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                    if not treasuryAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[614 len 26],
                                    mem[666 len 6]
                    if balanceOf[stor10] < balanceOf[stor10]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor10] = balanceOf[stor10]
                    emit 0x65ddf252: 0, arg1, treasuryAddress
                    if 0 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if burnRate * arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x65ddf252: (arg3 - (burnRate * arg3 / 100)), arg1, arg2
            else:
                if taxFee * arg3 / arg3 != taxFee:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not arg3:
                    if taxFee * arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg3 - (taxFee * arg3 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                    if arg3 - (taxFee * arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[422 len 26],
                                    mem[474 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (taxFee * arg3 / 100)
                    if arg3 - (taxFee * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (taxFee * arg3 / 100) + balanceOf[arg2]
                    emit 0x65ddf252: (arg3 - (taxFee * arg3 / 100)), arg1, arg2
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                    if not sub_84ff3e1bAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                    if 0 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[518 len 26],
                                    mem[570 len 6]
                    if balanceOf[stor11] < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] = balanceOf[stor11]
                    emit 0x65ddf252: 0, arg1, sub_84ff3e1bAddress
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                    if not treasuryAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                    if taxFee * arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[614 len 26],
                                    mem[666 len 6]
                    balanceOf[address(arg1)] -= taxFee * arg3 / 100
                    if (taxFee * arg3 / 100) + balanceOf[stor10] < balanceOf[stor10]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor10] += taxFee * arg3 / 100
                    emit 0x65ddf252: (taxFee * arg3 / 100), arg1, treasuryAddress
                    if taxFee * arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > arg3 - (taxFee * arg3 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x65ddf252: (arg3 - (taxFee * arg3 / 100)), arg1, arg2
                else:
                    if burnRate * arg3 / arg3 != burnRate:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if taxFee * arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if burnRate * arg3 / 100 > arg3 - (taxFee * arg3 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[457 len 27]
                    if not arg2:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[455 len 29]
                    if arg3 - (taxFee * arg3 / 100) - (burnRate * arg3 / 100) > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[422 len 26],
                                    mem[474 len 6]
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (taxFee * arg3 / 100) + (burnRate * arg3 / 100)
                    if arg3 - (taxFee * arg3 / 100) - (burnRate * arg3 / 100) + balanceOf[arg2] < balanceOf[arg2]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg2)] = arg3 - (taxFee * arg3 / 100) - (burnRate * arg3 / 100) + balanceOf[arg2]
                    emit 0x65ddf252: (arg3 - (taxFee * arg3 / 100) - (burnRate * arg3 / 100)), arg1, arg2
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[553 len 27]
                    if not sub_84ff3e1bAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[551 len 29]
                    if burnRate * arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[518 len 26],
                                    mem[570 len 6]
                    balanceOf[address(arg1)] -= burnRate * arg3 / 100
                    if (burnRate * arg3 / 100) + balanceOf[stor11] < balanceOf[stor11]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor11] += burnRate * arg3 / 100
                    emit 0x65ddf252: (burnRate * arg3 / 100), arg1, sub_84ff3e1bAddress
                    if not arg1:
                        revert with 0, 32, 37, 0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[649 len 27]
                    if not treasuryAddress:
                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[647 len 29]
                    if taxFee * arg3 / 100 > balanceOf[address(arg1)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[614 len 26],
                                    mem[666 len 6]
                    balanceOf[address(arg1)] -= taxFee * arg3 / 100
                    if (taxFee * arg3 / 100) + balanceOf[stor10] < balanceOf[stor10]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[stor10] += taxFee * arg3 / 100
                    emit 0x65ddf252: (taxFee * arg3 / 100), arg1, treasuryAddress
                    if taxFee * arg3 / 100 > arg3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if burnRate * arg3 / 100 > arg3 - (taxFee * arg3 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    emit 0x65ddf252: (arg3 - (taxFee * arg3 / 100) - (burnRate * arg3 / 100)), arg1, arg2
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 
                            32,
                            40,
                            0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                            mem[840 len 24],
                            mem[888 len 8]
            if not arg1:
                revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[968 len 28]
            if not msg.sender:
                revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[966 len 30]
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
