contract main {




// =====================  Runtime code  =====================


uint32 stor0;
address owner;
uint256 stor0;
uint256 stor1;
address sub_fd435125Address;
address paymentTokenAddress;
uint256 totalClaimable;
uint256 totalClaimed;
uint256 endTime;
uint256 price;
mapping of uint8 stor8;
mapping of struct claims;

function paymentToken() payable {
    return paymentTokenAddress
}

function endTime() payable {
    return endTime
}

function totalClaimable() payable {
    return totalClaimable
}

function owner() payable {
    return address(owner)
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function price() payable {
    return price
}

function claims(address arg1) payable {
    require calldata.size - 4 >= 32
    return claims[arg1].field_0
}

function totalClaimed() payable {
    return totalClaimed
}

function sub_fd435125(?) payable {
    return sub_fd435125Address
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function whitelistAddress(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if not arg1:
        revert with 0, 'Zero Address: Not Allowed'
    stor8[address(arg1)] = uint8(arg2)
    return 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x214f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function whitelistAddresses(address[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if address(owner) != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Zero Address: Not Allowed'
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 8
        stor8[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
        idx = idx + 1
        continue 
    return 1
}

function init(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if sub_fd435125Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x72596f752063616e206f6e6c7920696e697469616c697a652061206c61756e6368706164206f6e6365,
                    mem[205 len 23]
    if address(owner) != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if not arg1:
        revert with 0, 'Zero Address: Not Allowed'
    if not arg2:
        revert with 0, 'Zero Address: Not Allowed'
    sub_fd435125Address = arg1
    paymentTokenAddress = arg2
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalClaimable = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x596f75206e65656420746f20696e6974616c697a6520746865206c61756e6368706164207769746820636c61696d61626c6520746f6b656e7300,
                    mem[222 len 6]
    return 1
}

function start(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if totalClaimable <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x214c61756e636870616420686173206e6f74206265656e20696e697469616c697a656420796574,
                    mem[203 len 25]
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x596f752063616e206f6e6c792073746172742061206c61756e6368706164206f6e636500,
                    mem[200 len 28]
    if arg1 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x21656e6454696d65206e6565647320746f20626520696e2074686520667574757265,
                    mem[198 len 30]
    if arg1 >= block.timestamp + (2016 * 24 * 3600):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x21656e6454696d65206e6565647320746f206265206c657373207468616e203132207765656b7320696e2074686520667574757265,
                    mem[217 len 11]
    endTime = arg1
    price = arg2
    return 1
}

function release(address arg1) payable {
    require calldata.size - 4 >= 32
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x214c61756e636870616420686173206e6f74206265656e207374617274656420796574,
                    mem[199 len 29]
    if endTime >= block.timestamp:
        revert with 0, 'sLaunchpad has not ended yet!'
    if stor1 == 2:
        revert with 0, '!ReentrancyGuard: reentrant call'
    stor1 = 2
    if not claims[address(arg1)].field_0:
        revert with 0, 'Nothing to release!'
    if not ext_code.size(sub_fd435125Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, claims[address(arg1)].field_32
    call sub_fd435125Address with:
         gas gas_remaining wei
        args claims[address(arg1)].field_0, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, claims[address(arg1)].field_0
        if not unknown_0xa9059cbb(?????), address(arg1) << 64:
            revert with 0, 32, 42, 0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    claims[address(arg1)].field_0 = 0
    stor1 = 1
    return 1
}

function releaseUnclaimed() payable {
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x214c61756e636870616420686173206e6f74206265656e207374617274656420796574,
                    mem[199 len 29]
    if endTime >= block.timestamp:
        revert with 0, 'sLaunchpad has not ended yet!'
    if address(owner) != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if stor1 == 2:
        revert with 0, '!ReentrancyGuard: reentrant call'
    stor1 = 2
    if not ext_code.size(sub_fd435125Address):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), Mask(224, 32, totalClaimable - totalClaimed) >> 32
    call sub_fd435125Address with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(224, 32, totalClaimable - totalClaimed) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), totalClaimable - totalClaimed
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    totalClaimable = 0
    stor1 = 1
    return 1
}

function releasePayments() payable {
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x214c61756e636870616420686173206e6f74206265656e207374617274656420796574,
                    mem[199 len 29]
    if endTime >= block.timestamp:
        revert with 0, 'sLaunchpad has not ended yet!'
    if address(owner) != msg.sender:
        revert with 0, '!Ownable: caller is not the owne'
    if stor1 == 2:
        revert with 0, '!ReentrancyGuard: reentrant call'
    stor1 = 2
    require ext_code.size(paymentTokenAddress)
    staticcall paymentTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_code.size(paymentTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0 len 28]
    call paymentTokenAddress with:
       funct uint32(stor0)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor0), uint32(stor0), ext_call.return_data[0]
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor0):
            revert with 0, 32, 42, 0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    stor1 = 1
    return 1
}

function claim(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x214c61756e636870616420686173206e6f74206265656e207374617274656420796574,
                    mem[199 len 29]
    if endTime <= block.timestamp:
        revert with 0, 'Launchpad has been finished!'
    if stor1 == 2:
        revert with 0, '!ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor8[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    49,
                    0xfe4164647265737320686173206e6f74206265656e2077686974656c697374656420666f722074686973206c61756e6368,
                    mem[213 len 15]
    require ext_code.size(paymentTokenAddress)
    staticcall paymentTokenAddress.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 10^ext_call.return_data[31 len 1]
    if not ext_code.size(paymentTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2 * price / 10^uint8(ext_call.return_data[0])) >> 32
    mem[416 len 4] = 0
    call paymentTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2 * price / 10^uint8(ext_call.return_data[0])) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg2 * price / 10^uint8(ext_call.return_data[0])
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
                        0,
                        mem[420 len 4]
        claims[address(arg1)].field_0 += arg2
        totalClaimed += arg2
        if totalClaimable < arg2 + totalClaimed:
            revert with 0, 
                        32,
                        47,
                        0x21436c61696d696e6720617474656d7074206578636565647320746f74616c436c61696d61626c6520616d6f756e74,
                        mem[407 len 9],
                        0,
                        mem[420 len 4]
    else:
        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[324]:
                revert with 0, 
                            32,
                            42,
                            0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 403 len 22]
        claims[address(arg1)].field_0 += arg2
        totalClaimed += arg2
        if totalClaimable < arg2 + totalClaimed:
            revert with 0, 
                        32,
                        47,
                        0x21436c61696d696e6720617474656d7074206578636565647320746f74616c436c61696d61626c6520616d6f756e74,
                        mem[ceil32(return_data.size) + 408 len 17]
    ('ge', ('stor', ('name', 'totalClaimable', 4)), ('add', ('param', 'arg2'), ('stor', ('name', 'totalClaimed', 5))))
    stor1 = 1
    return 1
}

function sub_087fc924(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if endTime <= 0:
        revert with 0, 
                    32,
                    35,
                    0x214c61756e636870616420686173206e6f74206265656e207374617274656420796574,
                    mem[(32 * arg1.length) + 231 len 29]
    if endTime >= block.timestamp:
        revert with 0, 'sLaunchpad has not ended yet!'
    if stor1 == 2:
        revert with 0, '!ReentrancyGuard: reentrant call'
    stor1 = 2
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _69 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 9
        if not claims[mem[(32 * idx) + 140 len 20]].field_0:
            revert with 0, 'Nothing to release!'
        _73 = mem[64]
        mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 68] = claims[mem[0]].field_0
        _74 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_74 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_74 + 36 len 28]
        mem[64] = _73 + 164
        mem[_73 + 100] = 32
        mem[_73 + 132] = 'SafeERC20: low-level call failed'
        if not ext_code.size(sub_fd435125Address):
            revert with 0, 'Address: call to non-contract'
        _78 = mem[_74]
        t = _74 + 32
        u = _73 + 164
        s = mem[_74]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_73 + floor32(mem[_74]) + 164] = mem[_74 + -(mem[_74] % 32) + floor32(mem[_74]) + 64 len mem[_74] % 32] or Mask(8 * -(mem[_74] % 32) + 32, -(8 * -(mem[_74] % 32) + 32) + 256, mem[_73 + floor32(mem[_74]) + 164])
        call sub_fd435125Address.mem[_73 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_73 + 168 len _78 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_73 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_73 + 168] = 32
                mem[_73 + 200] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _73 + 232] = mem[idx + _73 + 132]
                    idx = idx + 32
                    continue 
                revert with memory
                  from mem[64]
                   len _73 + -mem[64] + 264
            if mem[96]:
                require mem[96] >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_73 + 274 len 22]
        else:
            mem[64] = _73 + ceil32(return_data.size) + 165
            mem[_73 + 164] = return_data.size
            mem[_73 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_73 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_73 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _73 + ceil32(return_data.size) + 233] = mem[idx + _73 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_73 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                if not mem[_73 + 196]:
                    revert with 0, 
                                32,
                                42,
                                0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[_73 + ceil32(return_data.size) + 275 len 22]
        mem[0] = address(_69)
        mem[32] = 9
        claims[address(_69)].field_0 = 0
        idx = idx + 1
        continue 
    stor1 = 1
    return 1
}



}
