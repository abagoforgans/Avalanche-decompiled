contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint32 stor1;
address owner;
uint256 stor1;
address transferTokenAddress;
uint256 maxTransfer;
uint8 sub_e7c4393e;
array of uint8 stor5;
uint256 totalTransfer;
uint256 totalRelease;
array of struct stor134217735;
array of struct stor9089746940727745916786284801695493102549349887120302283304500830217678809902;
array of address stor9089746940727745916786284801695493102549349887120302283304500830217678809903;
array of uint256 stor9089746940727745916786284801695493102549349887120302283304500830217678809904;
array of uint256 stor9089746940727745916786284801695493102549349887120302283304500830217678809905;
array of struct stor9089746940727745916786284801695493102549349887120302283304500830217678809906;
array of uint256 stor9089746940727745916786284801695493102549349887120302283304500830217678809907;

function sub_548d496f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 4294967296
    return bool(uint8(stor5[uint8(arg1)]))
}

function transferToken() payable {
    return transferTokenAddress
}

function owner() payable {
    return address(owner)
}

function sub_a39a8dbd(?) payable {
    return stor8000.length
}

function totalRelease() payable {
    return totalRelease
}

function totalTransfer() payable {
    return totalTransfer
}

function sub_e7c4393e(?) payable {
    return sub_e7c4393e
}

function maxTransfer() payable {
    return maxTransfer
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(address(owner), 0);
    address(owner) = 0
}

function sub_32ea039a(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e7c4393e = arg1
    emit 0x3b0e24ae: arg1
}

function setMaxTransfer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTransfer = arg1
    emit 0x18f94ea7: arg1
}

function sub_ed76da99(?) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < stor8000.length:
        mem[0] = 134217735
        if stor8000[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function balance() payable {
    require ext_code.size(transferTokenAddress)
    staticcall transferTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c9a93a99(?) payable {
    idx = 0
    while idx < stor8000.length:
        mem[0] = 134217735
        require stor8000[idx].field_1024 <= 3
        if stor8000[idx].field_1024:
            require stor8000[idx].field_1024 <= 3
            if stor8000[idx].field_1024 != 1:
                idx = idx + 1
                continue 
        return idx
    return 0
}

function transfers(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < stor8000.length
    require stor8000[arg1].field_1024 <= 3
    return stor8000[arg1].field_0, 
           stor8000[arg1].field_0,
           stor8000[arg1].field_256,
           stor8000[arg1].field_512,
           stor8000[arg1].field_768,
           stor8000[arg1].field_1024,
           stor8000[arg1].field_1280
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x214f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(address(owner), arg1);
    address(owner) = arg1
}

function sub_8fbbb557(?) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < 4294967296
    uint256(stor5[uint32(arg1) / 32]) = arg2 * 256^(arg1 % 32) or !(255 * 256^(arg1 % 32)) and uint256(stor5[uint32(arg1) / 32])
    if not arg2:
        if uint8(stor5[uint8(arg1)]):
            emit 0xceb77835: arg1
    else:
        if not uint8(stor5[uint8(arg1)]):
            emit 0xb4b5da88: arg1
        else:
            if not arg2:
                if uint8(stor5[uint8(arg1)]):
                    emit 0xceb77835: arg1
}

function sub_738a11bd(?) payable {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < stor8000.length:
        mem[0] = 134217735
        if stor8000[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        if s + 1 != arg2:
            idx = idx + 1
            s = s + 1
            continue 
        return idx
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                58,
                0x21426966726f73743a3a7472616e73666572496473466f72416464726573733a206e6f207472616e73666572732073656e742062792075736572,
                mem[222 len 6]
}

function completeTransfer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor8000.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x21426966726f73743a3a636f6d706c6574655472616e736665723a20696e76616c6964207472616e73666572206964,
                    mem[211 len 17]
    require stor8000[arg1].field_1024 <= 3
    if stor8000[arg1].field_1024 != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    54,
                    0x21426966726f73743a3a636f6e6669726d5472616e736665723a207472616e73666572206d7573742062652070726f63657373696e67,
                    mem[218 len 10]
    stor8000[arg1].field_1024 = 2
    emit 0xfd987fd5: arg1
}

function sub_68e1027f(?) payable {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < stor8000.length:
        mem[0] = 134217735
        if stor8000[idx].field_0 != arg1:
            idx = idx + 1
            s = s
            continue 
        if s + 1 != arg2:
            idx = idx + 1
            s = s + 1
            continue 
        require idx < stor8000.length
        require stor8000[idx].field_1024 <= 3
        return stor8000[idx].field_0, 
               stor8000[idx].field_0,
               stor8000[idx].field_256,
               stor8000[idx].field_512,
               stor8000[idx].field_768,
               stor8000[idx].field_1024,
               stor8000[idx].field_1280
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                58,
                0x21426966726f73743a3a7472616e73666572496473466f72416464726573733a206e6f207472616e73666572732073656e742062792075736572,
                mem[222 len 6]
}

function sub_79b48b0e(?) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor8000.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x64426966726f73743a3a636f6e6669726d5472616e736665723a20696e76616c6964207472616e73666572206964,
                    mem[210 len 18]
    require stor8000[arg1].field_1024 <= 3
    if stor8000[arg1].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    52,
                    0x21426966726f73743a3a636f6e6669726d5472616e736665723a207472616e73666572206d75737420626520696e697461746564,
                    mem[216 len 12]
    if sub_e7c4393e + stor8000[arg1].field_768 < stor8000[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if sub_e7c4393e + stor8000[arg1].field_768 > block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    61,
                    0x21426966726f73743a3a636f6e6669726d5472616e736665723a206e6f7420656e6f75676820626c6f636b20636f6e6669726d6174696f6e7320796574,
                    mem[225 len 3]
    stor8000[arg1].field_1024 = 1
    stor8000[arg1].field_1280 = arg2
    emit 0xf467d939: arg1, arg2
}

function recover(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), Mask(224, 32, arg2) >> 32
    call arg1 with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), arg2
        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor1):
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
    emit Recovered(address(arg1), arg2);
}

function release(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x21426966726f73743a3a72656c656173653a2063616e6e6f74207472616e736665722030,
                    mem[200 len 28]
    if maxTransfer <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0xfe426966726f73743a3a72656c656173653a2063757272656e746c79206e6f7420616374697665,
                    mem[203 len 25]
    if arg2 > maxTransfer:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x21426966726f73743a3a72656c656173653a20616d6f756e74206c6172676572207468616e206d6178696d756d20616c6c6f776564207472616e73666572,
                    mem[226 len 2]
    require ext_code.size(transferTokenAddress)
    staticcall transferTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x21426966726f73743a3a72656c656173653a206e6f7420656e6f7567682062616c616e636520696e20426966726f7374,
                    mem[212 len 16]
    if arg2 + totalRelease < totalRelease:
        revert with 0, 'SafeMath: addition overflow'
    totalRelease += arg2
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(transferTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call transferTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg2
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
    emit Released(address(arg1), arg2);
}

function sub_7d6b79e7(?) payable {
    require calldata.size - 4 >= 32
    if address(owner) != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= stor8000.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x21426966726f73743a3a61626f72745472616e736665723a20696e76616c6964207472616e73666572206964,
                    mem[208 len 20]
    require stor8000[arg1].field_1024 <= 3
    if stor8000[arg1].field_1024 == 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    56,
                    0x21426966726f73743a3a61626f72745472616e736665723a2063616e6e6f742061626f727420636f6d706c65746564207472616e73666572,
                    mem[220 len 8]
    require stor8000[arg1].field_1024 <= 3
    if stor8000[arg1].field_1024 == 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x21426966726f73743a3a61626f72745472616e736665723a2063616e6e6f742061626f727420616c72656164792061626f72746564207472616e73666572,
                    mem[226 len 2]
    require ext_code.size(transferTokenAddress)
    staticcall transferTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor8000[arg1].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x6c426966726f73743a3a7472616e736665723a206e6f7420656e6f7567682062616c616e636520696e20426966726f737420746f2061626f7274,
                    mem[222 len 6]
    stor8000[arg1].field_1024 = 3
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(transferTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), stor8000[arg1].field_0, stor8000[arg1].field_0, stor8000[arg1].field_544
    mem[324 len 0] = 0
    call transferTokenAddress with:
       funct stor8000[arg1].field_0
         gas gas_remaining wei
        args stor8000[arg1].field_512, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), stor8000[arg1].field_0, stor8000[arg1].field_0, stor8000[arg1].field_512
        if not unknown_0xa9059cbb(?????), stor8000[arg1].field_0:
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
    emit 0x8a987b1b: arg1
}

function sub_d09ae45b(?) payable {
    require calldata.size - 4 >= 96
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x21426966726f73743a3a7472616e736665723a2063616e6e6f74207472616e736665722030,
                    mem[201 len 27]
    if maxTransfer <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x73426966726f73743a3a7472616e736665723a2063757272656e746c79206e6f7420616374697665,
                    mem[204 len 24]
    require arg1 < 4294967296
    if not uint8(stor5[uint8(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x21426966726f73743a3a7472616e736665723a20756e737570706f727465642074617267657420636861696e,
                    mem[208 len 20]
    if arg3 > maxTransfer:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    63,
                    0x21426966726f73743a3a7472616e736665723a20616d6f756e74206c6172676572207468616e206d6178696d756d20616c6c6f776564207472616e73666572,
                    mem[227 len 1]
    require ext_code.size(transferTokenAddress)
    staticcall transferTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    57,
                    0x21426966726f73743a3a7472616e736665723a206e6f7420656e6f7567682062616c616e636520696e2073656e64657227732077616c6c6574,
                    mem[221 len 7]
    if arg3 + totalTransfer < totalTransfer:
        revert with 0, 'SafeMath: addition overflow'
    totalTransfer += arg3
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x21416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
    if not ext_code.size(transferTokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg3) >> 32
    mem[416 len 4] = 0
    mem[388 len 0] = 0
    call transferTokenAddress with:
         gas gas_remaining wei
        args Mask(224, 32, arg3) << 480, mem[388 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg3
        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
            revert with 0, 
                        32,
                        42,
                        0x215361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                        mem[402 len 14],
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
    stor8000.length++
    stor1418[stor8000.length].field_0 = msg.sender
    stor1418[stor8000.length].field_160 = arg1
    stor1418[stor8000.length] = arg2
    stor1418[stor8000.length] = arg3
    stor1418[stor8000.length] = block.number
    stor1418[stor8000.length].field_0 = 0
    stor1418[stor8000.length].field_256 = 0
    stor1418[stor8000.length] = 0
    if 1 > stor8000.length:
        revert with 0, 'SafeMath: subtraction overflow'
    emit 0xa2cf7277: arg1 << 224, arg3, block.number, stor8000.length - 1, msg.sender, arg2
    stor0 = 1
}



}
