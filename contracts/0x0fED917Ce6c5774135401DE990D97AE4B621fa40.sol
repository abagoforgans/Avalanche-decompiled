contract main {




// =====================  Runtime code  =====================


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
uint8 stor9;
uint8 taxEnabled; offset 8
uint8 sub_578407bb; offset 16
uint256 stor9; offset 16
uint256 stor9; offset 8
uint256 taxPercent;
uint256 burnPercent;
uint256 totalBurned;
address routerAddress;
address ecosystemAddress;
address vaultAddress;
address pairAddress;

function burnPercent() payable {
    return burnPercent
}

function totalSupply() payable {
    return totalSupply
}

function sub_578407bb(?) payable {
    return bool(sub_578407bb)
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function taxPercent() payable {
    return taxPercent
}

function taxEnabled() payable {
    return bool(taxEnabled)
}

function owner() payable {
    return owner
}

function ecosystem() payable {
    return ecosystemAddress
}

function isInBlacklist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function pair() payable {
    return pairAddress
}

function totalBurned() payable {
    return totalBurned
}

function sub_d8ab6ce1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function router() payable {
    return routerAddress
}

function vault() payable {
    return vaultAddress
}

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function isAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_9c648e44(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor9.field_8) = Mask(248, 0, not taxEnabled)
}

function sub_47a91dfc(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(240, 0, stor9.field_16) = Mask(240, 0, not sub_578407bb)
}

function setTaxPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    taxPercent = arg1
}

function setBurnPercent(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    burnPercent = arg1
}

function setVaultAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    vaultAddress = arg1
}

function setEcosystemAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ecosystemAddress = arg1
}

function setPairAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x2daa1347: pairAddress, arg1
    pairAddress = arg1
}

function sub_e3de2c1c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = uint8(bool(arg2))
    emit 0x36ee46fa: address(arg1), bool(arg2)
}

function updateBlacklist(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(arg2)
    emit BlacklistUpdated(address(arg1), arg2);
}

function sub_ba2c4afc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = uint8(bool(arg2))
    emit AuthorizationUpdated(address(arg1), bool(arg2));
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor7[msg.sender]:
        revert with 0, 'Nexus: unauthorized address'
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
}

function approve(address arg1, uint256 arg2) payable {
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

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor7[msg.sender]:
        revert with 0, 'Nexus: unauthorized address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function setRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    routerAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(routerAddress)
    staticcall routerAddress.WAVAX() with:
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
    pairAddress = ext_call.return_data[12 len 20]
    emit RouterUpdated(routerAddress, arg1);
    emit 0x2daa1347: pairAddress, pairAddress
}

function name() payable {
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

function symbol() payable {
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

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor6[msg.sender]:
        revert with 0, 'Nexus: blacklisted address'
    if stor6[address(msg.sender)]:
        revert with 0, 'Nexus: blacklisted address'
    if stor6[address(arg1)]:
        revert with 0, 'Nexus: blacklisted address'
    if uint8(stor9.field_0):
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(msg.sender)] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(msg.sender)] -= arg2
        if balanceOf[arg1] > !arg2:
            revert with 0, 17
        balanceOf[arg1] += arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if not vaultAddress:
            revert with 0, 'Nexus: vault address not set'
        if pairAddress != arg1:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(msg.sender)] < arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(msg.sender)] -= arg2
            if balanceOf[arg1] > !arg2:
                revert with 0, 17
            balanceOf[arg1] += arg2
            emit Transfer(arg2, msg.sender, arg1);
        else:
            if stor8[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(msg.sender)] < arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(msg.sender)] -= arg2
                if balanceOf[arg1] > !arg2:
                    revert with 0, 17
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if not taxEnabled:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] -= arg2
                    if balanceOf[arg1] > !arg2:
                        revert with 0, 17
                    balanceOf[arg1] += arg2
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if not sub_578407bb:
                        if arg2 and burnPercent > -1 / arg2:
                            revert with 0, 17
                        if arg2 and taxPercent > -1 / arg2:
                            revert with 0, 17
                        if arg2 * burnPercent / 100 > !(arg2 * taxPercent / 100):
                            revert with 0, 17
                        if arg2 < (arg2 * burnPercent / 100) + (arg2 * taxPercent / 100):
                            revert with 0, 17
                        if totalBurned > !(arg2 * burnPercent / 100):
                            revert with 0, 17
                        totalBurned += arg2 * burnPercent / 100
                        if arg2 * burnPercent / 100 > !(arg2 * taxPercent / 100):
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < (arg2 * burnPercent / 100) + (arg2 * taxPercent / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * burnPercent / 100) - (arg2 * taxPercent / 100)
                        if balanceOf[this.address] > !((arg2 * burnPercent / 100) + (arg2 * taxPercent / 100)):
                            revert with 0, 17
                        balanceOf[this.address] = balanceOf[this.address] + (arg2 * burnPercent / 100) + (arg2 * taxPercent / 100)
                        emit Transfer(((arg2 * burnPercent / 100) + (arg2 * taxPercent / 100)), msg.sender, this.address);
                        mem[128] = this.address
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[160] = ext_call.return_data[12 len 20]
                        uint8(stor9.field_0) = 1
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not routerAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13] = arg2 * taxPercent / 100
                        emit Approval((arg2 * taxPercent / 100), this.address, routerAddress);
                        mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = arg2 * taxPercent / 100
                        idx = 0
                        s = ceil32(return_data.size) + 388
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg2 * taxPercent / 100, 0, 160, vaultAddress, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    else:
                        if not ecosystemAddress:
                            revert with 0, 'Nexus: ecosystem address not set'
                        mem[100] = msg.sender
                        require ext_code.size(ecosystemAddress)
                        staticcall ecosystemAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Nexus: antibot mechanism in use'
                        if arg2 and burnPercent > -1 / arg2:
                            revert with 0, 17
                        if arg2 and taxPercent > -1 / arg2:
                            revert with 0, 17
                        if arg2 * burnPercent / 100 > !(arg2 * taxPercent / 100):
                            revert with 0, 17
                        if arg2 < (arg2 * burnPercent / 100) + (arg2 * taxPercent / 100):
                            revert with 0, 17
                        if totalBurned > !(arg2 * burnPercent / 100):
                            revert with 0, 17
                        totalBurned += arg2 * burnPercent / 100
                        if arg2 * burnPercent / 100 > !(arg2 * taxPercent / 100):
                            revert with 0, 17
                        if not msg.sender:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(msg.sender)] < (arg2 * burnPercent / 100) + (arg2 * taxPercent / 100):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 * burnPercent / 100) - (arg2 * taxPercent / 100)
                        if balanceOf[this.address] > !((arg2 * burnPercent / 100) + (arg2 * taxPercent / 100)):
                            revert with 0, 17
                        balanceOf[this.address] = balanceOf[this.address] + (arg2 * burnPercent / 100) + (arg2 * taxPercent / 100)
                        emit Transfer(((arg2 * burnPercent / 100) + (arg2 * taxPercent / 100)), msg.sender, this.address);
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = this.address
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        uint8(stor9.field_0) = 1
                        if not this.address:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 36
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        if not routerAddress:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 34
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        mem[0] = routerAddress
                        mem[32] = sha3(address(this.address), 1)
                        allowance[address(this.address)][stor13] = arg2 * taxPercent / 100
                        mem[(2 * ceil32(return_data.size)) + 192] = arg2 * taxPercent / 100
                        emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, routerAddress);
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg2 * taxPercent / 100
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 388
                        t = ceil32(return_data.size) + 128
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = vaultAddress
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor9.field_0) = 0
                    if not this.address:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(this.address)] < arg2 * burnPercent / 100:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(this.address)] -= arg2 * burnPercent / 100
                    if totalSupply < arg2 * burnPercent / 100:
                        revert with 0, 17
                    totalSupply -= arg2 * burnPercent / 100
                    emit Transfer((arg2 * burnPercent / 100), this.address, 0);
                    if not msg.sender:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg1:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(msg.sender)] < arg2 - (arg2 * burnPercent / 100) - (arg2 * taxPercent / 100):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 * burnPercent / 100) + (arg2 * taxPercent / 100)
                    if balanceOf[arg1] > !(arg2 - (arg2 * burnPercent / 100) - (arg2 * taxPercent / 100)):
                        revert with 0, 17
                    balanceOf[arg1] = balanceOf[arg1] + arg2 - (arg2 * burnPercent / 100) - (arg2 * taxPercent / 100)
                    emit Transfer((arg2 - (arg2 * burnPercent / 100) - (arg2 * taxPercent / 100)), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if stor6[msg.sender]:
        revert with 0, 'Nexus: blacklisted address'
    if stor6[address(arg1)]:
        revert with 0, 'Nexus: blacklisted address'
    if stor6[address(arg2)]:
        revert with 0, 'Nexus: blacklisted address'
    if uint8(stor9.field_0):
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if balanceOf[address(arg1)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
        balanceOf[address(arg1)] -= arg3
        if balanceOf[arg2] > !arg3:
            revert with 0, 17
        balanceOf[arg2] += arg3
        emit Transfer(arg3, arg1, arg2);
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Nexus: transfer amount exceeds allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    else:
        if not vaultAddress:
            revert with 0, 'Nexus: vault address not set'
        if pairAddress != arg2:
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if balanceOf[address(arg1)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
            balanceOf[address(arg1)] -= arg3
            if balanceOf[arg2] > !arg3:
                revert with 0, 17
            balanceOf[arg2] += arg3
            emit Transfer(arg3, arg1, arg2);
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Nexus: transfer amount exceeds allowance'
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        else:
            if stor8[address(arg1)]:
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                if balanceOf[address(arg1)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                balanceOf[address(arg1)] -= arg3
                if balanceOf[arg2] > !arg3:
                    revert with 0, 17
                balanceOf[arg2] += arg3
                emit Transfer(arg3, arg1, arg2);
                if allowance[address(arg1)][address(msg.sender)] < arg3:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Nexus: transfer amount exceeds allowance'
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
            else:
                if not taxEnabled:
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] -= arg3
                    if balanceOf[arg2] > !arg3:
                        revert with 0, 17
                    balanceOf[arg2] += arg3
                    emit Transfer(arg3, arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Nexus: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
                else:
                    if not sub_578407bb:
                        if arg3 and burnPercent > -1 / arg3:
                            revert with 0, 17
                        if arg3 and taxPercent > -1 / arg3:
                            revert with 0, 17
                        if arg3 * burnPercent / 100 > !(arg3 * taxPercent / 100):
                            revert with 0, 17
                        if arg3 < (arg3 * burnPercent / 100) + (arg3 * taxPercent / 100):
                            revert with 0, 17
                        if totalBurned > !(arg3 * burnPercent / 100):
                            revert with 0, 17
                        totalBurned += arg3 * burnPercent / 100
                        if arg3 * burnPercent / 100 > !(arg3 * taxPercent / 100):
                            revert with 0, 17
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < (arg3 * burnPercent / 100) + (arg3 * taxPercent / 100):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * burnPercent / 100) - (arg3 * taxPercent / 100)
                        if balanceOf[this.address] > !((arg3 * burnPercent / 100) + (arg3 * taxPercent / 100)):
                            revert with 0, 17
                        balanceOf[this.address] = balanceOf[this.address] + (arg3 * burnPercent / 100) + (arg3 * taxPercent / 100)
                        emit Transfer(((arg3 * burnPercent / 100) + (arg3 * taxPercent / 100)), arg1, this.address);
                        mem[128] = this.address
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[160] = ext_call.return_data[12 len 20]
                        uint8(stor9.field_0) = 1
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not routerAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor13] = arg3 * taxPercent / 100
                        emit Approval((arg3 * taxPercent / 100), this.address, routerAddress);
                        mem[ceil32(return_data.size) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[ceil32(return_data.size) + 196] = arg3 * taxPercent / 100
                        idx = 0
                        s = ceil32(return_data.size) + 388
                        t = 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForAVAXSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args arg3 * taxPercent / 100, 0, 160, vaultAddress, block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    else:
                        if not ecosystemAddress:
                            revert with 0, 'Nexus: ecosystem address not set'
                        mem[100] = arg1
                        require ext_code.size(ecosystemAddress)
                        staticcall ecosystemAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args arg1
                        mem[96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'Nexus: antibot mechanism in use'
                        if arg3 and burnPercent > -1 / arg3:
                            revert with 0, 17
                        if arg3 and taxPercent > -1 / arg3:
                            revert with 0, 17
                        if arg3 * burnPercent / 100 > !(arg3 * taxPercent / 100):
                            revert with 0, 17
                        if arg3 < (arg3 * burnPercent / 100) + (arg3 * taxPercent / 100):
                            revert with 0, 17
                        if totalBurned > !(arg3 * burnPercent / 100):
                            revert with 0, 17
                        totalBurned += arg3 * burnPercent / 100
                        if arg3 * burnPercent / 100 > !(arg3 * taxPercent / 100):
                            revert with 0, 17
                        if not arg1:
                            revert with 0, 'ERC20: transfer from the zero address'
                        if not this.address:
                            revert with 0, 'ERC20: transfer to the zero address'
                        if balanceOf[address(arg1)] < (arg3 * burnPercent / 100) + (arg3 * taxPercent / 100):
                            revert with 0, 'ERC20: transfer amount exceeds balance'
                        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (arg3 * burnPercent / 100) - (arg3 * taxPercent / 100)
                        if balanceOf[this.address] > !((arg3 * burnPercent / 100) + (arg3 * taxPercent / 100)):
                            revert with 0, 17
                        balanceOf[this.address] = balanceOf[this.address] + (arg3 * burnPercent / 100) + (arg3 * taxPercent / 100)
                        emit Transfer(((arg3 * burnPercent / 100) + (arg3 * taxPercent / 100)), arg1, this.address);
                        mem[ceil32(return_data.size) + 96] = 2
                        mem[ceil32(return_data.size) + 128] = this.address
                        require ext_code.size(routerAddress)
                        staticcall routerAddress.WAVAX() with:
                                gas gas_remaining wei
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = (2 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[ceil32(return_data.size) + 160] = ext_call.return_data[12 len 20]
                        uint8(stor9.field_0) = 1
                        if not this.address:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 36
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve from the zero add'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7265737300000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        if not routerAddress:
                            mem[(2 * ceil32(return_data.size)) + 192] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 196] = 32
                            mem[(2 * ceil32(return_data.size)) + 228] = 34
                            mem[(2 * ceil32(return_data.size)) + 260] = 'ERC20: approve to the zero addre'
                            mem[(2 * ceil32(return_data.size)) + 292] = 0x7373000000000000000000000000000000000000000000000000000000000000
                            revert with memory
                              from (2 * ceil32(return_data.size)) + 192
                               len ceil32(return_data.size) + 132
                        mem[0] = routerAddress
                        mem[32] = sha3(address(this.address), 1)
                        allowance[address(this.address)][stor13] = arg3 * taxPercent / 100
                        mem[(2 * ceil32(return_data.size)) + 192] = arg3 * taxPercent / 100
                        emit Approval(mem[(2 * ceil32(return_data.size)) + 192 len ceil32(return_data.size) + 32], this.address, routerAddress);
                        mem[(2 * ceil32(return_data.size)) + 192] = 0x762b156200000000000000000000000000000000000000000000000000000000
                        mem[(2 * ceil32(return_data.size)) + 196] = arg3 * taxPercent / 100
                        mem[(2 * ceil32(return_data.size)) + 228] = 0
                        mem[(2 * ceil32(return_data.size)) + 260] = 160
                        mem[(2 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = (2 * ceil32(return_data.size)) + 388
                        t = ceil32(return_data.size) + 128
                        while idx < mem[ceil32(return_data.size) + 96]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(2 * ceil32(return_data.size)) + 292] = vaultAddress
                        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp
                        require ext_code.size(routerAddress)
                        call routerAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 448]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    uint8(stor9.field_0) = 0
                    if not this.address:
                        revert with 0, 'ERC20: burn from the zero address'
                    if balanceOf[address(this.address)] < arg3 * burnPercent / 100:
                        revert with 0, 'ERC20: burn amount exceeds balance'
                    balanceOf[address(this.address)] -= arg3 * burnPercent / 100
                    if totalSupply < arg3 * burnPercent / 100:
                        revert with 0, 17
                    totalSupply -= arg3 * burnPercent / 100
                    emit Transfer((arg3 * burnPercent / 100), this.address, 0);
                    if not arg1:
                        revert with 0, 'ERC20: transfer from the zero address'
                    if not arg2:
                        revert with 0, 'ERC20: transfer to the zero address'
                    if balanceOf[address(arg1)] < arg3 - (arg3 * burnPercent / 100) - (arg3 * taxPercent / 100):
                        revert with 0, 'ERC20: transfer amount exceeds balance'
                    balanceOf[address(arg1)] = balanceOf[address(arg1)] - arg3 + (arg3 * burnPercent / 100) + (arg3 * taxPercent / 100)
                    if balanceOf[arg2] > !(arg3 - (arg3 * burnPercent / 100) - (arg3 * taxPercent / 100)):
                        revert with 0, 17
                    balanceOf[arg2] = balanceOf[arg2] + arg3 - (arg3 * burnPercent / 100) - (arg3 * taxPercent / 100)
                    emit Transfer((arg3 - (arg3 * burnPercent / 100) - (arg3 * taxPercent / 100)), arg1, arg2);
                    if allowance[address(arg1)][address(msg.sender)] < arg3:
                        revert with 0, 'Nexus: transfer amount exceeds allowance'
                    if not arg1:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not msg.sender:
                        revert with 0, 'ERC20: approve to the zero address'
    ('bool', 'msg.sender')
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
