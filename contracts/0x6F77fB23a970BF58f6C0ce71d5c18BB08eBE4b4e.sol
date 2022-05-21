contract main {




// =====================  Runtime code  =====================


address owner;
address sub_e32204ddAddress;
address stor2;
uint256 sub_722c785b;
mapping of uint256 sub_0a1bbb3f;
mapping of uint256 sub_9861087f;
mapping of uint8 stor6;

function sub_0a1bbb3f(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    return sub_0a1bbb3f[arg1]
}

function sub_722c785b(?) {
    return sub_722c785b
}

function owner() {
    return owner
}

function sub_9861087f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_9861087f[arg1]
}

function sub_a666a18e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[arg1])
}

function sub_e32204dd(?) {
    return sub_e32204ddAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setPriceFeed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2 = arg1
}

function withdrawETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function sub_3769248f(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_0a1bbb3f[arg1 << 248] = arg2
}

function setPaymentWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e32204ddAddress = arg1
}

function sub_89fb844a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_9861087f[address(arg1)] = arg2
}

function sub_52444d0a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = uint8(bool(arg2))
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawTokens(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2:
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, arg2
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'make sure there is a balance available to withdraw'
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_04d4e962(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'arrays need to be the same length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 159 len 1]
        mem[32] = 4
        sub_0a1bbb3f[mem[(32 * idx) + 159 len 1]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function getLatestETHPrice() {
    require ext_code.size(stor2)
    staticcall stor2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor2)
    staticcall stor2.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not uint8(ext_call.return_data[0]):
        if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        return (10^18 * ext_call.return_data[32])
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        if ext_call.return_data[32] and 10^18 / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
            revert with 0, 17
        return (ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]))
    s = 10
    t = 1
    idx = uint8(ext_call.return_data[0])
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    if ext_call.return_data[32] and 10^18 / s * t > -1 / ext_call.return_data[32]:
        revert with 0, 17
    return (ext_call.return_data[32] * 10^18 / s * t)
}

function sub_701462a5(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'arrays need to be the same length'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        sub_9861087f[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_324870fd(?) {
    require calldata.size - 4 >= 32
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(stor2)
    staticcall stor2.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(stor2)
    staticcall stor2.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not uint8(ext_call.return_data[0]):
        if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if 10^18 * arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not 10^18 * ext_call.return_data[32]:
            revert with 0, 18
        return (1000000000000000000 * 10^18 * arg1 / 10^18 * ext_call.return_data[32])
    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        if ext_call.return_data[32] and 10^18 / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
            revert with 0, 17
        if 10^18 * arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]):
            revert with 0, 18
        return (1000000000000000000 * 10^18 * arg1 / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]))
    s = 10
    t = 1
    idx = uint8(ext_call.return_data[0])
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    if ext_call.return_data[32] and 10^18 / s * t > -1 / ext_call.return_data[32]:
        revert with 0, 17
    if 10^18 * arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[32] * 10^18 / s * t:
        revert with 0, 18
    return (1000000000000000000 * 10^18 * arg1 / ext_call.return_data[32] * 10^18 / s * t)
}

function sub_d9e30e55(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == uint8(arg2)
    if not stor6[msg.sender]:
        if sub_9861087f[msg.sender]:
            if sub_9861087f[msg.sender]:
                if sub_9861087f[msg.sender] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                require ext_code.size(stor2)
                staticcall stor2.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(stor2)
                staticcall stor2.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if not uint8(ext_call.return_data[0]):
                    if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if 10^18 * sub_9861087f[msg.sender] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * ext_call.return_data[32]:
                        revert with 0, 18
                    if msg.value < 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / 10^18 * ext_call.return_data[32]:
                        revert with 0, 'not enough ETH sent to pay for product'
                    if 57005 == sub_e32204ddAddress:
                        call owner with:
                           value 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / 10^18 * ext_call.return_data[32] wei
                             gas gas_remaining wei
                    else:
                        if not sub_e32204ddAddress:
                            call owner with:
                               value 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / 10^18 * ext_call.return_data[32] wei
                                 gas gas_remaining wei
                        else:
                            call sub_e32204ddAddress with:
                               value 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / 10^18 * ext_call.return_data[32] wei
                                 gas gas_remaining wei
                    if sub_722c785b > !(1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / 10^18 * ext_call.return_data[32]):
                        revert with 0, 17
                    sub_722c785b += 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / 10^18 * ext_call.return_data[32]
                    emit Spend((1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / 10^18 * ext_call.return_data[32]), msg.sender, address(arg1));
                else:
                    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        if ext_call.return_data[32] and 10^18 / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if 10^18 * sub_9861087f[msg.sender] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        if msg.value < 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'not enough ETH sent to pay for product'
                        if 57005 == sub_e32204ddAddress:
                            call owner with:
                               value 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]) wei
                                 gas gas_remaining wei
                        else:
                            if not sub_e32204ddAddress:
                                call owner with:
                                   value 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]) wei
                                     gas gas_remaining wei
                            else:
                                call sub_e32204ddAddress with:
                                   value 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]) wei
                                     gas gas_remaining wei
                        if sub_722c785b > !(1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0])):
                            revert with 0, 17
                        sub_722c785b += 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0])
                        emit Spend((1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0])), msg.sender, address(arg1));
                    else:
                        s = 10
                        t = 1
                        idx = uint8(ext_call.return_data[0])
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        if ext_call.return_data[32] and 10^18 / s * t > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if 10^18 * sub_9861087f[msg.sender] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[32] * 10^18 / s * t:
                            revert with 0, 18
                        if msg.value < 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / s * t:
                            revert with 0, 'not enough ETH sent to pay for product'
                        if 57005 == sub_e32204ddAddress:
                            call owner with:
                               value 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / s * t wei
                                 gas gas_remaining wei
                        else:
                            if not sub_e32204ddAddress:
                                call owner with:
                                   value 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / s * t wei
                                     gas gas_remaining wei
                            else:
                                call sub_e32204ddAddress with:
                                   value 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / s * t wei
                                     gas gas_remaining wei
                        if sub_722c785b > !(1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / s * t):
                            revert with 0, 17
                        sub_722c785b += 1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / s * t
                        emit Spend((1000000000000000000 * 10^18 * sub_9861087f[msg.sender] / ext_call.return_data[32] * 10^18 / s * t), msg.sender, address(arg1));
        else:
            if sub_0a1bbb3f[arg2 << 248]:
                if sub_0a1bbb3f[arg2 << 248] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                    revert with 0, 17
                require ext_code.size(stor2)
                staticcall stor2.0x313ce567 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[31 len 1]
                require ext_code.size(stor2)
                staticcall stor2.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                if not uint8(ext_call.return_data[0]):
                    if ext_call.return_data[32] and 10^18 > -1 / ext_call.return_data[32]:
                        revert with 0, 17
                    if 10^18 * sub_0a1bbb3f[arg2 << 248] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                        revert with 0, 17
                    if not 10^18 * ext_call.return_data[32]:
                        revert with 0, 18
                    if msg.value < 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / 10^18 * ext_call.return_data[32]:
                        revert with 0, 'not enough ETH sent to pay for product'
                    if 57005 == sub_e32204ddAddress:
                        call owner with:
                           value 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / 10^18 * ext_call.return_data[32] wei
                             gas gas_remaining wei
                    else:
                        if not sub_e32204ddAddress:
                            call owner with:
                               value 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / 10^18 * ext_call.return_data[32] wei
                                 gas gas_remaining wei
                        else:
                            call sub_e32204ddAddress with:
                               value 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / 10^18 * ext_call.return_data[32] wei
                                 gas gas_remaining wei
                    if sub_722c785b > !(1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / 10^18 * ext_call.return_data[32]):
                        revert with 0, 17
                    sub_722c785b += 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / 10^18 * ext_call.return_data[32]
                    emit Spend((1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / 10^18 * ext_call.return_data[32]), msg.sender, address(arg1));
                else:
                    if bool(bool(uint8(ext_call.return_data[0]) < 78)) or bool(bool(uint8(ext_call.return_data[0]) < 32)):
                        if not 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        if ext_call.return_data[32] and 10^18 / 10^uint8(ext_call.return_data[0]) > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if 10^18 * sub_0a1bbb3f[arg2 << 248] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 18
                        if msg.value < 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]):
                            revert with 0, 'not enough ETH sent to pay for product'
                        if 57005 == sub_e32204ddAddress:
                            call owner with:
                               value 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]) wei
                                 gas gas_remaining wei
                        else:
                            if not sub_e32204ddAddress:
                                call owner with:
                                   value 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]) wei
                                     gas gas_remaining wei
                            else:
                                call sub_e32204ddAddress with:
                                   value 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0]) wei
                                     gas gas_remaining wei
                        if sub_722c785b > !(1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0])):
                            revert with 0, 17
                        sub_722c785b += 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0])
                        emit Spend((1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / 10^uint8(ext_call.return_data[0])), msg.sender, address(arg1));
                    else:
                        s = 10
                        t = 1
                        idx = uint8(ext_call.return_data[0])
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        if ext_call.return_data[32] and 10^18 / s * t > -1 / ext_call.return_data[32]:
                            revert with 0, 17
                        if 10^18 * sub_0a1bbb3f[arg2 << 248] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                            revert with 0, 17
                        if not ext_call.return_data[32] * 10^18 / s * t:
                            revert with 0, 18
                        if msg.value < 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / s * t:
                            revert with 0, 'not enough ETH sent to pay for product'
                        if 57005 == sub_e32204ddAddress:
                            call owner with:
                               value 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / s * t wei
                                 gas gas_remaining wei
                        else:
                            if not sub_e32204ddAddress:
                                call owner with:
                                   value 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / s * t wei
                                     gas gas_remaining wei
                            else:
                                call sub_e32204ddAddress with:
                                   value 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / s * t wei
                                     gas gas_remaining wei
                        if sub_722c785b > !(1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / s * t):
                            revert with 0, 17
                        sub_722c785b += 1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / s * t
                        emit Spend((1000000000000000000 * 10^18 * sub_0a1bbb3f[arg2 << 248] / ext_call.return_data[32] * 10^18 / s * t), msg.sender, address(arg1));
}



}
