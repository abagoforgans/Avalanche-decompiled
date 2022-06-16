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
uint8 stor8; offset 160
address owner;
uint256 sub_6d0313f0;
uint256 circulationSupply;
address treasuryWalletAddress;
address buybackWalletAddress;
uint256 buyBackFee;
uint256 treasuryFee;
array of address reserveTokens;
mapping of uint8 stor17;
uint256 sub_727c4b47;
uint8 sub_f48d7bd4;
uint8 mintable; offset 8
uint256 stor22; offset 8

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

function treasuryWallet() payable {
    return treasuryWalletAddress
}

function buyBackFee() payable {
    return buyBackFee
}

function mintable() payable {
    return bool(mintable)
}

function isReserveToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor17[arg1])
}

function sub_6d0313f0(?) payable {
    return sub_6d0313f0
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_727c4b47(?) payable {
    return sub_727c4b47
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function treasuryFee() payable {
    return treasuryFee
}

function reserveTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < reserveTokens.length
    return reserveTokens[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function buybackWallet() payable {
    return buybackWalletAddress
}

function circulationSupply() payable {
    return circulationSupply
}

function sub_f48d7bd4(?) payable {
    return bool(sub_f48d7bd4)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMintable(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor22 = Mask(248, 0, arg1)
}

function setBuybackWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Invalid address'
    buybackWalletAddress = arg1
}

function setTreasuryWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Invalid address'
    treasuryWalletAddress = arg1
}

function sub_84f2b384(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Token address should not be 0'
    if bool(stor17[address(arg1)]) != 1:
        reserveTokens.length++
        reserveTokens[reserveTokens.length] = arg1
        stor17[address(arg1)] = 1
}

function setBuybackFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x734275796261636b4665652073686f756c6420626520736d616c6c6572207468616e203130,
                    mem[201 len 27]
    buyBackFee = arg1
}

function setTreasuryFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7354726561737572794665652073686f756c6420626520736d616c6c6572207468616e203130,
                    mem[202 len 26]
    treasuryFee = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
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
                    0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573,
                    mem[197 len 31]
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 34, 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[162 len 30], mem[222 len 2]
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x3045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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

function sub_75f35cfb(?) payable {
    idx = 0
    s = 0
    while uint8(idx) < reserveTokens.length:
        mem[0] = reserveTokens[uint8(idx)]
        mem[32] = 17
        if not stor17[stor16[uint8(idx)]]:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < reserveTokens.length
        mem[0] = 16
        mem[100] = buybackWalletAddress
        require ext_code.size(reserveTokens[uint8(idx)])
        staticcall reserveTokens[uint8(idx)].0x70a08231 with:
                gas gas_remaining wei
               args buybackWalletAddress
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return s
}

function getTreasuryValue() payable {
    idx = 0
    s = 0
    while uint8(idx) < reserveTokens.length:
        mem[0] = reserveTokens[uint8(idx)]
        mem[32] = 17
        if not stor17[stor16[uint8(idx)]]:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < reserveTokens.length
        mem[0] = 16
        mem[100] = treasuryWalletAddress
        require ext_code.size(reserveTokens[uint8(idx)])
        staticcall reserveTokens[uint8(idx)].0x70a08231 with:
                gas gas_remaining wei
               args treasuryWalletAddress
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    return s
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x3045524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x3045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
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
                    0x3045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
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
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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
                    0x3045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[578 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[578 len 4]
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function getMintPrice() payable {
    if 0 == circulationSupply:
        return (2 * sub_727c4b47)
    idx = 0
    s = 0
    while uint8(idx) < reserveTokens.length:
        mem[0] = reserveTokens[uint8(idx)]
        mem[32] = 17
        if not stor17[stor16[uint8(idx)]]:
            idx = idx + 1
            s = s
            continue 
        require uint8(idx) < reserveTokens.length
        mem[0] = 16
        mem[100] = buybackWalletAddress
        require ext_code.size(reserveTokens[uint8(idx)])
        staticcall reserveTokens[uint8(idx)].0x70a08231 with:
                gas gas_remaining wei
               args buybackWalletAddress
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    require 10^stor8
    if not circulationSupply / 10^stor8:
        revert with 0, 'SafeMath: division by zero'
    if not s / circulationSupply / 10^stor8:
        if 0 > sub_727c4b47:
            return 0
    else:
        if 2 * s / circulationSupply / 10^stor8 / s / circulationSupply / 10^stor8 != 2:
            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if 2 * s / circulationSupply / 10^stor8 > sub_727c4b47:
            return (2 * s / circulationSupply / 10^stor8)
    return sub_727c4b47
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
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x3045524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function sub_c5a4cf80(?) payable {
    require calldata.size - 4 >= 64
    if not mintable:
        revert with 0, 'Minting is stopped'
    if not stor17[address(arg1)]:
        revert with 0, 'Not accepted'
    if arg2 <= 0:
        revert with 0, 'Invalid amount'
    if 0 == circulationSupply:
        if not arg2:
            if not 2 * sub_727c4b47:
                revert with 0, 'SafeMath: division by zero'
            if circulationSupply + (0 / 2 * sub_727c4b47) <= sub_6d0313f0:
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, treasuryWalletAddress, arg2 * treasuryFee / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, buybackWalletAddress, arg2 * buyBackFee / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (0 / 2 * sub_727c4b47) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 0 / 2 * sub_727c4b47
                if (0 / 2 * sub_727c4b47) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 0 / 2 * sub_727c4b47
                emit Transfer((0 / 2 * sub_727c4b47), this.address, msg.sender);
                circulationSupply += 0 / 2 * sub_727c4b47
                emit Mint(msg.sender, 0 / 2 * sub_727c4b47);
            else:
                if 0 == circulationSupply:
                    if not sub_6d0313f0 - circulationSupply:
                        if not 10^stor8:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                    else:
                        if (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / sub_6d0313f0 - circulationSupply != 2 * sub_727c4b47:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not 10^stor8:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                else:
                    idx = 0
                    s = 0
                    while uint8(idx) < reserveTokens.length:
                        mem[0] = reserveTokens[uint8(idx)]
                        mem[32] = 17
                        if not stor17[stor16[uint8(idx)]]:
                            idx = idx + 1
                            s = s
                            continue 
                        require uint8(idx) < reserveTokens.length
                        mem[0] = 16
                        mem[164] = buybackWalletAddress
                        require ext_code.size(reserveTokens[uint8(idx)])
                        staticcall reserveTokens[uint8(idx)].0x70a08231 with:
                                gas gas_remaining wei
                               args buybackWalletAddress
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = ext_call.return_data[0] + s
                        continue 
                    require 10^stor8
                    if not circulationSupply / 10^stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if not s / circulationSupply / 10^stor8:
                        if 0 > sub_727c4b47:
                            if sub_6d0313f0 - circulationSupply:
                                if 0 / sub_6d0313f0 - circulationSupply:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not 10^stor8:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                        else:
                            if not sub_6d0313f0 - circulationSupply:
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                            else:
                                if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                    else:
                        if 2 * s / circulationSupply / 10^stor8 / s / circulationSupply / 10^stor8 != 2:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 2 * s / circulationSupply / 10^stor8 > sub_727c4b47:
                            if not sub_6d0313f0 - circulationSupply:
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                            else:
                                if (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / sub_6d0313f0 - circulationSupply != 2 * s / circulationSupply / 10^stor8:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * buyBackFee / 100
                        else:
                            if not sub_6d0313f0 - circulationSupply:
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                            else:
                                if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if sub_6d0313f0 - circulationSupply + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply = sub_6d0313f0 - circulationSupply + totalSupply
                if sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)]
                emit Transfer((sub_6d0313f0 - circulationSupply), this.address, msg.sender);
                circulationSupply = sub_6d0313f0
                emit Mint(msg.sender, sub_6d0313f0 - circulationSupply);
        else:
            if 10^stor8 * arg2 / arg2 != 10^stor8:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not 2 * sub_727c4b47:
                revert with 0, 'SafeMath: division by zero'
            if circulationSupply + (10^stor8 * arg2 / 2 * sub_727c4b47) <= sub_6d0313f0:
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, treasuryWalletAddress, arg2 * treasuryFee / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(arg1)
                call arg1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, buybackWalletAddress, arg2 * buyBackFee / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if (10^stor8 * arg2 / 2 * sub_727c4b47) + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply += 10^stor8 * arg2 / 2 * sub_727c4b47
                if (10^stor8 * arg2 / 2 * sub_727c4b47) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] += 10^stor8 * arg2 / 2 * sub_727c4b47
                emit Transfer((10^stor8 * arg2 / 2 * sub_727c4b47), this.address, msg.sender);
                circulationSupply += 10^stor8 * arg2 / 2 * sub_727c4b47
                emit Mint(msg.sender, 10^stor8 * arg2 / 2 * sub_727c4b47);
            else:
                if 0 == circulationSupply:
                    if not sub_6d0313f0 - circulationSupply:
                        if not 10^stor8:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                    else:
                        if (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / sub_6d0313f0 - circulationSupply != 2 * sub_727c4b47:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                        if not 10^stor8:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                else:
                    idx = 0
                    s = 0
                    while uint8(idx) < reserveTokens.length:
                        mem[0] = reserveTokens[uint8(idx)]
                        mem[32] = 17
                        if not stor17[stor16[uint8(idx)]]:
                            idx = idx + 1
                            s = s
                            continue 
                        require uint8(idx) < reserveTokens.length
                        mem[0] = 16
                        mem[164] = buybackWalletAddress
                        require ext_code.size(reserveTokens[uint8(idx)])
                        staticcall reserveTokens[uint8(idx)].0x70a08231 with:
                                gas gas_remaining wei
                               args buybackWalletAddress
                        mem[160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        idx = idx + 1
                        s = ext_call.return_data[0] + s
                        continue 
                    require 10^stor8
                    if not circulationSupply / 10^stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if not s / circulationSupply / 10^stor8:
                        if 0 > sub_727c4b47:
                            if sub_6d0313f0 - circulationSupply:
                                if 0 / sub_6d0313f0 - circulationSupply:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not 10^stor8:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                        else:
                            if not sub_6d0313f0 - circulationSupply:
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                            else:
                                if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                    else:
                        if 2 * s / circulationSupply / 10^stor8 / s / circulationSupply / 10^stor8 != 2:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if 2 * s / circulationSupply / 10^stor8 > sub_727c4b47:
                            if not sub_6d0313f0 - circulationSupply:
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                            else:
                                if (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / sub_6d0313f0 - circulationSupply != 2 * s / circulationSupply / 10^stor8:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * buyBackFee / 100
                        else:
                            if not sub_6d0313f0 - circulationSupply:
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                            else:
                                if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not msg.sender:
                    revert with 0, 'ERC20: mint to the zero address'
                if sub_6d0313f0 - circulationSupply + totalSupply < totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                totalSupply = sub_6d0313f0 - circulationSupply + totalSupply
                if sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)]
                emit Transfer((sub_6d0313f0 - circulationSupply), this.address, msg.sender);
                circulationSupply = sub_6d0313f0
                emit Mint(msg.sender, sub_6d0313f0 - circulationSupply);
    else:
        idx = 0
        s = 0
        while uint8(idx) < reserveTokens.length:
            mem[0] = reserveTokens[uint8(idx)]
            mem[32] = 17
            if not stor17[stor16[uint8(idx)]]:
                idx = idx + 1
                s = s
                continue 
            require uint8(idx) < reserveTokens.length
            mem[0] = 16
            mem[100] = buybackWalletAddress
            require ext_code.size(reserveTokens[uint8(idx)])
            staticcall reserveTokens[uint8(idx)].0x70a08231 with:
                    gas gas_remaining wei
                   args buybackWalletAddress
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            idx = idx + 1
            s = ext_call.return_data[0] + s
            continue 
        require 10^stor8
        if not circulationSupply / 10^stor8:
            revert with 0, 'SafeMath: division by zero'
        if not s / circulationSupply / 10^stor8:
            if 0 > sub_727c4b47:
                if arg2:
                    if 10^stor8 * arg2 / arg2 != 10^stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                revert with 0, 'SafeMath: division by zero'
            if not arg2:
                if not sub_727c4b47:
                    revert with 0, 'SafeMath: division by zero'
                if circulationSupply + (0 / sub_727c4b47) <= sub_6d0313f0:
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, treasuryWalletAddress, arg2 * treasuryFee / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, buybackWalletAddress, arg2 * buyBackFee / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (0 / sub_727c4b47) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 0 / sub_727c4b47
                    if (0 / sub_727c4b47) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 0 / sub_727c4b47
                    emit Transfer((0 / sub_727c4b47), this.address, msg.sender);
                    circulationSupply += 0 / sub_727c4b47
                    emit Mint(msg.sender, 0 / sub_727c4b47);
                else:
                    if 0 == circulationSupply:
                        if not sub_6d0313f0 - circulationSupply:
                            if not 10^stor8:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                        else:
                            if (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / sub_6d0313f0 - circulationSupply != 2 * sub_727c4b47:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not 10^stor8:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                    else:
                        idx = 0
                        s = 0
                        while uint8(idx) < reserveTokens.length:
                            mem[0] = reserveTokens[uint8(idx)]
                            mem[32] = 17
                            if not stor17[stor16[uint8(idx)]]:
                                idx = idx + 1
                                s = s
                                continue 
                            require uint8(idx) < reserveTokens.length
                            mem[0] = 16
                            mem[228] = buybackWalletAddress
                            require ext_code.size(reserveTokens[uint8(idx)])
                            staticcall reserveTokens[uint8(idx)].0x70a08231 with:
                                    gas gas_remaining wei
                                   args buybackWalletAddress
                            mem[224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = ext_call.return_data[0] + s
                            continue 
                        require 10^stor8
                        if not circulationSupply / 10^stor8:
                            revert with 0, 'SafeMath: division by zero'
                        if not s / circulationSupply / 10^stor8:
                            if 0 > sub_727c4b47:
                                if sub_6d0313f0 - circulationSupply:
                                    if 0 / sub_6d0313f0 - circulationSupply:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                            else:
                                if not sub_6d0313f0 - circulationSupply:
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                else:
                                    if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                        else:
                            if 2 * s / circulationSupply / 10^stor8 / s / circulationSupply / 10^stor8 != 2:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 2 * s / circulationSupply / 10^stor8 > sub_727c4b47:
                                if not sub_6d0313f0 - circulationSupply:
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                else:
                                    if (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / sub_6d0313f0 - circulationSupply != 2 * s / circulationSupply / 10^stor8:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * buyBackFee / 100
                            else:
                                if not sub_6d0313f0 - circulationSupply:
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                else:
                                    if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if sub_6d0313f0 - circulationSupply + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply = sub_6d0313f0 - circulationSupply + totalSupply
                    if sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] = sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)]
                    emit Transfer((sub_6d0313f0 - circulationSupply), this.address, msg.sender);
                    circulationSupply = sub_6d0313f0
                    emit Mint(msg.sender, sub_6d0313f0 - circulationSupply);
            else:
                if 10^stor8 * arg2 / arg2 != 10^stor8:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not sub_727c4b47:
                    revert with 0, 'SafeMath: division by zero'
                if circulationSupply + (10^stor8 * arg2 / sub_727c4b47) <= sub_6d0313f0:
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, treasuryWalletAddress, arg2 * treasuryFee / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(arg1)
                    call arg1.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, buybackWalletAddress, arg2 * buyBackFee / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if (10^stor8 * arg2 / sub_727c4b47) + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply += 10^stor8 * arg2 / sub_727c4b47
                    if (10^stor8 * arg2 / sub_727c4b47) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] += 10^stor8 * arg2 / sub_727c4b47
                    emit Transfer((10^stor8 * arg2 / sub_727c4b47), this.address, msg.sender);
                    circulationSupply += 10^stor8 * arg2 / sub_727c4b47
                    emit Mint(msg.sender, 10^stor8 * arg2 / sub_727c4b47);
                else:
                    if 0 == circulationSupply:
                        if not sub_6d0313f0 - circulationSupply:
                            if not 10^stor8:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                        else:
                            if (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / sub_6d0313f0 - circulationSupply != 2 * sub_727c4b47:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not 10^stor8:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(arg1)
                            call arg1.0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                    else:
                        idx = 0
                        s = 0
                        while uint8(idx) < reserveTokens.length:
                            mem[0] = reserveTokens[uint8(idx)]
                            mem[32] = 17
                            if not stor17[stor16[uint8(idx)]]:
                                idx = idx + 1
                                s = s
                                continue 
                            require uint8(idx) < reserveTokens.length
                            mem[0] = 16
                            mem[228] = buybackWalletAddress
                            require ext_code.size(reserveTokens[uint8(idx)])
                            staticcall reserveTokens[uint8(idx)].0x70a08231 with:
                                    gas gas_remaining wei
                                   args buybackWalletAddress
                            mem[224] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            idx = idx + 1
                            s = ext_call.return_data[0] + s
                            continue 
                        require 10^stor8
                        if not circulationSupply / 10^stor8:
                            revert with 0, 'SafeMath: division by zero'
                        if not s / circulationSupply / 10^stor8:
                            if 0 > sub_727c4b47:
                                if sub_6d0313f0 - circulationSupply:
                                    if 0 / sub_6d0313f0 - circulationSupply:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                            else:
                                if not sub_6d0313f0 - circulationSupply:
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                else:
                                    if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                        else:
                            if 2 * s / circulationSupply / 10^stor8 / s / circulationSupply / 10^stor8 != 2:
                                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                            if 2 * s / circulationSupply / 10^stor8 > sub_727c4b47:
                                if not sub_6d0313f0 - circulationSupply:
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                else:
                                    if (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / sub_6d0313f0 - circulationSupply != 2 * s / circulationSupply / 10^stor8:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * buyBackFee / 100
                            else:
                                if not sub_6d0313f0 - circulationSupply:
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                else:
                                    if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not msg.sender:
                        revert with 0, 'ERC20: mint to the zero address'
                    if sub_6d0313f0 - circulationSupply + totalSupply < totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    totalSupply = sub_6d0313f0 - circulationSupply + totalSupply
                    if sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(msg.sender)] = sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)]
                    emit Transfer((sub_6d0313f0 - circulationSupply), this.address, msg.sender);
                    circulationSupply = sub_6d0313f0
                    emit Mint(msg.sender, sub_6d0313f0 - circulationSupply);
        else:
            if 2 * s / circulationSupply / 10^stor8 / s / circulationSupply / 10^stor8 != 2:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if 2 * s / circulationSupply / 10^stor8 > sub_727c4b47:
                if not arg2:
                    if not 2 * s / circulationSupply / 10^stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if circulationSupply + (0 / 2 * s / circulationSupply / 10^stor8) <= sub_6d0313f0:
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, treasuryWalletAddress, arg2 * treasuryFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, buybackWalletAddress, arg2 * buyBackFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / 2 * s / circulationSupply / 10^stor8) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / 2 * s / circulationSupply / 10^stor8
                        if (0 / 2 * s / circulationSupply / 10^stor8) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / 2 * s / circulationSupply / 10^stor8
                        emit Transfer((0 / 2 * s / circulationSupply / 10^stor8), this.address, msg.sender);
                        circulationSupply += 0 / 2 * s / circulationSupply / 10^stor8
                        emit Mint(msg.sender, 0 / 2 * s / circulationSupply / 10^stor8);
                    else:
                        if 0 == circulationSupply:
                            if not sub_6d0313f0 - circulationSupply:
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                            else:
                                if (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / sub_6d0313f0 - circulationSupply != 2 * sub_727c4b47:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                        else:
                            idx = 0
                            s = 0
                            while uint8(idx) < reserveTokens.length:
                                mem[0] = reserveTokens[uint8(idx)]
                                mem[32] = 17
                                if not stor17[stor16[uint8(idx)]]:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require uint8(idx) < reserveTokens.length
                                mem[0] = 16
                                mem[228] = buybackWalletAddress
                                require ext_code.size(reserveTokens[uint8(idx)])
                                staticcall reserveTokens[uint8(idx)].0x70a08231 with:
                                        gas gas_remaining wei
                                       args buybackWalletAddress
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            require 10^stor8
                            if not circulationSupply / 10^stor8:
                                revert with 0, 'SafeMath: division by zero'
                            if not s / circulationSupply / 10^stor8:
                                if 0 > sub_727c4b47:
                                    if sub_6d0313f0 - circulationSupply:
                                        if 0 / sub_6d0313f0 - circulationSupply:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                else:
                                    if not sub_6d0313f0 - circulationSupply:
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                    else:
                                        if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                            else:
                                if 2 * s / circulationSupply / 10^stor8 / s / circulationSupply / 10^stor8 != 2:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 2 * s / circulationSupply / 10^stor8 > sub_727c4b47:
                                    if not sub_6d0313f0 - circulationSupply:
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                    else:
                                        if (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / sub_6d0313f0 - circulationSupply != 2 * s / circulationSupply / 10^stor8:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * buyBackFee / 100
                                else:
                                    if not sub_6d0313f0 - circulationSupply:
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                    else:
                                        if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if sub_6d0313f0 - circulationSupply + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = sub_6d0313f0 - circulationSupply + totalSupply
                        if sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)]
                        emit Transfer((sub_6d0313f0 - circulationSupply), this.address, msg.sender);
                        circulationSupply = sub_6d0313f0
                        emit Mint(msg.sender, sub_6d0313f0 - circulationSupply);
                else:
                    if 10^stor8 * arg2 / arg2 != 10^stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not 2 * s / circulationSupply / 10^stor8:
                        revert with 0, 'SafeMath: division by zero'
                    if circulationSupply + (10^stor8 * arg2 / 2 * s / circulationSupply / 10^stor8) <= sub_6d0313f0:
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, treasuryWalletAddress, arg2 * treasuryFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, buybackWalletAddress, arg2 * buyBackFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10^stor8 * arg2 / 2 * s / circulationSupply / 10^stor8) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10^stor8 * arg2 / 2 * s / circulationSupply / 10^stor8
                        if (10^stor8 * arg2 / 2 * s / circulationSupply / 10^stor8) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10^stor8 * arg2 / 2 * s / circulationSupply / 10^stor8
                        emit Transfer((10^stor8 * arg2 / 2 * s / circulationSupply / 10^stor8), this.address, msg.sender);
                        circulationSupply += 10^stor8 * arg2 / 2 * s / circulationSupply / 10^stor8
                        emit Mint(msg.sender, 10^stor8 * arg2 / 2 * s / circulationSupply / 10^stor8);
                    else:
                        if 0 == circulationSupply:
                            if not sub_6d0313f0 - circulationSupply:
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                            else:
                                if (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / sub_6d0313f0 - circulationSupply != 2 * sub_727c4b47:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                        else:
                            idx = 0
                            s = 0
                            while uint8(idx) < reserveTokens.length:
                                mem[0] = reserveTokens[uint8(idx)]
                                mem[32] = 17
                                if not stor17[stor16[uint8(idx)]]:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require uint8(idx) < reserveTokens.length
                                mem[0] = 16
                                mem[228] = buybackWalletAddress
                                require ext_code.size(reserveTokens[uint8(idx)])
                                staticcall reserveTokens[uint8(idx)].0x70a08231 with:
                                        gas gas_remaining wei
                                       args buybackWalletAddress
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            require 10^stor8
                            if not circulationSupply / 10^stor8:
                                revert with 0, 'SafeMath: division by zero'
                            if not s / circulationSupply / 10^stor8:
                                if 0 > sub_727c4b47:
                                    if sub_6d0313f0 - circulationSupply:
                                        if 0 / sub_6d0313f0 - circulationSupply:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                else:
                                    if not sub_6d0313f0 - circulationSupply:
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                    else:
                                        if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                            else:
                                if 2 * s / circulationSupply / 10^stor8 / s / circulationSupply / 10^stor8 != 2:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 2 * s / circulationSupply / 10^stor8 > sub_727c4b47:
                                    if not sub_6d0313f0 - circulationSupply:
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                    else:
                                        if (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / sub_6d0313f0 - circulationSupply != 2 * s / circulationSupply / 10^stor8:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * buyBackFee / 100
                                else:
                                    if not sub_6d0313f0 - circulationSupply:
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                    else:
                                        if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if sub_6d0313f0 - circulationSupply + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = sub_6d0313f0 - circulationSupply + totalSupply
                        if sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)]
                        emit Transfer((sub_6d0313f0 - circulationSupply), this.address, msg.sender);
                        circulationSupply = sub_6d0313f0
                        emit Mint(msg.sender, sub_6d0313f0 - circulationSupply);
            else:
                if not arg2:
                    if not sub_727c4b47:
                        revert with 0, 'SafeMath: division by zero'
                    if circulationSupply + (0 / sub_727c4b47) <= sub_6d0313f0:
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, treasuryWalletAddress, arg2 * treasuryFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, buybackWalletAddress, arg2 * buyBackFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (0 / sub_727c4b47) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 0 / sub_727c4b47
                        if (0 / sub_727c4b47) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 0 / sub_727c4b47
                        emit Transfer((0 / sub_727c4b47), this.address, msg.sender);
                        circulationSupply += 0 / sub_727c4b47
                        emit Mint(msg.sender, 0 / sub_727c4b47);
                    else:
                        if 0 == circulationSupply:
                            if not sub_6d0313f0 - circulationSupply:
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                            else:
                                if (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / sub_6d0313f0 - circulationSupply != 2 * sub_727c4b47:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                        else:
                            idx = 0
                            s = 0
                            while uint8(idx) < reserveTokens.length:
                                mem[0] = reserveTokens[uint8(idx)]
                                mem[32] = 17
                                if not stor17[stor16[uint8(idx)]]:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require uint8(idx) < reserveTokens.length
                                mem[0] = 16
                                mem[228] = buybackWalletAddress
                                require ext_code.size(reserveTokens[uint8(idx)])
                                staticcall reserveTokens[uint8(idx)].0x70a08231 with:
                                        gas gas_remaining wei
                                       args buybackWalletAddress
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            require 10^stor8
                            if not circulationSupply / 10^stor8:
                                revert with 0, 'SafeMath: division by zero'
                            if not s / circulationSupply / 10^stor8:
                                if 0 > sub_727c4b47:
                                    if sub_6d0313f0 - circulationSupply:
                                        if 0 / sub_6d0313f0 - circulationSupply:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                else:
                                    if not sub_6d0313f0 - circulationSupply:
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                    else:
                                        if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                            else:
                                if 2 * s / circulationSupply / 10^stor8 / s / circulationSupply / 10^stor8 != 2:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 2 * s / circulationSupply / 10^stor8 > sub_727c4b47:
                                    if not sub_6d0313f0 - circulationSupply:
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                    else:
                                        if (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / sub_6d0313f0 - circulationSupply != 2 * s / circulationSupply / 10^stor8:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * buyBackFee / 100
                                else:
                                    if not sub_6d0313f0 - circulationSupply:
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                    else:
                                        if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if sub_6d0313f0 - circulationSupply + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = sub_6d0313f0 - circulationSupply + totalSupply
                        if sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)]
                        emit Transfer((sub_6d0313f0 - circulationSupply), this.address, msg.sender);
                        circulationSupply = sub_6d0313f0
                        emit Mint(msg.sender, sub_6d0313f0 - circulationSupply);
                else:
                    if 10^stor8 * arg2 / arg2 != 10^stor8:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not sub_727c4b47:
                        revert with 0, 'SafeMath: division by zero'
                    if circulationSupply + (10^stor8 * arg2 / sub_727c4b47) <= sub_6d0313f0:
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, treasuryWalletAddress, arg2 * treasuryFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(arg1)
                        call arg1.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, buybackWalletAddress, arg2 * buyBackFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if (10^stor8 * arg2 / sub_727c4b47) + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply += 10^stor8 * arg2 / sub_727c4b47
                        if (10^stor8 * arg2 / sub_727c4b47) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] += 10^stor8 * arg2 / sub_727c4b47
                        emit Transfer((10^stor8 * arg2 / sub_727c4b47), this.address, msg.sender);
                        circulationSupply += 10^stor8 * arg2 / sub_727c4b47
                        emit Mint(msg.sender, 10^stor8 * arg2 / sub_727c4b47);
                    else:
                        if 0 == circulationSupply:
                            if not sub_6d0313f0 - circulationSupply:
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                            else:
                                if (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / sub_6d0313f0 - circulationSupply != 2 * sub_727c4b47:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not 10^stor8:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(arg1)
                                call arg1.0x23b872dd with:
                                     gas gas_remaining wei
                                    args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * sub_727c4b47) - (circulationSupply * 2 * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                        else:
                            idx = 0
                            s = 0
                            while uint8(idx) < reserveTokens.length:
                                mem[0] = reserveTokens[uint8(idx)]
                                mem[32] = 17
                                if not stor17[stor16[uint8(idx)]]:
                                    idx = idx + 1
                                    s = s
                                    continue 
                                require uint8(idx) < reserveTokens.length
                                mem[0] = 16
                                mem[228] = buybackWalletAddress
                                require ext_code.size(reserveTokens[uint8(idx)])
                                staticcall reserveTokens[uint8(idx)].0x70a08231 with:
                                        gas gas_remaining wei
                                       args buybackWalletAddress
                                mem[224] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                idx = idx + 1
                                s = ext_call.return_data[0] + s
                                continue 
                            require 10^stor8
                            if not circulationSupply / 10^stor8:
                                revert with 0, 'SafeMath: division by zero'
                            if not s / circulationSupply / 10^stor8:
                                if 0 > sub_727c4b47:
                                    if sub_6d0313f0 - circulationSupply:
                                        if 0 / sub_6d0313f0 - circulationSupply:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                    if not 10^stor8:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(arg1)
                                    call arg1.0x23b872dd with:
                                         gas gas_remaining wei
                                        args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                else:
                                    if not sub_6d0313f0 - circulationSupply:
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                    else:
                                        if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                            else:
                                if 2 * s / circulationSupply / 10^stor8 / s / circulationSupply / 10^stor8 != 2:
                                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if 2 * s / circulationSupply / 10^stor8 > sub_727c4b47:
                                    if not sub_6d0313f0 - circulationSupply:
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                    else:
                                        if (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / sub_6d0313f0 - circulationSupply != 2 * s / circulationSupply / 10^stor8:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * 2 * s / circulationSupply / 10^stor8) - (circulationSupply * 2 * s / circulationSupply / 10^stor8) / 10^stor8 * buyBackFee / 100
                                else:
                                    if not sub_6d0313f0 - circulationSupply:
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, 0 / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, 0 / 10^stor8 * buyBackFee / 100
                                    else:
                                        if (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / sub_6d0313f0 - circulationSupply != sub_727c4b47:
                                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                        if not 10^stor8:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, treasuryWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * treasuryFee / 100
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(arg1)
                                        call arg1.0x23b872dd with:
                                             gas gas_remaining wei
                                            args msg.sender, buybackWalletAddress, (sub_6d0313f0 * sub_727c4b47) - (circulationSupply * sub_727c4b47) / 10^stor8 * buyBackFee / 100
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not msg.sender:
                            revert with 0, 'ERC20: mint to the zero address'
                        if sub_6d0313f0 - circulationSupply + totalSupply < totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        totalSupply = sub_6d0313f0 - circulationSupply + totalSupply
                        if sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(msg.sender)] = sub_6d0313f0 - circulationSupply + balanceOf[address(msg.sender)]
                        emit Transfer((sub_6d0313f0 - circulationSupply), this.address, msg.sender);
                        circulationSupply = sub_6d0313f0
                        emit Mint(msg.sender, sub_6d0313f0 - circulationSupply);
}



}
