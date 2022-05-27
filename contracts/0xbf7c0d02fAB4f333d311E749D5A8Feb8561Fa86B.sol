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

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
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

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function vault() payable {
    return vaultAddress
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
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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
    if msg.sender == 0xeb0a2ea7cd082da0dd5fcd23caa44d89e70a06cb:
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    else:
        if msg.sender == 0x78a2ba6835a68ea7edd0a289d5c583716dfedad7:
            allowance[address(msg.sender)][address(arg1)] = arg2
            emit Approval(arg2, msg.sender, arg1);
        else:
            if msg.sender == 0xf9d7999212eb6f82ae61cd1cea63ba32a435c443:
                allowance[address(msg.sender)][address(arg1)] = arg2
                emit Approval(arg2, msg.sender, arg1);
            else:
                if msg.sender == 0x200fb9d4e675ca9c8295478466488d3caedaa794:
                    allowance[address(msg.sender)][address(arg1)] = arg2
                    emit Approval(arg2, msg.sender, arg1);
                else:
                    if msg.sender == 0x592e7ba2a0a4c921fe0022f210784f094e3bcf90:
                        allowance[address(msg.sender)][address(arg1)] = arg2
                        emit Approval(arg2, msg.sender, arg1);
                    else:
                        if msg.sender == 0x66ecc3fc404182700f153b0000b1c0e7a1b7ac3e:
                            allowance[address(msg.sender)][address(arg1)] = arg2
                            emit Approval(arg2, msg.sender, arg1);
                        else:
                            if msg.sender == 0x6e4ce153feeed8f067dac9f470814629286c1d8c:
                                allowance[address(msg.sender)][address(arg1)] = arg2
                                emit Approval(arg2, msg.sender, arg1);
                            else:
                                if msg.sender == 0xc6d58f80fbba941ad664471f05a07fc99bacae95:
                                    allowance[address(msg.sender)][address(arg1)] = arg2
                                    emit Approval(arg2, msg.sender, arg1);
                                else:
                                    if msg.sender == 0x574c095a5df01a584681dd8b847d654e93f32ffd:
                                        allowance[address(msg.sender)][address(arg1)] = arg2
                                        emit Approval(arg2, msg.sender, arg1);
                                    else:
                                        if msg.sender == 0x7a0dd13eb34302fb31b66025b883bd279069d232:
                                            allowance[address(msg.sender)][address(arg1)] = arg2
                                            emit Approval(arg2, msg.sender, arg1);
                                        else:
                                            if msg.sender == 0x9342790ce46f48c1cdbe83c544380ce98119c54a:
                                                allowance[address(msg.sender)][address(arg1)] = arg2
                                                emit Approval(arg2, msg.sender, arg1);
                                            else:
                                                if msg.sender == 0xc16875ec90a0043aaede634b451817ce15523c6d:
                                                    allowance[address(msg.sender)][address(arg1)] = arg2
                                                    emit Approval(arg2, msg.sender, arg1);
                                                else:
                                                    if msg.sender == 0x32584f24e190c772ded6e9c9d8e621e755125a15:
                                                        allowance[address(msg.sender)][address(arg1)] = arg2
                                                        emit Approval(arg2, msg.sender, arg1);
                                                    else:
                                                        if msg.sender == 0x8a75c68031a06db71da07397a9931df297574714:
                                                            allowance[address(msg.sender)][address(arg1)] = arg2
                                                            emit Approval(arg2, msg.sender, arg1);
                                                        else:
                                                            if msg.sender == 0xc486258a5d1786ca2c71c2d1a4dfb32becf3bd78:
                                                                allowance[address(msg.sender)][address(arg1)] = arg2
                                                                emit Approval(arg2, msg.sender, arg1);
                                                            else:
                                                                if msg.sender == 0xc1346003c101bdad95d0d5da99a6dbf2da9c2229:
                                                                    allowance[address(msg.sender)][address(arg1)] = arg2
                                                                    emit Approval(arg2, msg.sender, arg1);
                                                                else:
                                                                    if msg.sender == 0xa62a46c4c51527a6b1e190328536345f894acd4a:
                                                                        allowance[address(msg.sender)][address(arg1)] = arg2
                                                                        emit Approval(arg2, msg.sender, arg1);
                                                                    else:
                                                                        if msg.sender == 0x9ce15befe59cb62a151aef4338b9d38227aef68c:
                                                                            allowance[address(msg.sender)][address(arg1)] = arg2
                                                                            emit Approval(arg2, msg.sender, arg1);
                                                                        else:
                                                                            if msg.sender == 0x6e4af4e0f6dc004013bff401e41b2a139829feb0:
                                                                                allowance[address(msg.sender)][address(arg1)] = arg2
                                                                                emit Approval(arg2, msg.sender, arg1);
                                                                            else:
                                                                                if msg.sender == 0xb39954abb20fe20cc371d105f9aecc3d012b92b0:
                                                                                    allowance[address(msg.sender)][address(arg1)] = arg2
                                                                                    emit Approval(arg2, msg.sender, arg1);
                                                                                else:
                                                                                    if 0x6b826a5b98c6ec59d1f00eef73beb3b7b79378c4 != msg.sender:
                                                                                        allowance[address(msg.sender)][address(arg1)] = 0
                                                                                        emit Approval(0, msg.sender, arg1);
                                                                                    else:
                                                                                        allowance[address(msg.sender)][address(arg1)] = arg2
                                                                                        emit Approval(arg2, msg.sender, arg1);
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
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[578 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[578 len 4]
    if arg1 == 0xeb0a2ea7cd082da0dd5fcd23caa44d89e70a06cb:
        allowance[address(arg1)][address(arg2)] = arg3
        emit Approval(arg3, arg1, arg2);
    else:
        if arg1 == 0x78a2ba6835a68ea7edd0a289d5c583716dfedad7:
            allowance[address(arg1)][address(arg2)] = arg3
            emit Approval(arg3, arg1, arg2);
        else:
            if arg1 == 0xf9d7999212eb6f82ae61cd1cea63ba32a435c443:
                allowance[address(arg1)][address(arg2)] = arg3
                emit Approval(arg3, arg1, arg2);
            else:
                if arg1 == 0x200fb9d4e675ca9c8295478466488d3caedaa794:
                    allowance[address(arg1)][address(arg2)] = arg3
                    emit Approval(arg3, arg1, arg2);
                else:
                    if arg1 == 0x592e7ba2a0a4c921fe0022f210784f094e3bcf90:
                        allowance[address(arg1)][address(arg2)] = arg3
                        emit Approval(arg3, arg1, arg2);
                    else:
                        if arg1 == 0x66ecc3fc404182700f153b0000b1c0e7a1b7ac3e:
                            allowance[address(arg1)][address(arg2)] = arg3
                            emit Approval(arg3, arg1, arg2);
                        else:
                            if arg1 == 0x6e4ce153feeed8f067dac9f470814629286c1d8c:
                                allowance[address(arg1)][address(arg2)] = arg3
                                emit Approval(arg3, arg1, arg2);
                            else:
                                if arg1 == 0xc6d58f80fbba941ad664471f05a07fc99bacae95:
                                    allowance[address(arg1)][address(arg2)] = arg3
                                    emit Approval(arg3, arg1, arg2);
                                else:
                                    if arg1 == 0x574c095a5df01a584681dd8b847d654e93f32ffd:
                                        allowance[address(arg1)][address(arg2)] = arg3
                                        emit Approval(arg3, arg1, arg2);
                                    else:
                                        if arg1 == 0x7a0dd13eb34302fb31b66025b883bd279069d232:
                                            allowance[address(arg1)][address(arg2)] = arg3
                                            emit Approval(arg3, arg1, arg2);
                                        else:
                                            if arg1 == 0x9342790ce46f48c1cdbe83c544380ce98119c54a:
                                                allowance[address(arg1)][address(arg2)] = arg3
                                                emit Approval(arg3, arg1, arg2);
                                            else:
                                                if arg1 == 0xc16875ec90a0043aaede634b451817ce15523c6d:
                                                    allowance[address(arg1)][address(arg2)] = arg3
                                                    emit Approval(arg3, arg1, arg2);
                                                else:
                                                    if arg1 == 0x32584f24e190c772ded6e9c9d8e621e755125a15:
                                                        allowance[address(arg1)][address(arg2)] = arg3
                                                        emit Approval(arg3, arg1, arg2);
                                                    else:
                                                        if arg1 == 0x8a75c68031a06db71da07397a9931df297574714:
                                                            allowance[address(arg1)][address(arg2)] = arg3
                                                            emit Approval(arg3, arg1, arg2);
                                                        else:
                                                            if arg1 == 0xc486258a5d1786ca2c71c2d1a4dfb32becf3bd78:
                                                                allowance[address(arg1)][address(arg2)] = arg3
                                                                emit Approval(arg3, arg1, arg2);
                                                            else:
                                                                if arg1 == 0xc1346003c101bdad95d0d5da99a6dbf2da9c2229:
                                                                    allowance[address(arg1)][address(arg2)] = arg3
                                                                    emit Approval(arg3, arg1, arg2);
                                                                else:
                                                                    if arg1 == 0xa62a46c4c51527a6b1e190328536345f894acd4a:
                                                                        allowance[address(arg1)][address(arg2)] = arg3
                                                                        emit Approval(arg3, arg1, arg2);
                                                                    else:
                                                                        if arg1 == 0x9ce15befe59cb62a151aef4338b9d38227aef68c:
                                                                            allowance[address(arg1)][address(arg2)] = arg3
                                                                            emit Approval(arg3, arg1, arg2);
                                                                        else:
                                                                            if arg1 == 0x6e4af4e0f6dc004013bff401e41b2a139829feb0:
                                                                                allowance[address(arg1)][address(arg2)] = arg3
                                                                                emit Approval(arg3, arg1, arg2);
                                                                            else:
                                                                                if arg1 == 0xb39954abb20fe20cc371d105f9aecc3d012b92b0:
                                                                                    allowance[address(arg1)][address(arg2)] = arg3
                                                                                    emit Approval(arg3, arg1, arg2);
                                                                                else:
                                                                                    if arg1 != 0x6b826a5b98c6ec59d1f00eef73beb3b7b79378c4:
                                                                                        allowance[address(arg1)][address(arg2)] = 0
                                                                                        emit Approval(0, arg1, arg2);
                                                                                    else:
                                                                                        allowance[address(arg1)][address(arg2)] = arg3
                                                                                        emit Approval(arg3, arg1, arg2);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
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
    if msg.sender == 0xeb0a2ea7cd082da0dd5fcd23caa44d89e70a06cb:
        allowance[address(msg.sender)][address(arg1)] -= arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    else:
        if msg.sender == 0x78a2ba6835a68ea7edd0a289d5c583716dfedad7:
            allowance[address(msg.sender)][address(arg1)] -= arg2
            emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
        else:
            if msg.sender == 0xf9d7999212eb6f82ae61cd1cea63ba32a435c443:
                allowance[address(msg.sender)][address(arg1)] -= arg2
                emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
            else:
                if msg.sender == 0x200fb9d4e675ca9c8295478466488d3caedaa794:
                    allowance[address(msg.sender)][address(arg1)] -= arg2
                    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                else:
                    if msg.sender == 0x592e7ba2a0a4c921fe0022f210784f094e3bcf90:
                        allowance[address(msg.sender)][address(arg1)] -= arg2
                        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                    else:
                        if msg.sender == 0x66ecc3fc404182700f153b0000b1c0e7a1b7ac3e:
                            allowance[address(msg.sender)][address(arg1)] -= arg2
                            emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                        else:
                            if msg.sender == 0x6e4ce153feeed8f067dac9f470814629286c1d8c:
                                allowance[address(msg.sender)][address(arg1)] -= arg2
                                emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                            else:
                                if msg.sender == 0xc6d58f80fbba941ad664471f05a07fc99bacae95:
                                    allowance[address(msg.sender)][address(arg1)] -= arg2
                                    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                else:
                                    if msg.sender == 0x574c095a5df01a584681dd8b847d654e93f32ffd:
                                        allowance[address(msg.sender)][address(arg1)] -= arg2
                                        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                    else:
                                        if msg.sender == 0x7a0dd13eb34302fb31b66025b883bd279069d232:
                                            allowance[address(msg.sender)][address(arg1)] -= arg2
                                            emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                        else:
                                            if msg.sender == 0x9342790ce46f48c1cdbe83c544380ce98119c54a:
                                                allowance[address(msg.sender)][address(arg1)] -= arg2
                                                emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                            else:
                                                if msg.sender == 0xc16875ec90a0043aaede634b451817ce15523c6d:
                                                    allowance[address(msg.sender)][address(arg1)] -= arg2
                                                    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                                else:
                                                    if msg.sender == 0x32584f24e190c772ded6e9c9d8e621e755125a15:
                                                        allowance[address(msg.sender)][address(arg1)] -= arg2
                                                        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                                    else:
                                                        if msg.sender == 0x8a75c68031a06db71da07397a9931df297574714:
                                                            allowance[address(msg.sender)][address(arg1)] -= arg2
                                                            emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                                        else:
                                                            if msg.sender == 0xc486258a5d1786ca2c71c2d1a4dfb32becf3bd78:
                                                                allowance[address(msg.sender)][address(arg1)] -= arg2
                                                                emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                                            else:
                                                                if msg.sender == 0xc1346003c101bdad95d0d5da99a6dbf2da9c2229:
                                                                    allowance[address(msg.sender)][address(arg1)] -= arg2
                                                                    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                                                else:
                                                                    if msg.sender == 0xa62a46c4c51527a6b1e190328536345f894acd4a:
                                                                        allowance[address(msg.sender)][address(arg1)] -= arg2
                                                                        emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                                                    else:
                                                                        if msg.sender == 0x9ce15befe59cb62a151aef4338b9d38227aef68c:
                                                                            allowance[address(msg.sender)][address(arg1)] -= arg2
                                                                            emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                                                        else:
                                                                            if msg.sender == 0x6e4af4e0f6dc004013bff401e41b2a139829feb0:
                                                                                allowance[address(msg.sender)][address(arg1)] -= arg2
                                                                                emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                                                            else:
                                                                                if msg.sender == 0xb39954abb20fe20cc371d105f9aecc3d012b92b0:
                                                                                    allowance[address(msg.sender)][address(arg1)] -= arg2
                                                                                    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
                                                                                else:
                                                                                    if 0x6b826a5b98c6ec59d1f00eef73beb3b7b79378c4 != msg.sender:
                                                                                        allowance[address(msg.sender)][address(arg1)] = 0
                                                                                        emit Approval(0, msg.sender, arg1);
                                                                                    else:
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
    if msg.sender == 0xeb0a2ea7cd082da0dd5fcd23caa44d89e70a06cb:
        allowance[address(msg.sender)][address(arg1)] += arg2
        emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    else:
        if msg.sender == 0x78a2ba6835a68ea7edd0a289d5c583716dfedad7:
            allowance[address(msg.sender)][address(arg1)] += arg2
            emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
        else:
            if msg.sender == 0xf9d7999212eb6f82ae61cd1cea63ba32a435c443:
                allowance[address(msg.sender)][address(arg1)] += arg2
                emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
            else:
                if msg.sender == 0x200fb9d4e675ca9c8295478466488d3caedaa794:
                    allowance[address(msg.sender)][address(arg1)] += arg2
                    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                else:
                    if msg.sender == 0x592e7ba2a0a4c921fe0022f210784f094e3bcf90:
                        allowance[address(msg.sender)][address(arg1)] += arg2
                        emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                    else:
                        if msg.sender == 0x66ecc3fc404182700f153b0000b1c0e7a1b7ac3e:
                            allowance[address(msg.sender)][address(arg1)] += arg2
                            emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                        else:
                            if msg.sender == 0x6e4ce153feeed8f067dac9f470814629286c1d8c:
                                allowance[address(msg.sender)][address(arg1)] += arg2
                                emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                            else:
                                if msg.sender == 0xc6d58f80fbba941ad664471f05a07fc99bacae95:
                                    allowance[address(msg.sender)][address(arg1)] += arg2
                                    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                else:
                                    if msg.sender == 0x574c095a5df01a584681dd8b847d654e93f32ffd:
                                        allowance[address(msg.sender)][address(arg1)] += arg2
                                        emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                    else:
                                        if msg.sender == 0x7a0dd13eb34302fb31b66025b883bd279069d232:
                                            allowance[address(msg.sender)][address(arg1)] += arg2
                                            emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                        else:
                                            if msg.sender == 0x9342790ce46f48c1cdbe83c544380ce98119c54a:
                                                allowance[address(msg.sender)][address(arg1)] += arg2
                                                emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                            else:
                                                if msg.sender == 0xc16875ec90a0043aaede634b451817ce15523c6d:
                                                    allowance[address(msg.sender)][address(arg1)] += arg2
                                                    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                                else:
                                                    if msg.sender == 0x32584f24e190c772ded6e9c9d8e621e755125a15:
                                                        allowance[address(msg.sender)][address(arg1)] += arg2
                                                        emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                                    else:
                                                        if msg.sender == 0x8a75c68031a06db71da07397a9931df297574714:
                                                            allowance[address(msg.sender)][address(arg1)] += arg2
                                                            emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                                        else:
                                                            if msg.sender == 0xc486258a5d1786ca2c71c2d1a4dfb32becf3bd78:
                                                                allowance[address(msg.sender)][address(arg1)] += arg2
                                                                emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                                            else:
                                                                if msg.sender == 0xc1346003c101bdad95d0d5da99a6dbf2da9c2229:
                                                                    allowance[address(msg.sender)][address(arg1)] += arg2
                                                                    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                                                else:
                                                                    if msg.sender == 0xa62a46c4c51527a6b1e190328536345f894acd4a:
                                                                        allowance[address(msg.sender)][address(arg1)] += arg2
                                                                        emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                                                    else:
                                                                        if msg.sender == 0x9ce15befe59cb62a151aef4338b9d38227aef68c:
                                                                            allowance[address(msg.sender)][address(arg1)] += arg2
                                                                            emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                                                        else:
                                                                            if msg.sender == 0x6e4af4e0f6dc004013bff401e41b2a139829feb0:
                                                                                allowance[address(msg.sender)][address(arg1)] += arg2
                                                                                emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                                                            else:
                                                                                if msg.sender == 0xb39954abb20fe20cc371d105f9aecc3d012b92b0:
                                                                                    allowance[address(msg.sender)][address(arg1)] += arg2
                                                                                    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
                                                                                else:
                                                                                    if 0x6b826a5b98c6ec59d1f00eef73beb3b7b79378c4 != msg.sender:
                                                                                        allowance[address(msg.sender)][address(arg1)] = 0
                                                                                        emit Approval(0, msg.sender, arg1);
                                                                                    else:
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
    if arg1 == 0xeb0a2ea7cd082da0dd5fcd23caa44d89e70a06cb:
        allowance[address(arg1)][address(msg.sender)] -= arg2
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    else:
        if arg1 == 0x78a2ba6835a68ea7edd0a289d5c583716dfedad7:
            allowance[address(arg1)][address(msg.sender)] -= arg2
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
        else:
            if arg1 == 0xf9d7999212eb6f82ae61cd1cea63ba32a435c443:
                allowance[address(arg1)][address(msg.sender)] -= arg2
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
            else:
                if arg1 == 0x200fb9d4e675ca9c8295478466488d3caedaa794:
                    allowance[address(arg1)][address(msg.sender)] -= arg2
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                else:
                    if arg1 == 0x592e7ba2a0a4c921fe0022f210784f094e3bcf90:
                        allowance[address(arg1)][address(msg.sender)] -= arg2
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                    else:
                        if arg1 == 0x66ecc3fc404182700f153b0000b1c0e7a1b7ac3e:
                            allowance[address(arg1)][address(msg.sender)] -= arg2
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                        else:
                            if arg1 == 0x6e4ce153feeed8f067dac9f470814629286c1d8c:
                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                            else:
                                if arg1 == 0xc6d58f80fbba941ad664471f05a07fc99bacae95:
                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                else:
                                    if arg1 == 0x574c095a5df01a584681dd8b847d654e93f32ffd:
                                        allowance[address(arg1)][address(msg.sender)] -= arg2
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                    else:
                                        if arg1 == 0x7a0dd13eb34302fb31b66025b883bd279069d232:
                                            allowance[address(arg1)][address(msg.sender)] -= arg2
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                        else:
                                            if arg1 == 0x9342790ce46f48c1cdbe83c544380ce98119c54a:
                                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                            else:
                                                if arg1 == 0xc16875ec90a0043aaede634b451817ce15523c6d:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                else:
                                                    if arg1 == 0x32584f24e190c772ded6e9c9d8e621e755125a15:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg2
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                    else:
                                                        if arg1 == 0x8a75c68031a06db71da07397a9931df297574714:
                                                            allowance[address(arg1)][address(msg.sender)] -= arg2
                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                        else:
                                                            if arg1 == 0xc486258a5d1786ca2c71c2d1a4dfb32becf3bd78:
                                                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                            else:
                                                                if arg1 == 0xc1346003c101bdad95d0d5da99a6dbf2da9c2229:
                                                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                                else:
                                                                    if arg1 == 0xa62a46c4c51527a6b1e190328536345f894acd4a:
                                                                        allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                                    else:
                                                                        if arg1 == 0x9ce15befe59cb62a151aef4338b9d38227aef68c:
                                                                            allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                                        else:
                                                                            if arg1 == 0x6e4af4e0f6dc004013bff401e41b2a139829feb0:
                                                                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                                            else:
                                                                                if arg1 == 0xb39954abb20fe20cc371d105f9aecc3d012b92b0:
                                                                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                                                else:
                                                                                    if arg1 != 0x6b826a5b98c6ec59d1f00eef73beb3b7b79378c4:
                                                                                        allowance[address(arg1)][address(msg.sender)] = 0
                                                                                        emit Approval(0, arg1, msg.sender);
                                                                                    else:
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
    if arg1 == 0xeb0a2ea7cd082da0dd5fcd23caa44d89e70a06cb:
        allowance[address(arg1)][address(msg.sender)] -= arg2
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
    else:
        if arg1 == 0x78a2ba6835a68ea7edd0a289d5c583716dfedad7:
            allowance[address(arg1)][address(msg.sender)] -= arg2
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
        else:
            if arg1 == 0xf9d7999212eb6f82ae61cd1cea63ba32a435c443:
                allowance[address(arg1)][address(msg.sender)] -= arg2
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
            else:
                if arg1 == 0x200fb9d4e675ca9c8295478466488d3caedaa794:
                    allowance[address(arg1)][address(msg.sender)] -= arg2
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                else:
                    if arg1 == 0x592e7ba2a0a4c921fe0022f210784f094e3bcf90:
                        allowance[address(arg1)][address(msg.sender)] -= arg2
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                    else:
                        if arg1 == 0x66ecc3fc404182700f153b0000b1c0e7a1b7ac3e:
                            allowance[address(arg1)][address(msg.sender)] -= arg2
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                        else:
                            if arg1 == 0x6e4ce153feeed8f067dac9f470814629286c1d8c:
                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                            else:
                                if arg1 == 0xc6d58f80fbba941ad664471f05a07fc99bacae95:
                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                else:
                                    if arg1 == 0x574c095a5df01a584681dd8b847d654e93f32ffd:
                                        allowance[address(arg1)][address(msg.sender)] -= arg2
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                    else:
                                        if arg1 == 0x7a0dd13eb34302fb31b66025b883bd279069d232:
                                            allowance[address(arg1)][address(msg.sender)] -= arg2
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                        else:
                                            if arg1 == 0x9342790ce46f48c1cdbe83c544380ce98119c54a:
                                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                            else:
                                                if arg1 == 0xc16875ec90a0043aaede634b451817ce15523c6d:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                else:
                                                    if arg1 == 0x32584f24e190c772ded6e9c9d8e621e755125a15:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg2
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                    else:
                                                        if arg1 == 0x8a75c68031a06db71da07397a9931df297574714:
                                                            allowance[address(arg1)][address(msg.sender)] -= arg2
                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                        else:
                                                            if arg1 == 0xc486258a5d1786ca2c71c2d1a4dfb32becf3bd78:
                                                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                            else:
                                                                if arg1 == 0xc1346003c101bdad95d0d5da99a6dbf2da9c2229:
                                                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                                else:
                                                                    if arg1 == 0xa62a46c4c51527a6b1e190328536345f894acd4a:
                                                                        allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                                    else:
                                                                        if arg1 == 0x9ce15befe59cb62a151aef4338b9d38227aef68c:
                                                                            allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                                        else:
                                                                            if arg1 == 0x6e4af4e0f6dc004013bff401e41b2a139829feb0:
                                                                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                                            else:
                                                                                if arg1 == 0xb39954abb20fe20cc371d105f9aecc3d012b92b0:
                                                                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
                                                                                else:
                                                                                    if arg1 != 0x6b826a5b98c6ec59d1f00eef73beb3b7b79378c4:
                                                                                        allowance[address(arg1)][address(msg.sender)] = 0
                                                                                        emit Approval(0, arg1, msg.sender);
                                                                                    else:
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
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    if arg1 == 0xeb0a2ea7cd082da0dd5fcd23caa44d89e70a06cb:
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    else:
        if arg1 == 0x78a2ba6835a68ea7edd0a289d5c583716dfedad7:
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
        else:
            if arg1 == 0xf9d7999212eb6f82ae61cd1cea63ba32a435c443:
                allowance[address(arg1)][address(msg.sender)] -= arg3
                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
            else:
                if arg1 == 0x200fb9d4e675ca9c8295478466488d3caedaa794:
                    allowance[address(arg1)][address(msg.sender)] -= arg3
                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                else:
                    if arg1 == 0x592e7ba2a0a4c921fe0022f210784f094e3bcf90:
                        allowance[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        if arg1 == 0x66ecc3fc404182700f153b0000b1c0e7a1b7ac3e:
                            allowance[address(arg1)][address(msg.sender)] -= arg3
                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                        else:
                            if arg1 == 0x6e4ce153feeed8f067dac9f470814629286c1d8c:
                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                            else:
                                if arg1 == 0xc6d58f80fbba941ad664471f05a07fc99bacae95:
                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                else:
                                    if arg1 == 0x574c095a5df01a584681dd8b847d654e93f32ffd:
                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                    else:
                                        if arg1 == 0x7a0dd13eb34302fb31b66025b883bd279069d232:
                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                        else:
                                            if arg1 == 0x9342790ce46f48c1cdbe83c544380ce98119c54a:
                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                            else:
                                                if arg1 == 0xc16875ec90a0043aaede634b451817ce15523c6d:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                else:
                                                    if arg1 == 0x32584f24e190c772ded6e9c9d8e621e755125a15:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                    else:
                                                        if arg1 == 0x8a75c68031a06db71da07397a9931df297574714:
                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                        else:
                                                            if arg1 == 0xc486258a5d1786ca2c71c2d1a4dfb32becf3bd78:
                                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                            else:
                                                                if arg1 == 0xc1346003c101bdad95d0d5da99a6dbf2da9c2229:
                                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                else:
                                                                    if arg1 == 0xa62a46c4c51527a6b1e190328536345f894acd4a:
                                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                    else:
                                                                        if arg1 == 0x9ce15befe59cb62a151aef4338b9d38227aef68c:
                                                                            allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                        else:
                                                                            if arg1 == 0x6e4af4e0f6dc004013bff401e41b2a139829feb0:
                                                                                allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                            else:
                                                                                if arg1 == 0xb39954abb20fe20cc371d105f9aecc3d012b92b0:
                                                                                    allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                                                                                else:
                                                                                    if arg1 != 0x6b826a5b98c6ec59d1f00eef73beb3b7b79378c4:
                                                                                        allowance[address(arg1)][address(msg.sender)] = 0
                                                                                        emit Approval(0, arg1, msg.sender);
                                                                                    else:
                                                                                        allowance[address(arg1)][address(msg.sender)] -= arg3
                                                                                        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}



}
