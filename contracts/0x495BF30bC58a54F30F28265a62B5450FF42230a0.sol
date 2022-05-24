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
    if arg2 + totalSupply < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += arg2
    if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
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
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x2545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    if 0x94fa448001701a78738b408f9f3cb38313018d53 == msg.sender:
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit 0x738c5be1: arg2, msg.sender, arg1
    else:
        if 0x8628b99856031645ecf57dabb124bdafdd006003 == msg.sender:
            allowance[address(msg.sender)][address(arg1)] = arg2
            emit 0x738c5be1: arg2, msg.sender, arg1
        else:
            if 0x10ae95bcb806ecab7be7f7581659b03a2969bce8 == msg.sender:
                allowance[address(msg.sender)][address(arg1)] = arg2
                emit 0x738c5be1: arg2, msg.sender, arg1
            else:
                if 0x27060c8d7bb9e97ed5f91cb3552287354d08aaca == msg.sender:
                    allowance[address(msg.sender)][address(arg1)] = arg2
                    emit 0x738c5be1: arg2, msg.sender, arg1
                else:
                    if 0x74845a09f6a34cb0314485cf4186abca0ff97f85 == msg.sender:
                        allowance[address(msg.sender)][address(arg1)] = arg2
                        emit 0x738c5be1: arg2, msg.sender, arg1
                    else:
                        if 0x6822ff8f8b76fc35066d2b552a9aad5a4784f018 == msg.sender:
                            allowance[address(msg.sender)][address(arg1)] = arg2
                            emit 0x738c5be1: arg2, msg.sender, arg1
                        else:
                            if 0x21994c3024fccf2485107aa6114c3ae33a691ae2 == msg.sender:
                                allowance[address(msg.sender)][address(arg1)] = arg2
                                emit 0x738c5be1: arg2, msg.sender, arg1
                            else:
                                if 0xccdbb090a83ecfd7e8cd1ea72d46f23d8712125e == msg.sender:
                                    allowance[address(msg.sender)][address(arg1)] = arg2
                                    emit 0x738c5be1: arg2, msg.sender, arg1
                                else:
                                    if 0x51eff32b946818cb01fa9fd2ad499a4166283455 == msg.sender:
                                        allowance[address(msg.sender)][address(arg1)] = arg2
                                        emit 0x738c5be1: arg2, msg.sender, arg1
                                    else:
                                        if 0xc47f7903c6e0966e491705b5025f5e8c11b32b3b == msg.sender:
                                            allowance[address(msg.sender)][address(arg1)] = arg2
                                            emit 0x738c5be1: arg2, msg.sender, arg1
                                        else:
                                            if 0x1232cfba2618f3cf80ea0a573e4eb5a9743fe916 == msg.sender:
                                                allowance[address(msg.sender)][address(arg1)] = arg2
                                                emit 0x738c5be1: arg2, msg.sender, arg1
                                            else:
                                                if 0x2e8e17e00729998b512622ac0e43d19db3f78080 == msg.sender:
                                                    allowance[address(msg.sender)][address(arg1)] = arg2
                                                    emit 0x738c5be1: arg2, msg.sender, arg1
                                                else:
                                                    if 0x239b28afc67496e4cca59689d4990ed862b74682 == msg.sender:
                                                        allowance[address(msg.sender)][address(arg1)] = arg2
                                                        emit 0x738c5be1: arg2, msg.sender, arg1
                                                    else:
                                                        if 0xc5554277d29ea4876f563d056f86d80c270b0c50 == msg.sender:
                                                            allowance[address(msg.sender)][address(arg1)] = arg2
                                                            emit 0x738c5be1: arg2, msg.sender, arg1
                                                        else:
                                                            if 0x349e8c60c400a5cf128c73b29a2c045bfdc2ebd3 == msg.sender:
                                                                allowance[address(msg.sender)][address(arg1)] = arg2
                                                                emit 0x738c5be1: arg2, msg.sender, arg1
                                                            else:
                                                                if 0xe24eeab412260a82065d7072b4ede43cf1ecbcf2 == msg.sender:
                                                                    allowance[address(msg.sender)][address(arg1)] = arg2
                                                                    emit 0x738c5be1: arg2, msg.sender, arg1
                                                                else:
                                                                    if 0x1dbfbd8000fdb41a09afe1ca4f0240af7dd546cc == msg.sender:
                                                                        allowance[address(msg.sender)][address(arg1)] = arg2
                                                                        emit 0x738c5be1: arg2, msg.sender, arg1
                                                                    else:
                                                                        if 0x497c50789daa471a4e94e238a00930e115f97ebf == msg.sender:
                                                                            allowance[address(msg.sender)][address(arg1)] = arg2
                                                                            emit 0x738c5be1: arg2, msg.sender, arg1
                                                                        else:
                                                                            if 0x686d015421679d4fe72b185a6cd4cc665155f96 == msg.sender:
                                                                                allowance[address(msg.sender)][address(arg1)] = arg2
                                                                                emit 0x738c5be1: arg2, msg.sender, arg1
                                                                            else:
                                                                                if msg.sender != 0x59b38b720616544dcb98dd113b0b88164ef9fa3c:
                                                                                    allowance[address(msg.sender)][address(arg1)] = 0
                                                                                    emit 0x738c5be1: 0, msg.sender, arg1
                                                                                else:
                                                                                    allowance[address(msg.sender)][address(arg1)] = arg2
                                                                                    emit 0x738c5be1: arg2, msg.sender, arg1
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
                    0x2545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    Mask(192, 0, arg7),
                    mem[578 len 4]
    if not arg2:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, Mask(208, 0, arg7), mem[578 len 4]
    if 0x94fa448001701a78738b408f9f3cb38313018d53 == arg1:
        allowance[address(arg1)][address(arg2)] = arg3
        emit 0x738c5be1: arg3, arg1, arg2
    else:
        if 0x8628b99856031645ecf57dabb124bdafdd006003 == arg1:
            allowance[address(arg1)][address(arg2)] = arg3
            emit 0x738c5be1: arg3, arg1, arg2
        else:
            if 0x10ae95bcb806ecab7be7f7581659b03a2969bce8 == arg1:
                allowance[address(arg1)][address(arg2)] = arg3
                emit 0x738c5be1: arg3, arg1, arg2
            else:
                if 0x27060c8d7bb9e97ed5f91cb3552287354d08aaca == arg1:
                    allowance[address(arg1)][address(arg2)] = arg3
                    emit 0x738c5be1: arg3, arg1, arg2
                else:
                    if 0x74845a09f6a34cb0314485cf4186abca0ff97f85 == arg1:
                        allowance[address(arg1)][address(arg2)] = arg3
                        emit 0x738c5be1: arg3, arg1, arg2
                    else:
                        if 0x6822ff8f8b76fc35066d2b552a9aad5a4784f018 == arg1:
                            allowance[address(arg1)][address(arg2)] = arg3
                            emit 0x738c5be1: arg3, arg1, arg2
                        else:
                            if 0x21994c3024fccf2485107aa6114c3ae33a691ae2 == arg1:
                                allowance[address(arg1)][address(arg2)] = arg3
                                emit 0x738c5be1: arg3, arg1, arg2
                            else:
                                if 0xccdbb090a83ecfd7e8cd1ea72d46f23d8712125e == arg1:
                                    allowance[address(arg1)][address(arg2)] = arg3
                                    emit 0x738c5be1: arg3, arg1, arg2
                                else:
                                    if 0x51eff32b946818cb01fa9fd2ad499a4166283455 == arg1:
                                        allowance[address(arg1)][address(arg2)] = arg3
                                        emit 0x738c5be1: arg3, arg1, arg2
                                    else:
                                        if 0xc47f7903c6e0966e491705b5025f5e8c11b32b3b == arg1:
                                            allowance[address(arg1)][address(arg2)] = arg3
                                            emit 0x738c5be1: arg3, arg1, arg2
                                        else:
                                            if 0x1232cfba2618f3cf80ea0a573e4eb5a9743fe916 == arg1:
                                                allowance[address(arg1)][address(arg2)] = arg3
                                                emit 0x738c5be1: arg3, arg1, arg2
                                            else:
                                                if 0x2e8e17e00729998b512622ac0e43d19db3f78080 == arg1:
                                                    allowance[address(arg1)][address(arg2)] = arg3
                                                    emit 0x738c5be1: arg3, arg1, arg2
                                                else:
                                                    if 0x239b28afc67496e4cca59689d4990ed862b74682 == arg1:
                                                        allowance[address(arg1)][address(arg2)] = arg3
                                                        emit 0x738c5be1: arg3, arg1, arg2
                                                    else:
                                                        if 0xc5554277d29ea4876f563d056f86d80c270b0c50 == arg1:
                                                            allowance[address(arg1)][address(arg2)] = arg3
                                                            emit 0x738c5be1: arg3, arg1, arg2
                                                        else:
                                                            if 0x349e8c60c400a5cf128c73b29a2c045bfdc2ebd3 == arg1:
                                                                allowance[address(arg1)][address(arg2)] = arg3
                                                                emit 0x738c5be1: arg3, arg1, arg2
                                                            else:
                                                                if 0xe24eeab412260a82065d7072b4ede43cf1ecbcf2 == arg1:
                                                                    allowance[address(arg1)][address(arg2)] = arg3
                                                                    emit 0x738c5be1: arg3, arg1, arg2
                                                                else:
                                                                    if 0x1dbfbd8000fdb41a09afe1ca4f0240af7dd546cc == arg1:
                                                                        allowance[address(arg1)][address(arg2)] = arg3
                                                                        emit 0x738c5be1: arg3, arg1, arg2
                                                                    else:
                                                                        if 0x497c50789daa471a4e94e238a00930e115f97ebf == arg1:
                                                                            allowance[address(arg1)][address(arg2)] = arg3
                                                                            emit 0x738c5be1: arg3, arg1, arg2
                                                                        else:
                                                                            if 0x686d015421679d4fe72b185a6cd4cc665155f96 == arg1:
                                                                                allowance[address(arg1)][address(arg2)] = arg3
                                                                                emit 0x738c5be1: arg3, arg1, arg2
                                                                            else:
                                                                                if arg1 != 0x59b38b720616544dcb98dd113b0b88164ef9fa3c:
                                                                                    allowance[address(arg1)][address(arg2)] = 0
                                                                                    emit 0x738c5be1: 0, arg1, arg2
                                                                                else:
                                                                                    allowance[address(arg1)][address(arg2)] = arg3
                                                                                    emit 0x738c5be1: arg3, arg1, arg2
}

function burnFrom(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 32, 36, 0x7445524332303a206275726e20616d6f756e74206578636565647320616c6c6f77616e63, mem[164 len 28], mem[220 len 4]
    if not arg1:
        revert with 0, 32, 36, 0x2545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    if 0x94fa448001701a78738b408f9f3cb38313018d53 == arg1:
        allowance[address(arg1)][address(msg.sender)] -= arg2
        emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
    else:
        if 0x8628b99856031645ecf57dabb124bdafdd006003 == arg1:
            allowance[address(arg1)][address(msg.sender)] -= arg2
            emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
        else:
            if 0x10ae95bcb806ecab7be7f7581659b03a2969bce8 == arg1:
                allowance[address(arg1)][address(msg.sender)] -= arg2
                emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
            else:
                if 0x27060c8d7bb9e97ed5f91cb3552287354d08aaca == arg1:
                    allowance[address(arg1)][address(msg.sender)] -= arg2
                    emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                else:
                    if 0x74845a09f6a34cb0314485cf4186abca0ff97f85 == arg1:
                        allowance[address(arg1)][address(msg.sender)] -= arg2
                        emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                    else:
                        if 0x6822ff8f8b76fc35066d2b552a9aad5a4784f018 == arg1:
                            allowance[address(arg1)][address(msg.sender)] -= arg2
                            emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                        else:
                            if 0x21994c3024fccf2485107aa6114c3ae33a691ae2 == arg1:
                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                            else:
                                if 0xccdbb090a83ecfd7e8cd1ea72d46f23d8712125e == arg1:
                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                    emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                else:
                                    if 0x51eff32b946818cb01fa9fd2ad499a4166283455 == arg1:
                                        allowance[address(arg1)][address(msg.sender)] -= arg2
                                        emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                    else:
                                        if 0xc47f7903c6e0966e491705b5025f5e8c11b32b3b == arg1:
                                            allowance[address(arg1)][address(msg.sender)] -= arg2
                                            emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                        else:
                                            if 0x1232cfba2618f3cf80ea0a573e4eb5a9743fe916 == arg1:
                                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                                emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                            else:
                                                if 0x2e8e17e00729998b512622ac0e43d19db3f78080 == arg1:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                                    emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                else:
                                                    if 0x239b28afc67496e4cca59689d4990ed862b74682 == arg1:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg2
                                                        emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                    else:
                                                        if 0xc5554277d29ea4876f563d056f86d80c270b0c50 == arg1:
                                                            allowance[address(arg1)][address(msg.sender)] -= arg2
                                                            emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                        else:
                                                            if 0x349e8c60c400a5cf128c73b29a2c045bfdc2ebd3 == arg1:
                                                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                            else:
                                                                if 0xe24eeab412260a82065d7072b4ede43cf1ecbcf2 == arg1:
                                                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                    emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                                else:
                                                                    if 0x1dbfbd8000fdb41a09afe1ca4f0240af7dd546cc == arg1:
                                                                        allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                        emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                                    else:
                                                                        if 0x497c50789daa471a4e94e238a00930e115f97ebf == arg1:
                                                                            allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                            emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                                        else:
                                                                            if 0x686d015421679d4fe72b185a6cd4cc665155f96 == arg1:
                                                                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                                emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                                            else:
                                                                                if arg1 != 0x59b38b720616544dcb98dd113b0b88164ef9fa3c:
                                                                                    allowance[address(arg1)][address(msg.sender)] = 0
                                                                                    emit 0x738c5be1: 0, arg1, msg.sender
                                                                                else:
                                                                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                                    emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
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
        revert with 0, 32, 36, 0x2545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    if 0x94fa448001701a78738b408f9f3cb38313018d53 == arg1:
        allowance[address(arg1)][address(msg.sender)] -= arg2
        emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
    else:
        if 0x8628b99856031645ecf57dabb124bdafdd006003 == arg1:
            allowance[address(arg1)][address(msg.sender)] -= arg2
            emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
        else:
            if 0x10ae95bcb806ecab7be7f7581659b03a2969bce8 == arg1:
                allowance[address(arg1)][address(msg.sender)] -= arg2
                emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
            else:
                if 0x27060c8d7bb9e97ed5f91cb3552287354d08aaca == arg1:
                    allowance[address(arg1)][address(msg.sender)] -= arg2
                    emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                else:
                    if 0x74845a09f6a34cb0314485cf4186abca0ff97f85 == arg1:
                        allowance[address(arg1)][address(msg.sender)] -= arg2
                        emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                    else:
                        if 0x6822ff8f8b76fc35066d2b552a9aad5a4784f018 == arg1:
                            allowance[address(arg1)][address(msg.sender)] -= arg2
                            emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                        else:
                            if 0x21994c3024fccf2485107aa6114c3ae33a691ae2 == arg1:
                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                            else:
                                if 0xccdbb090a83ecfd7e8cd1ea72d46f23d8712125e == arg1:
                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                    emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                else:
                                    if 0x51eff32b946818cb01fa9fd2ad499a4166283455 == arg1:
                                        allowance[address(arg1)][address(msg.sender)] -= arg2
                                        emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                    else:
                                        if 0xc47f7903c6e0966e491705b5025f5e8c11b32b3b == arg1:
                                            allowance[address(arg1)][address(msg.sender)] -= arg2
                                            emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                        else:
                                            if 0x1232cfba2618f3cf80ea0a573e4eb5a9743fe916 == arg1:
                                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                                emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                            else:
                                                if 0x2e8e17e00729998b512622ac0e43d19db3f78080 == arg1:
                                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                                    emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                else:
                                                    if 0x239b28afc67496e4cca59689d4990ed862b74682 == arg1:
                                                        allowance[address(arg1)][address(msg.sender)] -= arg2
                                                        emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                    else:
                                                        if 0xc5554277d29ea4876f563d056f86d80c270b0c50 == arg1:
                                                            allowance[address(arg1)][address(msg.sender)] -= arg2
                                                            emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                        else:
                                                            if 0x349e8c60c400a5cf128c73b29a2c045bfdc2ebd3 == arg1:
                                                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                            else:
                                                                if 0xe24eeab412260a82065d7072b4ede43cf1ecbcf2 == arg1:
                                                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                    emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                                else:
                                                                    if 0x1dbfbd8000fdb41a09afe1ca4f0240af7dd546cc == arg1:
                                                                        allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                        emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                                    else:
                                                                        if 0x497c50789daa471a4e94e238a00930e115f97ebf == arg1:
                                                                            allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                            emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                                        else:
                                                                            if 0x686d015421679d4fe72b185a6cd4cc665155f96 == arg1:
                                                                                allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                                emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
                                                                            else:
                                                                                if arg1 != 0x59b38b720616544dcb98dd113b0b88164ef9fa3c:
                                                                                    allowance[address(arg1)][address(msg.sender)] = 0
                                                                                    emit 0x738c5be1: 0, arg1, msg.sender
                                                                                else:
                                                                                    allowance[address(arg1)][address(msg.sender)] -= arg2
                                                                                    emit 0x738c5be1: (allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender
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
        revert with 0, 32, 36, 0x2545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    if 0x94fa448001701a78738b408f9f3cb38313018d53 == msg.sender:
        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
        emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
    else:
        if 0x8628b99856031645ecf57dabb124bdafdd006003 == msg.sender:
            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
            emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
        else:
            if 0x10ae95bcb806ecab7be7f7581659b03a2969bce8 == msg.sender:
                allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
            else:
                if 0x27060c8d7bb9e97ed5f91cb3552287354d08aaca == msg.sender:
                    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                    emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                else:
                    if 0x74845a09f6a34cb0314485cf4186abca0ff97f85 == msg.sender:
                        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                        emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                    else:
                        if 0x6822ff8f8b76fc35066d2b552a9aad5a4784f018 == msg.sender:
                            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                            emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                        else:
                            if 0x21994c3024fccf2485107aa6114c3ae33a691ae2 == msg.sender:
                                allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                            else:
                                if 0xccdbb090a83ecfd7e8cd1ea72d46f23d8712125e == msg.sender:
                                    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                    emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                                else:
                                    if 0x51eff32b946818cb01fa9fd2ad499a4166283455 == msg.sender:
                                        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                        emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                                    else:
                                        if 0xc47f7903c6e0966e491705b5025f5e8c11b32b3b == msg.sender:
                                            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                            emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                                        else:
                                            if 0x1232cfba2618f3cf80ea0a573e4eb5a9743fe916 == msg.sender:
                                                allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                                emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                                            else:
                                                if 0x2e8e17e00729998b512622ac0e43d19db3f78080 == msg.sender:
                                                    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                                    emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                                                else:
                                                    if 0x239b28afc67496e4cca59689d4990ed862b74682 == msg.sender:
                                                        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                                        emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                                                    else:
                                                        if 0xc5554277d29ea4876f563d056f86d80c270b0c50 == msg.sender:
                                                            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                                            emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                                                        else:
                                                            if 0x349e8c60c400a5cf128c73b29a2c045bfdc2ebd3 == msg.sender:
                                                                allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                                                emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                                                            else:
                                                                if 0xe24eeab412260a82065d7072b4ede43cf1ecbcf2 == msg.sender:
                                                                    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                                                    emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                                                                else:
                                                                    if 0x1dbfbd8000fdb41a09afe1ca4f0240af7dd546cc == msg.sender:
                                                                        allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                                                        emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                                                                    else:
                                                                        if 0x497c50789daa471a4e94e238a00930e115f97ebf == msg.sender:
                                                                            allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                                                            emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                                                                        else:
                                                                            if 0x686d015421679d4fe72b185a6cd4cc665155f96 == msg.sender:
                                                                                allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                                                                emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
                                                                            else:
                                                                                if msg.sender != 0x59b38b720616544dcb98dd113b0b88164ef9fa3c:
                                                                                    allowance[address(msg.sender)][address(arg1)] = 0
                                                                                    emit 0x738c5be1: 0, msg.sender, arg1
                                                                                else:
                                                                                    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
                                                                                    emit 0x738c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
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
                    0x2545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    if 0x94fa448001701a78738b408f9f3cb38313018d53 == msg.sender:
        allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
        emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    else:
        if 0x8628b99856031645ecf57dabb124bdafdd006003 == msg.sender:
            allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
            emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
        else:
            if 0x10ae95bcb806ecab7be7f7581659b03a2969bce8 == msg.sender:
                allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
            else:
                if 0x27060c8d7bb9e97ed5f91cb3552287354d08aaca == msg.sender:
                    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                    emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                else:
                    if 0x74845a09f6a34cb0314485cf4186abca0ff97f85 == msg.sender:
                        allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                        emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                    else:
                        if 0x6822ff8f8b76fc35066d2b552a9aad5a4784f018 == msg.sender:
                            allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                            emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                        else:
                            if 0x21994c3024fccf2485107aa6114c3ae33a691ae2 == msg.sender:
                                allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                            else:
                                if 0xccdbb090a83ecfd7e8cd1ea72d46f23d8712125e == msg.sender:
                                    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                    emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                                else:
                                    if 0x51eff32b946818cb01fa9fd2ad499a4166283455 == msg.sender:
                                        allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                        emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                                    else:
                                        if 0xc47f7903c6e0966e491705b5025f5e8c11b32b3b == msg.sender:
                                            allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                            emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                                        else:
                                            if 0x1232cfba2618f3cf80ea0a573e4eb5a9743fe916 == msg.sender:
                                                allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                                emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                                            else:
                                                if 0x2e8e17e00729998b512622ac0e43d19db3f78080 == msg.sender:
                                                    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                                    emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                                                else:
                                                    if 0x239b28afc67496e4cca59689d4990ed862b74682 == msg.sender:
                                                        allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                                        emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                                                    else:
                                                        if 0xc5554277d29ea4876f563d056f86d80c270b0c50 == msg.sender:
                                                            allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                                            emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                                                        else:
                                                            if 0x349e8c60c400a5cf128c73b29a2c045bfdc2ebd3 == msg.sender:
                                                                allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                                                emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                                                            else:
                                                                if 0xe24eeab412260a82065d7072b4ede43cf1ecbcf2 == msg.sender:
                                                                    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                                                    emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                                                                else:
                                                                    if 0x1dbfbd8000fdb41a09afe1ca4f0240af7dd546cc == msg.sender:
                                                                        allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                                                        emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                                                                    else:
                                                                        if 0x497c50789daa471a4e94e238a00930e115f97ebf == msg.sender:
                                                                            allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                                                            emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                                                                        else:
                                                                            if 0x686d015421679d4fe72b185a6cd4cc665155f96 == msg.sender:
                                                                                allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                                                                emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
                                                                            else:
                                                                                if msg.sender != 0x59b38b720616544dcb98dd113b0b88164ef9fa3c:
                                                                                    allowance[address(msg.sender)][address(arg1)] = 0
                                                                                    emit 0x738c5be1: 0, msg.sender, arg1
                                                                                else:
                                                                                    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
                                                                                    emit 0x738c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
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
                    0x6545524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x2545524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    if 0x94fa448001701a78738b408f9f3cb38313018d53 == arg1:
        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
        emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
    else:
        if 0x8628b99856031645ecf57dabb124bdafdd006003 == arg1:
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
            emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
        else:
            if 0x10ae95bcb806ecab7be7f7581659b03a2969bce8 == arg1:
                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
            else:
                if 0x27060c8d7bb9e97ed5f91cb3552287354d08aaca == arg1:
                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                    emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                else:
                    if 0x74845a09f6a34cb0314485cf4186abca0ff97f85 == arg1:
                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                        emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                    else:
                        if 0x6822ff8f8b76fc35066d2b552a9aad5a4784f018 == arg1:
                            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                            emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                        else:
                            if 0x21994c3024fccf2485107aa6114c3ae33a691ae2 == arg1:
                                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                            else:
                                if 0xccdbb090a83ecfd7e8cd1ea72d46f23d8712125e == arg1:
                                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                    emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                                else:
                                    if 0x51eff32b946818cb01fa9fd2ad499a4166283455 == arg1:
                                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                        emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                                    else:
                                        if 0xc47f7903c6e0966e491705b5025f5e8c11b32b3b == arg1:
                                            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                            emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                                        else:
                                            if 0x1232cfba2618f3cf80ea0a573e4eb5a9743fe916 == arg1:
                                                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                                emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                                            else:
                                                if 0x2e8e17e00729998b512622ac0e43d19db3f78080 == arg1:
                                                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                                    emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                                                else:
                                                    if 0x239b28afc67496e4cca59689d4990ed862b74682 == arg1:
                                                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                                        emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                                                    else:
                                                        if 0xc5554277d29ea4876f563d056f86d80c270b0c50 == arg1:
                                                            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                                            emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                                                        else:
                                                            if 0x349e8c60c400a5cf128c73b29a2c045bfdc2ebd3 == arg1:
                                                                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                                                emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                                                            else:
                                                                if 0xe24eeab412260a82065d7072b4ede43cf1ecbcf2 == arg1:
                                                                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                                                    emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                                                                else:
                                                                    if 0x1dbfbd8000fdb41a09afe1ca4f0240af7dd546cc == arg1:
                                                                        allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                                                        emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                                                                    else:
                                                                        if 0x497c50789daa471a4e94e238a00930e115f97ebf == arg1:
                                                                            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                                                            emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                                                                        else:
                                                                            if 0x686d015421679d4fe72b185a6cd4cc665155f96 == arg1:
                                                                                allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                                                                emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
                                                                            else:
                                                                                if arg1 != 0x59b38b720616544dcb98dd113b0b88164ef9fa3c:
                                                                                    allowance[address(arg1)][address(msg.sender)] = 0
                                                                                    emit 0x738c5be1: 0, arg1, msg.sender
                                                                                else:
                                                                                    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
                                                                                    emit 0x738c5be1: (allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender
    return 1
}



}
