contract main {




// =====================  Runtime code  =====================


#
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_4f08a863(?)
#  - sub_8706b531(?)
#  - tokenURI(uint256 arg1)
#  - sub_d871fea2(?)
#  - sub_ffeab7d1(?)
#
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of struct stor101;
array of struct stor102;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor106;
address owner;
mapping of struct sub_79ba2fa2;
mapping of uint256 sub_2b1331a8;
uint256 numMinted;
mapping of struct sub_be75288d;
uint256 presaleStartTime;
uint256 presaleEndTime;
uint8 transfersEnabled; offset 160
uint128 stor207; offset 160
address _signerAddress;
uint256 launchTime;
uint256 sub_f9caa583;
address sub_cd38b90aAddress;
address sub_77b53eceAddress;
address sub_40c397daAddress;
address treasuryAddress;
address teamWalletAddress;
address sub_18551108Address;
uint256 sub_11a040ac;
uint256 stor217;
uint8 paused;
mapping of uint256 stor317;
mapping of uint256 sub_4c3b00c4;

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
    return approved[arg1]
}

function sub_11a040ac(?) payable {
    return sub_11a040ac
}

function teamWalletAddress() payable {
    return teamWalletAddress
}

function sub_18551108(?) payable {
    return sub_18551108Address
}

function presaleEndTime() payable {
    return presaleEndTime
}

function sub_2b1331a8(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_2b1331a8[arg1][arg2]
}

function sub_30ec18c2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_2b1331a8[address(arg1)][arg2]
}

function sub_40c397da(?) payable {
    return sub_40c397daAddress
}

function sub_4c3b00c4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4c3b00c4[arg1]
}

function paused() payable {
    return bool(paused)
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    return balanceOf[address(arg1)]
}

function sub_77b53ece(?) payable {
    return sub_77b53eceAddress
}

function launchTime() payable {
    return launchTime
}

function sub_79ba2fa2(?) payable {
    require calldata.size - 4 >= 32
    return sub_79ba2fa2[arg1].field_512
}

function owner() payable {
    return owner
}

function presaleStartTime() payable {
    return presaleStartTime
}

function sub_be75288d(?) payable {
    require calldata.size - 4 >= 32
    return sub_be75288d[arg1].field_256
}

function transfersEnabled() payable {
    return bool(transfersEnabled)
}

function _signerAddress() payable {
    return _signerAddress
}

function treasuryAddress() payable {
    return treasuryAddress
}

function sub_cd38b90a(?) payable {
    return sub_cd38b90aAddress
}

function numMinted() payable {
    return numMinted
}

function sub_e31ffb63(?) payable {
    require calldata.size - 4 >= 32
    return sub_be75288d[stor201[arg1].field_0].field_1024
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor106[address(arg1)][address(arg2)])
}

function sub_f9caa583(?) payable {
    return sub_f9caa583
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    if numMinted < sub_11a040ac:
        revert with 0, 17
    return (numMinted - sub_11a040ac)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setLaunchTime(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    launchTime = arg1
}

function setBondDiscount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f9caa583 = arg1
}

function sub_1593d8a5(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_256 = arg2
}

function sub_e345c564(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_512 = arg2
}

function sub_135ee927(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_1536 = arg2
}

function sub_72c0ab83(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_1024 = arg2
}

function sub_d010ad7f(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_be75288d[arg1].field_1280 = arg2
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function setTransferable(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor207 = Mask(96, 0, arg1)
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setTreasuryAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    treasuryAddress = arg1
}

function setTeamWalletAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamWalletAddress = arg1
}

function sub_76496784(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_18551108Address = address(arg1)
}

function sub_baabc801(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cd38b90aAddress = address(arg1)
}

function sub_f3fd622f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_77b53eceAddress = address(arg1)
}

function setLiquidityPairAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_40c397daAddress = arg1
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0, 'ERC721: approve to caller'
    stor106[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function Sweep(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to send AVAX'
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

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x80ac58cd00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x5b5e139f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_a07877cc(?) payable {
    if not sub_4c3b00c4[msg.sender]:
        revert with 0, 'Nothing to claim'
    sub_4c3b00c4[msg.sender] = 0
    require ext_code.size(sub_cd38b90aAddress)
    call sub_cd38b90aAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, sub_4c3b00c4[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approval to current owner'
    if ownerOf[arg2] != msg.sender:
        if not stor106[stor103[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721: approve caller is not owner nor approved for all'
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function sub_b38344cf(?) payable {
    require ext_code.size(sub_cd38b90aAddress)
    staticcall sub_cd38b90aAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_40c397daAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_77b53eceAddress)
    staticcall sub_77b53eceAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_40c397daAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'divison by zero error'
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    return (1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}

function getShares(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return 0
    idx = 1
    s = 0
    while idx <= numMinted:
        mem[0] = idx
        mem[32] = 103
        if not ownerOf[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 103
        if not ownerOf[idx]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        if ownerOf[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = sub_79ba2fa2[idx].field_0
        mem[32] = 204
        if s > !(sub_be75288d[stor201[idx].field_0].field_512 / 10^18):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (sub_be75288d[stor201[idx].field_0].field_512 / 10^18)
        continue 
    return s
}

function sub_1d70dbdc(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    if not balanceOf[address(arg1)]:
        return ''
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    if balanceOf[address(arg1)]:
        mem[128 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 1
    s = 0
    while idx <= numMinted:
        mem[0] = idx
        mem[32] = 103
        if not ownerOf[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[0] = idx
        mem[32] = 103
        if not ownerOf[idx]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[idx] != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if s >= balanceOf[address(arg1)]:
            revert with 0, 50
        mem[(32 * s) + 128] = idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=balanceOf[address(arg1)], data=mem[128 len 32 * balanceOf[address(arg1)]])
}

function sub_3a0a52e4(?) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(sub_be75288d[arg1].field_1792):
        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
            revert with 0, 34
        if arg2.length:
            sub_be75288d[arg1][7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_be75288d[arg1].field_1792 = 0
            idx = 0
            while (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 31 / 32 > idx:
                sub_be75288d[arg1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
            revert with 0, 34
        if arg2.length:
            sub_be75288d[arg1][7][].field_0 = Array(len=arg2.length, data=arg2[all])
        else:
            sub_be75288d[arg1].field_1792 = 0
            idx = 0
            while sub_be75288d[arg1].field_1793 % 128 + 31 / 32 > idx:
                sub_be75288d[arg1][idx + 7].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_d83b2611(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_cd38b90aAddress)
    staticcall sub_cd38b90aAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_40c397daAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_77b53eceAddress)
    staticcall sub_77b53eceAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_40c397daAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'divison by zero error'
    if ext_call.return_data[0] > 0x14484bfeebc29f863424b06f3529a051a31be599:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    if sub_be75288d[arg1].field_512 / 10^18 and 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] > -1 / sub_be75288d[arg1].field_512 / 10^18:
        revert with 0, 17
    if 100 < sub_f9caa583:
        revert with 0, 17
    if sub_be75288d[arg1].field_512 / 10^18 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^12 and -sub_f9caa583 + 100 > -1 / sub_be75288d[arg1].field_512 / 10^18 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^12:
        revert with 0, 17
    return ((100 * sub_be75288d[arg1].field_512 / 10^18 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^12) - (sub_f9caa583 * sub_be75288d[arg1].field_512 / 10^18 * 1000000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] / 10^12) / 100)
}

function sub_76b6c578(?) payable {
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
        revert with 0, 'Arrays are not the same size'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 318
        if sub_4c3b00c4[mem[(32 * idx) + 140 len 20]] > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        sub_4c3b00c4[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_52b391b2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: balance query for the zero address'
    mem[128 len 128] = call.data[calldata.size len 128]
    if not balanceOf[address(arg1)]:
        mem[256] = 0
        idx = 1
        s = 0
        while idx <= numMinted:
            mem[0] = idx
            mem[32] = 103
            if not ownerOf[idx]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if sub_79ba2fa2[idx].field_0 >= 4:
                revert with 0, 50
            if mem[(32 * sub_79ba2fa2[idx].field_0) + 128] == -1:
                revert with 0, 17
            mem[(32 * sub_79ba2fa2[idx].field_0) + 128] = mem[(32 * sub_79ba2fa2[idx].field_0) + 128] + 1
            mem[0] = idx
            mem[32] = 103
            if not ownerOf[idx]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[idx] != address(arg1):
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if s == -1:
                revert with 0, 17
            if s >= mem[256]:
                revert with 0, 50
            mem[(32 * s) + 288] = idx
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + 1
            continue 
        mem[288] = 64
        mem[352] = mem[256]
        mem[384 len 32 * mem[256]] = mem[288 len 32 * mem[256]]
        mem[(32 * mem[256]) + 384] = 4
        return Array(len=mem[256], data=mem[384 len (32 * mem[256]) + 32], mem[128 len 128]), (32 * mem[256]) + 96
    if balanceOf[address(arg1)] > test266151307():
        revert with 0, 65
    mem[256] = balanceOf[address(arg1)]
    if balanceOf[address(arg1)]:
        mem[288 len 32 * balanceOf[address(arg1)]] = call.data[calldata.size len 32 * balanceOf[address(arg1)]]
    idx = 1
    s = 0
    while idx <= numMinted:
        mem[0] = idx
        mem[32] = 103
        if not ownerOf[idx]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if sub_79ba2fa2[idx].field_0 >= 4:
            revert with 0, 50
        if mem[(32 * sub_79ba2fa2[idx].field_0) + 128] == -1:
            revert with 0, 17
        mem[(32 * sub_79ba2fa2[idx].field_0) + 128] = mem[(32 * sub_79ba2fa2[idx].field_0) + 128] + 1
        mem[0] = idx
        mem[32] = 103
        if not ownerOf[idx]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[idx] != address(arg1):
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 0, 17
        if s >= mem[256]:
            revert with 0, 50
        mem[(32 * s) + 288] = idx
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)]) + 288] = 64
    mem[(32 * balanceOf[address(arg1)]) + 352] = mem[256]
    mem[(32 * balanceOf[address(arg1)]) + 384 len 32 * mem[256]] = mem[288 len 32 * mem[256]]
    mem[(32 * balanceOf[address(arg1)]) + (32 * mem[256]) + 384] = 4
    return Array(len=mem[256], data=mem[(32 * balanceOf[address(arg1)]) + 384 len (32 * mem[256]) + 32], mem[128 len 128]), 
           (32 * mem[256]) + 96
}

function name() payable {
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor101.length):
            if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor101.length):
                if 31 < uint255(stor101.length) * 0.5:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor101.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
        else:
            if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor101.length.field_1 % 128:
                if 31 < stor101.length.field_1 % 128:
                    mem[128] = uint256(stor101.field_0)
                    idx = 128
                    s = 0
                    while stor101.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor101[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
        mem[ceil32(uint255(stor101.length) * 0.5) + 192 len ceil32(uint255(stor101.length) * 0.5)] = mem[128 len ceil32(uint255(stor101.length) * 0.5)]
        if ceil32(uint255(stor101.length) * 0.5) > uint255(stor101.length) * 0.5:
            mem[(uint255(stor101.length) * 0.5) + ceil32(uint255(stor101.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor101.length), data=mem[128 len ceil32(uint255(stor101.length) * 0.5)], mem[(2 * ceil32(uint255(stor101.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor101.length) * 0.5)]), 
    if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor101.length):
        if bool(stor101.length) == uint255(stor101.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor101.length):
            if 31 < uint255(stor101.length) * 0.5:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while (uint255(stor101.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
    else:
        if bool(stor101.length) == stor101.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor101.length.field_1 % 128:
            if 31 < stor101.length.field_1 % 128:
                mem[128] = uint256(stor101.field_0)
                idx = 128
                s = 0
                while stor101.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor101[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor101.length.field_8)
    mem[ceil32(stor101.length.field_1 % 128) + 192 len ceil32(stor101.length.field_1 % 128)] = mem[128 len ceil32(stor101.length.field_1 % 128)]
    if ceil32(stor101.length.field_1 % 128) > stor101.length.field_1 % 128:
        mem[stor101.length.field_1 % 128 + ceil32(stor101.length.field_1 % 128) + 192] = 0
    return Array(len=stor101.length % 128, data=mem[128 len ceil32(stor101.length.field_1 % 128)], mem[(2 * ceil32(stor101.length.field_1 % 128)) + 192 len 2 * ceil32(stor101.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor102.length):
            if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor102.length):
                if 31 < uint255(stor102.length) * 0.5:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor102.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
        else:
            if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor102.length.field_1 % 128:
                if 31 < stor102.length.field_1 % 128:
                    mem[128] = uint256(stor102.field_0)
                    idx = 128
                    s = 0
                    while stor102.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor102[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
        mem[ceil32(uint255(stor102.length) * 0.5) + 192 len ceil32(uint255(stor102.length) * 0.5)] = mem[128 len ceil32(uint255(stor102.length) * 0.5)]
        if ceil32(uint255(stor102.length) * 0.5) > uint255(stor102.length) * 0.5:
            mem[(uint255(stor102.length) * 0.5) + ceil32(uint255(stor102.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor102.length), data=mem[128 len ceil32(uint255(stor102.length) * 0.5)], mem[(2 * ceil32(uint255(stor102.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor102.length) * 0.5)]), 
    if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor102.length):
        if bool(stor102.length) == uint255(stor102.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor102.length):
            if 31 < uint255(stor102.length) * 0.5:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while (uint255(stor102.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
    else:
        if bool(stor102.length) == stor102.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor102.length.field_1 % 128:
            if 31 < stor102.length.field_1 % 128:
                mem[128] = uint256(stor102.field_0)
                idx = 128
                s = 0
                while stor102.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor102[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor102.length.field_8)
    mem[ceil32(stor102.length.field_1 % 128) + 192 len ceil32(stor102.length.field_1 % 128)] = mem[128 len ceil32(stor102.length.field_1 % 128)]
    if ceil32(stor102.length.field_1 % 128) > stor102.length.field_1 % 128:
        mem[stor102.length.field_1 % 128 + ceil32(stor102.length.field_1 % 128) + 192] = 0
    return Array(len=stor102.length % 128, data=mem[128 len ceil32(stor102.length.field_1 % 128)], mem[(2 * ceil32(stor102.length.field_1 % 128)) + 192 len 2 * ceil32(stor102.length.field_1 % 128)]), 
}

function getPendingRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_79ba2fa2[arg1].field_512 >= launchTime:
        if block.timestamp < sub_79ba2fa2[arg1].field_512:
            revert with 0, 17
        if block.timestamp - sub_79ba2fa2[arg1].field_512 <= sub_be75288d[stor201[arg1].field_0].field_1280:
            if block.timestamp - sub_79ba2fa2[arg1].field_512 and sub_be75288d[stor201[arg1].field_0].field_1024 > -1 / block.timestamp - sub_79ba2fa2[arg1].field_512:
                revert with 0, 17
            return ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600)
        if block.timestamp - sub_79ba2fa2[arg1].field_512 < sub_be75288d[stor201[arg1].field_0].field_1280:
            revert with 0, 17
        if block.timestamp - sub_79ba2fa2[arg1].field_512 - sub_be75288d[stor201[arg1].field_0].field_1280 and sub_be75288d[stor201[arg1].field_0].field_1024 > -1 / block.timestamp - sub_79ba2fa2[arg1].field_512 - sub_be75288d[stor201[arg1].field_0].field_1280:
            revert with 0, 17
        if (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) and sub_be75288d[stor201[arg1].field_0].field_1536 > -1 / (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024):
            revert with 0, 17
        if sub_be75288d[stor201[arg1].field_0].field_1280 and sub_be75288d[stor201[arg1].field_0].field_1024 > -1 / sub_be75288d[stor201[arg1].field_0].field_1280:
            revert with 0, 17
        if sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 > !((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100):
            revert with 0, 17
        return ((sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600)
    if block.timestamp < launchTime:
        revert with 0, 17
    if block.timestamp - launchTime <= sub_be75288d[stor201[arg1].field_0].field_1280:
        if block.timestamp - launchTime and sub_be75288d[stor201[arg1].field_0].field_1024 > -1 / block.timestamp - launchTime:
            revert with 0, 17
        return ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600)
    if block.timestamp - launchTime < sub_be75288d[stor201[arg1].field_0].field_1280:
        revert with 0, 17
    if block.timestamp - launchTime - sub_be75288d[stor201[arg1].field_0].field_1280 and sub_be75288d[stor201[arg1].field_0].field_1024 > -1 / block.timestamp - launchTime - sub_be75288d[stor201[arg1].field_0].field_1280:
        revert with 0, 17
    if (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) and sub_be75288d[stor201[arg1].field_0].field_1536 > -1 / (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024):
        revert with 0, 17
    if sub_be75288d[stor201[arg1].field_0].field_1280 and sub_be75288d[stor201[arg1].field_0].field_1024 > -1 / sub_be75288d[stor201[arg1].field_0].field_1280:
        revert with 0, 17
    if sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 > !((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100):
        revert with 0, 17
    return ((sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600)
}

function sub_c35f6368(?) payable {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if stor217 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor217 = 2
    if block.timestamp < launchTime:
        revert with 0, 'Not launched yet'
    if not launchTime:
        revert with 0, 'Not launched yet'
    if 24 * 3600 > !launchTime:
        revert with 0, 17
    if block.timestamp <= launchTime + (24 * 3600):
        revert with 0, 'Must wait 24h from launch'
    if sub_79ba2fa2[arg1].field_512 >= launchTime:
        if block.timestamp < sub_79ba2fa2[arg1].field_512:
            revert with 0, 17
        if block.timestamp - sub_79ba2fa2[arg1].field_512 <= sub_be75288d[stor201[arg1].field_0].field_1280:
            if block.timestamp - sub_79ba2fa2[arg1].field_512 and sub_be75288d[stor201[arg1].field_0].field_1024 > -1 / block.timestamp - sub_79ba2fa2[arg1].field_512:
                revert with 0, 17
            if (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600 and sub_79ba2fa2[arg1].field_256 > -1 / (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600:
                revert with 0, 17
            sub_79ba2fa2[arg1].field_512 = block.timestamp
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600 < (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[arg1].field_256 / 10000:
                revert with 0, 17
            require ext_code.size(sub_cd38b90aAddress)
            call sub_cd38b90aAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args ownerOf[arg1], ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600) - ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[arg1].field_256 / 10000)
        else:
            if block.timestamp - sub_79ba2fa2[arg1].field_512 < sub_be75288d[stor201[arg1].field_0].field_1280:
                revert with 0, 17
            if block.timestamp - sub_79ba2fa2[arg1].field_512 - sub_be75288d[stor201[arg1].field_0].field_1280 and sub_be75288d[stor201[arg1].field_0].field_1024 > -1 / block.timestamp - sub_79ba2fa2[arg1].field_512 - sub_be75288d[stor201[arg1].field_0].field_1280:
                revert with 0, 17
            if (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) and sub_be75288d[stor201[arg1].field_0].field_1536 > -1 / (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024):
                revert with 0, 17
            if sub_be75288d[stor201[arg1].field_0].field_1280 and sub_be75288d[stor201[arg1].field_0].field_1024 > -1 / sub_be75288d[stor201[arg1].field_0].field_1280:
                revert with 0, 17
            if sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 > !((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100):
                revert with 0, 17
            if (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600 and sub_79ba2fa2[arg1].field_256 > -1 / (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600:
                revert with 0, 17
            sub_79ba2fa2[arg1].field_512 = block.timestamp
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600 < (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[arg1].field_256 / 10000:
                revert with 0, 17
            require ext_code.size(sub_cd38b90aAddress)
            call sub_cd38b90aAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args ownerOf[arg1], ((sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600) - ((sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_79ba2fa2[arg1].field_512 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[arg1].field_256 / 10000)
    else:
        if block.timestamp < launchTime:
            revert with 0, 17
        if block.timestamp - launchTime <= sub_be75288d[stor201[arg1].field_0].field_1280:
            if block.timestamp - launchTime and sub_be75288d[stor201[arg1].field_0].field_1024 > -1 / block.timestamp - launchTime:
                revert with 0, 17
            if (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600 and sub_79ba2fa2[arg1].field_256 > -1 / (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600:
                revert with 0, 17
            sub_79ba2fa2[arg1].field_512 = block.timestamp
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600 < (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[arg1].field_256 / 10000:
                revert with 0, 17
            require ext_code.size(sub_cd38b90aAddress)
            call sub_cd38b90aAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args ownerOf[arg1], ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600) - ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[arg1].field_256 / 10000)
        else:
            if block.timestamp - launchTime < sub_be75288d[stor201[arg1].field_0].field_1280:
                revert with 0, 17
            if block.timestamp - launchTime - sub_be75288d[stor201[arg1].field_0].field_1280 and sub_be75288d[stor201[arg1].field_0].field_1024 > -1 / block.timestamp - launchTime - sub_be75288d[stor201[arg1].field_0].field_1280:
                revert with 0, 17
            if (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) and sub_be75288d[stor201[arg1].field_0].field_1536 > -1 / (block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024):
                revert with 0, 17
            if sub_be75288d[stor201[arg1].field_0].field_1280 and sub_be75288d[stor201[arg1].field_0].field_1024 > -1 / sub_be75288d[stor201[arg1].field_0].field_1280:
                revert with 0, 17
            if sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 > !((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100):
                revert with 0, 17
            if (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600 and sub_79ba2fa2[arg1].field_256 > -1 / (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600:
                revert with 0, 17
            sub_79ba2fa2[arg1].field_512 = block.timestamp
            if not ownerOf[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
            if (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600 < (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[arg1].field_256 / 10000:
                revert with 0, 17
            require ext_code.size(sub_cd38b90aAddress)
            call sub_cd38b90aAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args ownerOf[arg1], ((sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600) - ((sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) - (sub_be75288d[stor201[arg1].field_0].field_1280 * sub_be75288d[stor201[arg1].field_0].field_1024 * sub_be75288d[stor201[arg1].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[arg1].field_256 / 10000)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor217 = 1
}

function sub_ab3cc8d8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor317[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = stor317[address(arg1)]
    if not stor317[address(arg1)]:
        if stor317[address(arg1)] > test266151307():
            revert with 0, 65
        mem[(32 * stor317[address(arg1)]) + 128] = stor317[address(arg1)]
        if not stor317[address(arg1)]:
            mem[(64 * stor317[address(arg1)]) + 160] = 5
            mem[(64 * stor317[address(arg1)]) + 192] = 0x6964202573000000000000000000000000000000000000000000000000000000
            mem[(64 * stor317[address(arg1)]) + 260] = 64
            mem[(64 * stor317[address(arg1)]) + 324] = 5
            mem[(64 * stor317[address(arg1)]) + 356] = 0x6964202573000000000000000000000000000000000000000000000000000000
            mem[(64 * stor317[address(arg1)]) + 361] = 0
            mem[(64 * stor317[address(arg1)]) + 292] = stor317[address(arg1)]
            mem[(64 * stor317[address(arg1)]) + 224] = (127 * stor317[address(arg1)]) + 132
            mem[(64 * stor317[address(arg1)]) + 260 len 28] = 0
            mem[(64 * stor317[address(arg1)]) + 256 len 4] = 2534451664
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args mem[(64 * stor317[address(arg1)]) + 260 len (127 * stor317[address(arg1)]) + 128]
            if var82002 >= var82001:
                mem[(64 * stor317[address(arg1)]) + 388] = 64
                mem[(64 * stor317[address(arg1)]) + 452] = stor317[address(arg1)]
                mem[(64 * stor317[address(arg1)]) + 484 len 32 * stor317[address(arg1)]] = mem[128 len 32 * stor317[address(arg1)]]
                mem[(64 * stor317[address(arg1)]) + 420] = (32 * stor317[address(arg1)]) + 96
                mem[(98 * stor317[address(arg1)]) + 484] = stor317[address(arg1)]
                mem[(98 * stor317[address(arg1)]) + 516 len 32 * stor317[address(arg1)]] = mem[(32 * stor317[address(arg1)]) + 160 len 32 * stor317[address(arg1)]]
                return memory
                  from (64 * stor317[address(arg1)]) + 388
                   len (194 * stor317[address(arg1)]) + 128
            mem[32] = 317
            if var88001 >= stor[var88002]:
                revert with 0, 50
            mem[0] = var90002
            mem[64] = (64 * stor317[address(arg1)]) + 452
            mem[(64 * stor317[address(arg1)]) + 388] = 12
            mem[(64 * stor317[address(arg1)]) + 420] = 'Next node %s' << 160
            mem[var98001] = 64
            mem[var100002] = mem[var100001]
            if var66001 < var102003:
                mem[var66001 + var102002] = mem[var66001 + var102001]
                var66001 = var66001 + 32
                continue 
            if var66001 > var102003:
                mem[var102003 + var102002] = 0
            mem[var102011 + 32] = var102012
            mem[(64 * stor317[address(arg1)]) + 452] = ceil32(var102005) + var102008 + -(64 * stor317[address(arg1)]) - 452
            mem[(64 * stor317[address(arg1)]) + 484 len 4] = 2534451664
            staticcall 'console.log'.0x9710a9d0 with:
                    gas gas_remaining wei
                   args mem[(64 * stor317[address(arg1)]) + 488 len ceil32(var102005) + var102008 + -(64 * stor317[address(arg1)]) - 456]
            if ownerOf[var102019]:
                if not ownerOf[var102019]:
                    revert with 0, 'ERC721: owner query for nonexistent token'
                if ownerOf[var102019] == this.address:
                    if var102021 >= stor317[address(arg1)]:
                        revert with 0, 50
                    mem[(32 * var102021) + 128] = var102019
                    if var102021 >= stor317[address(arg1)]:
                        revert with 0, 50
                    mem[(32 * var102021) + (32 * stor317[address(arg1)]) + 160] = sub_79ba2fa2[var102019].field_512
                    if var102021 == -1:
                        revert with 0, 17
            if var102020 == -1:
                revert with 0, 17
            if var102020 + 1 >= stor317[address(arg1)]:
                mem[ceil32(var102005) + var102008 + 32] = 64
                mem[ceil32(var102005) + var102008 + 96] = stor317[address(arg1)]
                mem[ceil32(var102005) + var102008 + 128 len 32 * stor317[address(arg1)]] = mem[128 len 32 * stor317[address(arg1)]]
                mem[ceil32(var102005) + var102008 + (32 * stor317[address(arg1)]) + 128] = stor317[address(arg1)]
                return Array(len=stor317[address(arg1)], data=mem[ceil32(var102005) + var102008 + 128 len (64 * stor317[address(arg1)]) + 32]), 
                       (32 * stor317[address(arg1)]) + 96
            mem[32] = 317
            if var102020 + 1 >= stor317[address(arg1)]:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 317)
            mem[64] = ceil32(var102005) + var102008 + 96
            mem[ceil32(var102005) + var102008 + 32] = 12
            mem[ceil32(var102005) + var102008 + 64] = 'Next node %s' << 160
            mem[ceil32(var102005) + var102008 + 132] = 64
            mem[ceil32(var102005) + var102008 + 196] = 12
            var66001 = 0
            continue 
        mem[(32 * stor317[address(arg1)]) + 160 len 32 * stor317[address(arg1)]] = call.data[calldata.size len 32 * stor317[address(arg1)]]
        mem[(64 * stor317[address(arg1)]) + 160] = 5
        mem[(64 * stor317[address(arg1)]) + 192] = 0x6964202573000000000000000000000000000000000000000000000000000000
        mem[(64 * stor317[address(arg1)]) + 260] = 64
        mem[(64 * stor317[address(arg1)]) + 324] = 5
        mem[(64 * stor317[address(arg1)]) + 356] = 0x6964202573000000000000000000000000000000000000000000000000000000
        mem[(64 * stor317[address(arg1)]) + 361] = 0
        mem[(64 * stor317[address(arg1)]) + 292] = stor317[address(arg1)]
        mem[(64 * stor317[address(arg1)]) + 224] = (127 * stor317[address(arg1)]) + 132
        mem[(64 * stor317[address(arg1)]) + 260 len 28] = 0
        mem[(64 * stor317[address(arg1)]) + 256 len 4] = 2534451664
        staticcall 'console.log'.0x9710a9d0 with:
                gas gas_remaining wei
               args mem[(64 * stor317[address(arg1)]) + 260 len (127 * stor317[address(arg1)]) + 128]
        if var83002 >= var83001:
            mem[(64 * stor317[address(arg1)]) + 388] = 64
            mem[(64 * stor317[address(arg1)]) + 452] = stor317[address(arg1)]
            mem[(64 * stor317[address(arg1)]) + 484 len 32 * stor317[address(arg1)]] = mem[128 len 32 * stor317[address(arg1)]]
            mem[(64 * stor317[address(arg1)]) + 420] = (32 * stor317[address(arg1)]) + 96
            mem[(98 * stor317[address(arg1)]) + 484] = stor317[address(arg1)]
            mem[(98 * stor317[address(arg1)]) + 516 len 32 * stor317[address(arg1)]] = call.data[calldata.size len 32 * stor317[address(arg1)]]
            return memory
              from (64 * stor317[address(arg1)]) + 388
               len (194 * stor317[address(arg1)]) + 128
        mem[32] = 317
        if var89001 >= stor[var89002]:
            revert with 0, 50
        mem[0] = var91002
        mem[64] = (64 * stor317[address(arg1)]) + 452
        mem[(64 * stor317[address(arg1)]) + 388] = 12
        mem[(64 * stor317[address(arg1)]) + 420] = 'Next node %s' << 160
        mem[var99001] = 64
        mem[var101002] = mem[var101001]
        if var67001 < var103003:
            mem[var67001 + var103002] = mem[var67001 + var103001]
            var67001 = var67001 + 32
            continue 
        if var67001 > var103003:
            mem[var103003 + var103002] = 0
        mem[var103011 + 32] = var103012
        mem[(64 * stor317[address(arg1)]) + 452] = ceil32(var103005) + var103008 + -(64 * stor317[address(arg1)]) - 452
        mem[(64 * stor317[address(arg1)]) + 484 len 4] = 2534451664
        staticcall 'console.log'.0x9710a9d0 with:
                gas gas_remaining wei
               args mem[(64 * stor317[address(arg1)]) + 488 len ceil32(var103005) + var103008 + -(64 * stor317[address(arg1)]) - 456]
        if ownerOf[var103019]:
            if not ownerOf[var103019]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[var103019] == this.address:
                if var103021 >= stor317[address(arg1)]:
                    revert with 0, 50
                mem[(32 * var103021) + 128] = var103019
                if var103021 >= stor317[address(arg1)]:
                    revert with 0, 50
                mem[(32 * var103021) + (32 * stor317[address(arg1)]) + 160] = sub_79ba2fa2[var103019].field_512
                if var103021 == -1:
                    revert with 0, 17
        if var103020 == -1:
            revert with 0, 17
        if var103020 + 1 >= stor317[address(arg1)]:
            mem[ceil32(var103005) + var103008 + 32] = 64
            mem[ceil32(var103005) + var103008 + 96] = stor317[address(arg1)]
            mem[ceil32(var103005) + var103008 + 128 len 32 * stor317[address(arg1)]] = mem[128 len 32 * stor317[address(arg1)]]
            mem[ceil32(var103005) + var103008 + (32 * stor317[address(arg1)]) + 128] = stor317[address(arg1)]
            return Array(len=stor317[address(arg1)], data=mem[ceil32(var103005) + var103008 + 128 len (64 * stor317[address(arg1)]) + 32]), 
                   (32 * stor317[address(arg1)]) + 96
        mem[32] = 317
        if var103020 + 1 >= stor317[address(arg1)]:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 317)
        mem[64] = ceil32(var103005) + var103008 + 96
        mem[ceil32(var103005) + var103008 + 32] = 12
        mem[ceil32(var103005) + var103008 + 64] = 'Next node %s' << 160
        mem[ceil32(var103005) + var103008 + 132] = 64
        mem[ceil32(var103005) + var103008 + 196] = 12
        var67001 = 0
        continue 
    mem[128 len 32 * stor317[address(arg1)]] = call.data[calldata.size len 32 * stor317[address(arg1)]]
    if stor317[address(arg1)] > test266151307():
        revert with 0, 65
    mem[(32 * stor317[address(arg1)]) + 128] = stor317[address(arg1)]
    if not stor317[address(arg1)]:
        mem[(64 * stor317[address(arg1)]) + 160] = 5
        mem[(64 * stor317[address(arg1)]) + 192] = 0x6964202573000000000000000000000000000000000000000000000000000000
        mem[(64 * stor317[address(arg1)]) + 260] = 64
        mem[(64 * stor317[address(arg1)]) + 324] = 5
        mem[(64 * stor317[address(arg1)]) + 356] = 0x6964202573000000000000000000000000000000000000000000000000000000
        mem[(64 * stor317[address(arg1)]) + 361] = 0
        mem[(64 * stor317[address(arg1)]) + 292] = stor317[address(arg1)]
        mem[(64 * stor317[address(arg1)]) + 224] = (127 * stor317[address(arg1)]) + 132
        mem[(64 * stor317[address(arg1)]) + 260 len 28] = 0
        mem[(64 * stor317[address(arg1)]) + 256 len 4] = 2534451664
        staticcall 'console.log'.0x9710a9d0 with:
                gas gas_remaining wei
               args mem[(64 * stor317[address(arg1)]) + 260 len (127 * stor317[address(arg1)]) + 128]
        if var83002 >= var83001:
            mem[(64 * stor317[address(arg1)]) + 388] = 64
            mem[(64 * stor317[address(arg1)]) + 452] = stor317[address(arg1)]
            mem[(64 * stor317[address(arg1)]) + 484 len 32 * stor317[address(arg1)]] = call.data[calldata.size len 32 * stor317[address(arg1)]]
            mem[(64 * stor317[address(arg1)]) + 420] = (32 * stor317[address(arg1)]) + 96
            mem[(98 * stor317[address(arg1)]) + 484] = stor317[address(arg1)]
            mem[(98 * stor317[address(arg1)]) + 516 len 32 * stor317[address(arg1)]] = mem[(32 * stor317[address(arg1)]) + 160 len 32 * stor317[address(arg1)]]
            return memory
              from (64 * stor317[address(arg1)]) + 388
               len (194 * stor317[address(arg1)]) + 128
        mem[32] = 317
        if var89001 >= stor[var89002]:
            revert with 0, 50
        mem[0] = var91002
        mem[64] = (64 * stor317[address(arg1)]) + 452
        mem[(64 * stor317[address(arg1)]) + 388] = 12
        mem[(64 * stor317[address(arg1)]) + 420] = 'Next node %s' << 160
        mem[var99001] = 64
        mem[var101002] = mem[var101001]
        if var67001 < var103003:
            mem[var67001 + var103002] = mem[var67001 + var103001]
            var67001 = var67001 + 32
            continue 
        if var67001 > var103003:
            mem[var103003 + var103002] = 0
        mem[var103011 + 32] = var103012
        mem[(64 * stor317[address(arg1)]) + 452] = ceil32(var103005) + var103008 + -(64 * stor317[address(arg1)]) - 452
        mem[(64 * stor317[address(arg1)]) + 484 len 4] = 2534451664
        staticcall 'console.log'.0x9710a9d0 with:
                gas gas_remaining wei
               args mem[(64 * stor317[address(arg1)]) + 488 len ceil32(var103005) + var103008 + -(64 * stor317[address(arg1)]) - 456]
        if ownerOf[var103019]:
            if not ownerOf[var103019]:
                revert with 0, 'ERC721: owner query for nonexistent token'
            if ownerOf[var103019] == this.address:
                if var103021 >= stor317[address(arg1)]:
                    revert with 0, 50
                mem[(32 * var103021) + 128] = var103019
                if var103021 >= stor317[address(arg1)]:
                    revert with 0, 50
                mem[(32 * var103021) + (32 * stor317[address(arg1)]) + 160] = sub_79ba2fa2[var103019].field_512
                if var103021 == -1:
                    revert with 0, 17
        if var103020 == -1:
            revert with 0, 17
        if var103020 + 1 >= stor317[address(arg1)]:
            mem[ceil32(var103005) + var103008 + 128 len 32 * stor317[address(arg1)]] = call.data[calldata.size len 32 * stor317[address(arg1)]]
            mem[ceil32(var103005) + var103008 + (32 * stor317[address(arg1)]) + 128] = stor317[address(arg1)]
            return Array(len=stor317[address(arg1)], data=mem[ceil32(var103005) + var103008 + 128 len (64 * stor317[address(arg1)]) + 32]), 
                   (32 * stor317[address(arg1)]) + 96
        mem[32] = 317
        if var103020 + 1 >= stor317[address(arg1)]:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 317)
        mem[64] = ceil32(var103005) + var103008 + 96
        mem[ceil32(var103005) + var103008 + 32] = 12
        mem[ceil32(var103005) + var103008 + 64] = 'Next node %s' << 160
        mem[ceil32(var103005) + var103008 + 132] = 64
        mem[ceil32(var103005) + var103008 + 196] = 12
        var67001 = 0
        continue 
    mem[(32 * stor317[address(arg1)]) + 160 len 32 * stor317[address(arg1)]] = call.data[calldata.size len 32 * stor317[address(arg1)]]
    mem[(64 * stor317[address(arg1)]) + 160] = 5
    mem[(64 * stor317[address(arg1)]) + 192] = 0x6964202573000000000000000000000000000000000000000000000000000000
    mem[(64 * stor317[address(arg1)]) + 260] = 64
    mem[(64 * stor317[address(arg1)]) + 324] = 5
    mem[(64 * stor317[address(arg1)]) + 356] = 0x6964202573000000000000000000000000000000000000000000000000000000
    mem[(64 * stor317[address(arg1)]) + 361] = 0
    mem[(64 * stor317[address(arg1)]) + 292] = stor317[address(arg1)]
    mem[(64 * stor317[address(arg1)]) + 224] = (127 * stor317[address(arg1)]) + 132
    mem[(64 * stor317[address(arg1)]) + 260 len 28] = 0
    mem[(64 * stor317[address(arg1)]) + 256 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args mem[(64 * stor317[address(arg1)]) + 260 len (127 * stor317[address(arg1)]) + 128]
    if var84002 >= var84001:
        mem[(64 * stor317[address(arg1)]) + 388] = 64
        mem[(64 * stor317[address(arg1)]) + 452] = stor317[address(arg1)]
        mem[(64 * stor317[address(arg1)]) + 484 len 32 * stor317[address(arg1)]] = call.data[calldata.size len 32 * stor317[address(arg1)]]
        mem[(64 * stor317[address(arg1)]) + 420] = (32 * stor317[address(arg1)]) + 96
        mem[(98 * stor317[address(arg1)]) + 484] = stor317[address(arg1)]
        mem[(98 * stor317[address(arg1)]) + 516 len 32 * stor317[address(arg1)]] = call.data[calldata.size len 32 * stor317[address(arg1)]]
        return memory
          from (64 * stor317[address(arg1)]) + 388
           len (194 * stor317[address(arg1)]) + 128
    mem[32] = 317
    if var90001 >= stor[var90002]:
        revert with 0, 50
    mem[0] = var92002
    mem[64] = (64 * stor317[address(arg1)]) + 452
    mem[(64 * stor317[address(arg1)]) + 388] = 12
    mem[(64 * stor317[address(arg1)]) + 420] = 'Next node %s' << 160
    mem[var100001] = 64
    mem[var102002] = mem[var102001]
    if var68001 < var104003:
        mem[var68001 + var104002] = mem[var68001 + var104001]
        var68001 = var68001 + 32
        continue 
    if var68001 > var104003:
        mem[var104003 + var104002] = 0
    mem[var104011 + 32] = var104012
    mem[(64 * stor317[address(arg1)]) + 452] = ceil32(var104005) + var104008 + -(64 * stor317[address(arg1)]) - 452
    mem[(64 * stor317[address(arg1)]) + 484 len 4] = 2534451664
    staticcall 'console.log'.0x9710a9d0 with:
            gas gas_remaining wei
           args mem[(64 * stor317[address(arg1)]) + 488 len ceil32(var104005) + var104008 + -(64 * stor317[address(arg1)]) - 456]
    if ownerOf[var104019]:
        if not ownerOf[var104019]:
            revert with 0, 'ERC721: owner query for nonexistent token'
        if ownerOf[var104019] == this.address:
            if var104021 >= stor317[address(arg1)]:
                revert with 0, 50
            mem[(32 * var104021) + 128] = var104019
            if var104021 >= stor317[address(arg1)]:
                revert with 0, 50
            mem[(32 * var104021) + (32 * stor317[address(arg1)]) + 160] = sub_79ba2fa2[var104019].field_512
            if var104021 == -1:
                revert with 0, 17
    if var104020 == -1:
        revert with 0, 17
    if var104020 + 1 >= stor317[address(arg1)]:
        mem[ceil32(var104005) + var104008 + 128 len 32 * stor317[address(arg1)]] = call.data[calldata.size len 32 * stor317[address(arg1)]]
        mem[ceil32(var104005) + var104008 + (32 * stor317[address(arg1)]) + 128] = stor317[address(arg1)]
        return Array(len=stor317[address(arg1)], data=mem[ceil32(var104005) + var104008 + 128 len (64 * stor317[address(arg1)]) + 32]), 
               (32 * stor317[address(arg1)]) + 96
    mem[32] = 317
    if var104020 + 1 >= stor317[address(arg1)]:
        revert with 0, 50
    mem[0] = sha3(address(arg1), 317)
    mem[64] = ceil32(var104005) + var104008 + 96
    mem[ceil32(var104005) + var104008 + 32] = 12
    mem[ceil32(var104005) + var104008 + 64] = 'Next node %s' << 160
    mem[ceil32(var104005) + var104008 + 132] = 64
    mem[ceil32(var104005) + var104008 + 196] = 12
    var68001 = 0
    continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: transfer to the zero address'
    if not arg1:
        approved[arg3] = 0
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
    else:
        if this.address == arg1:
            approved[arg3] = 0
            if not ownerOf[arg3]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
        else:
            if paused:
                revert with 0, 'Pausable: paused'
            if stor217 == 2:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor217 = 2
            if block.timestamp < launchTime:
                revert with 0, 'Not launched yet'
            if not launchTime:
                revert with 0, 'Not launched yet'
            if 24 * 3600 > !launchTime:
                revert with 0, 17
            if block.timestamp <= launchTime + (24 * 3600):
                revert with 0, 'Must wait 24h from launch'
            if sub_79ba2fa2[arg3].field_512 >= launchTime:
                if block.timestamp < sub_79ba2fa2[arg3].field_512:
                    revert with 0, 17
                if block.timestamp - sub_79ba2fa2[arg3].field_512 <= sub_be75288d[stor201[arg3].field_0].field_1280:
                    if block.timestamp - sub_79ba2fa2[arg3].field_512 and sub_be75288d[stor201[arg3].field_0].field_1024 > -1 / block.timestamp - sub_79ba2fa2[arg3].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 and sub_79ba2fa2[arg3].field_256 > -1 / (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600:
                        revert with 0, 17
                    sub_79ba2fa2[arg3].field_512 = block.timestamp
                    if not ownerOf[arg3]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                    if (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 < (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000:
                        revert with 0, 17
                    require ext_code.size(sub_cd38b90aAddress)
                    call sub_cd38b90aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args ownerOf[arg3], ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600) - ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000)
                else:
                    if block.timestamp - sub_79ba2fa2[arg3].field_512 < sub_be75288d[stor201[arg3].field_0].field_1280:
                        revert with 0, 17
                    if block.timestamp - sub_79ba2fa2[arg3].field_512 - sub_be75288d[stor201[arg3].field_0].field_1280 and sub_be75288d[stor201[arg3].field_0].field_1024 > -1 / block.timestamp - sub_79ba2fa2[arg3].field_512 - sub_be75288d[stor201[arg3].field_0].field_1280:
                        revert with 0, 17
                    if (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) and sub_be75288d[stor201[arg3].field_0].field_1536 > -1 / (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024):
                        revert with 0, 17
                    if sub_be75288d[stor201[arg3].field_0].field_1280 and sub_be75288d[stor201[arg3].field_0].field_1024 > -1 / sub_be75288d[stor201[arg3].field_0].field_1280:
                        revert with 0, 17
                    if sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 > !((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100):
                        revert with 0, 17
                    if (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 and sub_79ba2fa2[arg3].field_256 > -1 / (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600:
                        revert with 0, 17
                    sub_79ba2fa2[arg3].field_512 = block.timestamp
                    if not ownerOf[arg3]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                    if (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 < (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000:
                        revert with 0, 17
                    require ext_code.size(sub_cd38b90aAddress)
                    call sub_cd38b90aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args ownerOf[arg3], ((sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600) - ((sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000)
            else:
                if block.timestamp < launchTime:
                    revert with 0, 17
                if block.timestamp - launchTime <= sub_be75288d[stor201[arg3].field_0].field_1280:
                    if block.timestamp - launchTime and sub_be75288d[stor201[arg3].field_0].field_1024 > -1 / block.timestamp - launchTime:
                        revert with 0, 17
                    if (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 and sub_79ba2fa2[arg3].field_256 > -1 / (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600:
                        revert with 0, 17
                    sub_79ba2fa2[arg3].field_512 = block.timestamp
                    if not ownerOf[arg3]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                    if (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 < (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000:
                        revert with 0, 17
                    require ext_code.size(sub_cd38b90aAddress)
                    call sub_cd38b90aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args ownerOf[arg3], ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600) - ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000)
                else:
                    if block.timestamp - launchTime < sub_be75288d[stor201[arg3].field_0].field_1280:
                        revert with 0, 17
                    if block.timestamp - launchTime - sub_be75288d[stor201[arg3].field_0].field_1280 and sub_be75288d[stor201[arg3].field_0].field_1024 > -1 / block.timestamp - launchTime - sub_be75288d[stor201[arg3].field_0].field_1280:
                        revert with 0, 17
                    if (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) and sub_be75288d[stor201[arg3].field_0].field_1536 > -1 / (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024):
                        revert with 0, 17
                    if sub_be75288d[stor201[arg3].field_0].field_1280 and sub_be75288d[stor201[arg3].field_0].field_1024 > -1 / sub_be75288d[stor201[arg3].field_0].field_1280:
                        revert with 0, 17
                    if sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 > !((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100):
                        revert with 0, 17
                    if (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 and sub_79ba2fa2[arg3].field_256 > -1 / (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600:
                        revert with 0, 17
                    sub_79ba2fa2[arg3].field_512 = block.timestamp
                    if not ownerOf[arg3]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC721: owner query for nonexistent token'
                    if (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 < (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000:
                        revert with 0, 17
                    require ext_code.size(sub_cd38b90aAddress)
                    call sub_cd38b90aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args ownerOf[arg3], ((sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600) - ((sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            stor217 = 1
            approved[arg3] = 0
            if not ownerOf[arg3]:
                revert with 0, 'ERC721: owner query for nonexistent token'
    ('bool', ('stor', ('map', ('param', 'arg3'), ('name', 'ownerOf', 103))))
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require ext_code.size(sub_18551108Address)
    call sub_18551108Address.0x95ff495a with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        if arg1 != this.address:
            if sub_2b1331a8[address(arg1)][stor201[arg3].field_0] < 1:
                revert with 0, 17
            sub_2b1331a8[address(arg1)][stor201[arg3].field_0]--
    if arg2:
        if arg1 != this.address:
            if sub_2b1331a8[address(arg2)][stor201[arg3].field_0] < 1:
                revert with 0, 17
            sub_2b1331a8[address(arg2)][stor201[arg3].field_0]--
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: operator query for nonexistent token'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 'ERC721: approved query for nonexistent token'
        if approved[arg3] != msg.sender:
            if not stor106[stor103[arg3]][address(msg.sender)]:
                revert with 0, 'ERC721: transfer caller is not owner nor approved'
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    if ownerOf[arg3] != arg1:
        revert with 0, 'ERC721: transfer from incorrect owner'
    if not arg2:
        revert with 0, 'ERC721: transfer to the zero address'
    if arg1:
        if arg1 != this.address:
            if paused:
                revert with 0, 'Pausable: paused'
            if stor217 == 2:
                revert with 0, 'ReentrancyGuard: reentrant call'
            stor217 = 2
            if block.timestamp < launchTime:
                revert with 0, 'Not launched yet'
            if not launchTime:
                revert with 0, 'Not launched yet'
            if 24 * 3600 > !launchTime:
                revert with 0, 17
            if block.timestamp <= launchTime + (24 * 3600):
                revert with 0, 'Must wait 24h from launch'
            if sub_79ba2fa2[arg3].field_512 >= launchTime:
                if block.timestamp < sub_79ba2fa2[arg3].field_512:
                    revert with 0, 17
                if block.timestamp - sub_79ba2fa2[arg3].field_512 <= sub_be75288d[stor201[arg3].field_0].field_1280:
                    if block.timestamp - sub_79ba2fa2[arg3].field_512 and sub_be75288d[stor201[arg3].field_0].field_1024 > -1 / block.timestamp - sub_79ba2fa2[arg3].field_512:
                        revert with 0, 17
                    if (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 and sub_79ba2fa2[arg3].field_256 > -1 / (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600:
                        revert with 0, 17
                    sub_79ba2fa2[arg3].field_512 = block.timestamp
                    if not ownerOf[arg3]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 < (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000:
                        revert with 0, 17
                    require ext_code.size(sub_cd38b90aAddress)
                    call sub_cd38b90aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args ownerOf[arg3], ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600) - ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000)
                else:
                    if block.timestamp - sub_79ba2fa2[arg3].field_512 < sub_be75288d[stor201[arg3].field_0].field_1280:
                        revert with 0, 17
                    if block.timestamp - sub_79ba2fa2[arg3].field_512 - sub_be75288d[stor201[arg3].field_0].field_1280 and sub_be75288d[stor201[arg3].field_0].field_1024 > -1 / block.timestamp - sub_79ba2fa2[arg3].field_512 - sub_be75288d[stor201[arg3].field_0].field_1280:
                        revert with 0, 17
                    if (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) and sub_be75288d[stor201[arg3].field_0].field_1536 > -1 / (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024):
                        revert with 0, 17
                    if sub_be75288d[stor201[arg3].field_0].field_1280 and sub_be75288d[stor201[arg3].field_0].field_1024 > -1 / sub_be75288d[stor201[arg3].field_0].field_1280:
                        revert with 0, 17
                    if sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 > !((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100):
                        revert with 0, 17
                    if (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 and sub_79ba2fa2[arg3].field_256 > -1 / (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600:
                        revert with 0, 17
                    sub_79ba2fa2[arg3].field_512 = block.timestamp
                    if not ownerOf[arg3]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 < (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000:
                        revert with 0, 17
                    require ext_code.size(sub_cd38b90aAddress)
                    call sub_cd38b90aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args ownerOf[arg3], ((sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600) - ((sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_79ba2fa2[arg3].field_512 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000)
            else:
                if block.timestamp < launchTime:
                    revert with 0, 17
                if block.timestamp - launchTime <= sub_be75288d[stor201[arg3].field_0].field_1280:
                    if block.timestamp - launchTime and sub_be75288d[stor201[arg3].field_0].field_1024 > -1 / block.timestamp - launchTime:
                        revert with 0, 17
                    if (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 and sub_79ba2fa2[arg3].field_256 > -1 / (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600:
                        revert with 0, 17
                    sub_79ba2fa2[arg3].field_512 = block.timestamp
                    if not ownerOf[arg3]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 < (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000:
                        revert with 0, 17
                    require ext_code.size(sub_cd38b90aAddress)
                    call sub_cd38b90aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args ownerOf[arg3], ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600) - ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000)
                else:
                    if block.timestamp - launchTime < sub_be75288d[stor201[arg3].field_0].field_1280:
                        revert with 0, 17
                    if block.timestamp - launchTime - sub_be75288d[stor201[arg3].field_0].field_1280 and sub_be75288d[stor201[arg3].field_0].field_1024 > -1 / block.timestamp - launchTime - sub_be75288d[stor201[arg3].field_0].field_1280:
                        revert with 0, 17
                    if (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) and sub_be75288d[stor201[arg3].field_0].field_1536 > -1 / (block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024):
                        revert with 0, 17
                    if sub_be75288d[stor201[arg3].field_0].field_1280 and sub_be75288d[stor201[arg3].field_0].field_1024 > -1 / sub_be75288d[stor201[arg3].field_0].field_1280:
                        revert with 0, 17
                    if sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 > !((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100):
                        revert with 0, 17
                    if (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 and sub_79ba2fa2[arg3].field_256 > -1 / (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600:
                        revert with 0, 17
                    sub_79ba2fa2[arg3].field_512 = block.timestamp
                    if not ownerOf[arg3]:
                        revert with 0, 'ERC721: owner query for nonexistent token'
                    if (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 < (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000:
                        revert with 0, 17
                    require ext_code.size(sub_cd38b90aAddress)
                    call sub_cd38b90aAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args ownerOf[arg3], ((sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600) - ((sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (launchTime * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) - (sub_be75288d[stor201[arg3].field_0].field_1280 * sub_be75288d[stor201[arg3].field_0].field_1024 * sub_be75288d[stor201[arg3].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[arg3].field_256 / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            stor217 = 1
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 'ERC721: owner query for nonexistent token'
    emit Approval(ownerOf[arg3], 0, arg3);
    if balanceOf[address(arg1)] < 1:
        revert with 0, 17
    balanceOf[address(arg1)]--
    if balanceOf[address(arg2)] > -2:
        revert with 0, 17
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require ext_code.size(sub_18551108Address)
    call sub_18551108Address.0x95ff495a with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        if arg1 != this.address:
            if sub_2b1331a8[address(arg1)][stor201[arg3].field_0] < 1:
                revert with 0, 17
            sub_2b1331a8[address(arg1)][stor201[arg3].field_0]--
    if arg2:
        if arg1 != this.address:
            if sub_2b1331a8[address(arg2)][stor201[arg3].field_0] < 1:
                revert with 0, 17
            sub_2b1331a8[address(arg2)][stor201[arg3].field_0]--
    if ext_code.size(arg2):
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            if not return_data.size:
                if not arg4.length:
                    revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
                revert with arg4[all]
            if not return_data.size:
                revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC721: transfer to non ERC721Receiver implementer'
}

function sub_58bf8027(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + 97
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if paused:
        revert with 0, 'Pausable: paused'
    if stor217 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor217 = 2
    if not ('cd', 4).length:
        revert with 0, 'Must claim at least one node'
    if this.address == msg.sender:
        revert with 0, 'Can't claim from the contract'
    if block.timestamp < launchTime:
        revert with 0, 'Not launched yet'
    if not launchTime:
        revert with 0, 'Not launched yet'
    if 24 * 3600 > !launchTime:
        revert with 0, 17
    if block.timestamp <= launchTime + (24 * 3600):
        revert with 0, 'Must wait 24h from launch'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _115 = sha3(mem[(32 * idx) + 128], 201)
        if sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 >= launchTime:
            if block.timestamp < sub_79ba2fa2[mem[(32 * idx) + 128]].field_512:
                revert with 0, 17
            if block.timestamp - sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 <= sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280:
                _119 = sha3(sub_79ba2fa2[mem[(32 * idx) + 128]].field_0, 204)
                if block.timestamp - sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 and sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 > -1 / block.timestamp - sub_79ba2fa2[mem[(32 * idx) + 128]].field_512:
                    revert with 0, 17
                _126 = sha3(mem[(32 * idx) + 128], 201)
                if (block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) / 24 * 3600 and sub_79ba2fa2[mem[(32 * idx) + 128]].field_256 > -1 / (block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) / 24 * 3600:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 201
                sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 = block.timestamp
                if (block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) / 24 * 3600 < (block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[mem[(32 * idx) + 128]].field_256 / 10000:
                    revert with 0, 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ((block.timestamp * stor4[_119]) - (stor2[_115] * stor4[_119]) / 24 * 3600) - ((block.timestamp * stor4[_119]) - (stor2[_115] * stor4[_119]) / 24 * 3600 * stor1[_126] / 10000)
                require ext_code.size(sub_cd38b90aAddress)
                call sub_cd38b90aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((block.timestamp * stor4[_119]) - (stor2[_115] * stor4[_119]) / 24 * 3600) - ((block.timestamp * stor4[_119]) - (stor2[_115] * stor4[_119]) / 24 * 3600 * stor1[_126] / 10000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _136 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_136] == bool(mem[_136])
            else:
                _120 = sha3(sub_79ba2fa2[mem[(32 * idx) + 128]].field_0, 204)
                if block.timestamp - sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 < sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280:
                    revert with 0, 17
                _124 = sha3(sub_79ba2fa2[mem[(32 * idx) + 128]].field_0, 204)
                if block.timestamp - sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 - sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 and sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 > -1 / block.timestamp - sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 - sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280:
                    revert with 0, 17
                if (block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) and sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536 > -1 / (block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024):
                    revert with 0, 17
                _128 = sha3(sub_79ba2fa2[mem[(32 * idx) + 128]].field_0, 204)
                if sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 and sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 > -1 / sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280:
                    revert with 0, 17
                if sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 > !((block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) / 100):
                    revert with 0, 17
                _140 = sha3(mem[(32 * idx) + 128], 201)
                if (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) / 100) / 24 * 3600 and sub_79ba2fa2[mem[(32 * idx) + 128]].field_256 > -1 / (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) / 100) / 24 * 3600:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 201
                sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 = block.timestamp
                if (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) / 100) / 24 * 3600 < (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[mem[(32 * idx) + 128]].field_256 / 10000:
                    revert with 0, 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ((stor5[_128] * stor4[_128]) + ((block.timestamp * stor4[_124] * stor6[_124]) - (stor2[_115] * stor4[_124] * stor6[_124]) - (stor5[_120] * stor4[_124] * stor6[_124]) / 100) / 24 * 3600) - ((stor5[_128] * stor4[_128]) + ((block.timestamp * stor4[_124] * stor6[_124]) - (stor2[_115] * stor4[_124] * stor6[_124]) - (stor5[_120] * stor4[_124] * stor6[_124]) / 100) / 24 * 3600 * stor1[_140] / 10000)
                require ext_code.size(sub_cd38b90aAddress)
                call sub_cd38b90aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((stor5[_128] * stor4[_128]) + ((block.timestamp * stor4[_124] * stor6[_124]) - (stor2[_115] * stor4[_124] * stor6[_124]) - (stor5[_120] * stor4[_124] * stor6[_124]) / 100) / 24 * 3600) - ((stor5[_128] * stor4[_128]) + ((block.timestamp * stor4[_124] * stor6[_124]) - (stor2[_115] * stor4[_124] * stor6[_124]) - (stor5[_120] * stor4[_124] * stor6[_124]) / 100) / 24 * 3600 * stor1[_140] / 10000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _148 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_148] == bool(mem[_148])
        else:
            if block.timestamp < launchTime:
                revert with 0, 17
            if block.timestamp - launchTime <= sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280:
                _122 = sha3(sub_79ba2fa2[mem[(32 * idx) + 128]].field_0, 204)
                if block.timestamp - launchTime and sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 > -1 / block.timestamp - launchTime:
                    revert with 0, 17
                _127 = sha3(mem[(32 * idx) + 128], 201)
                if (block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (launchTime * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) / 24 * 3600 and sub_79ba2fa2[mem[(32 * idx) + 128]].field_256 > -1 / (block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (launchTime * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) / 24 * 3600:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 201
                sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 = block.timestamp
                if (block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (launchTime * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) / 24 * 3600 < (block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (launchTime * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) / 24 * 3600 * sub_79ba2fa2[mem[(32 * idx) + 128]].field_256 / 10000:
                    revert with 0, 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ((block.timestamp * stor4[_122]) - (launchTime * stor4[_122]) / 24 * 3600) - ((block.timestamp * stor4[_122]) - (launchTime * stor4[_122]) / 24 * 3600 * stor1[_127] / 10000)
                require ext_code.size(sub_cd38b90aAddress)
                call sub_cd38b90aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((block.timestamp * stor4[_122]) - (launchTime * stor4[_122]) / 24 * 3600) - ((block.timestamp * stor4[_122]) - (launchTime * stor4[_122]) / 24 * 3600 * stor1[_127] / 10000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _137 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_137] == bool(mem[_137])
            else:
                _123 = sha3(sub_79ba2fa2[mem[(32 * idx) + 128]].field_0, 204)
                if block.timestamp - launchTime < sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280:
                    revert with 0, 17
                _125 = sha3(sub_79ba2fa2[mem[(32 * idx) + 128]].field_0, 204)
                if block.timestamp - launchTime - sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 and sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 > -1 / block.timestamp - launchTime - sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280:
                    revert with 0, 17
                if (block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (launchTime * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) and sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536 > -1 / (block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (launchTime * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024):
                    revert with 0, 17
                _130 = sha3(sub_79ba2fa2[mem[(32 * idx) + 128]].field_0, 204)
                if sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 and sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 > -1 / sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280:
                    revert with 0, 17
                if sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 > !((block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (launchTime * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) / 100):
                    revert with 0, 17
                _141 = sha3(mem[(32 * idx) + 128], 201)
                if (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (launchTime * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) / 100) / 24 * 3600 and sub_79ba2fa2[mem[(32 * idx) + 128]].field_256 > -1 / (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (launchTime * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) / 100) / 24 * 3600:
                    revert with 0, 17
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 201
                sub_79ba2fa2[mem[(32 * idx) + 128]].field_512 = block.timestamp
                if (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (launchTime * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) / 100) / 24 * 3600 < (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024) + ((block.timestamp * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (launchTime * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) - (sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1280 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1024 * sub_be75288d[stor201[mem[(32 * idx) + 128]].field_0].field_1536) / 100) / 24 * 3600 * sub_79ba2fa2[mem[(32 * idx) + 128]].field_256 / 10000:
                    revert with 0, 17
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = ((stor5[_130] * stor4[_130]) + ((block.timestamp * stor4[_125] * stor6[_125]) - (launchTime * stor4[_125] * stor6[_125]) - (stor5[_123] * stor4[_125] * stor6[_125]) / 100) / 24 * 3600) - ((stor5[_130] * stor4[_130]) + ((block.timestamp * stor4[_125] * stor6[_125]) - (launchTime * stor4[_125] * stor6[_125]) - (stor5[_123] * stor4[_125] * stor6[_125]) / 100) / 24 * 3600 * stor1[_141] / 10000)
                require ext_code.size(sub_cd38b90aAddress)
                call sub_cd38b90aAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ((stor5[_130] * stor4[_130]) + ((block.timestamp * stor4[_125] * stor6[_125]) - (launchTime * stor4[_125] * stor6[_125]) - (stor5[_123] * stor4[_125] * stor6[_125]) / 100) / 24 * 3600) - ((stor5[_130] * stor4[_130]) + ((block.timestamp * stor4[_125] * stor6[_125]) - (launchTime * stor4[_125] * stor6[_125]) - (stor5[_123] * stor4[_125] * stor6[_125]) / 100) / 24 * 3600 * stor1[_141] / 10000)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _149 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_149] == bool(mem[_149])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    stor217 = 1
}

function sub_cf37c49a(?) payable {
    require calldata.size - 4 >= 32
    if bool(sub_be75288d[arg1].field_0):
        if bool(sub_be75288d[arg1].field_0) == uint255(sub_be75288d[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(sub_be75288d[arg1].field_0):
            if bool(sub_be75288d[arg1].field_0) == uint255(sub_be75288d[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, sub_be75288d[arg1].field_0):
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                            revert with 0, 34
                        if not sub_be75288d[arg1].field_1793 % 128:
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= sub_be75288d[arg1].field_1793 % 128:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                           sub_be75288d[arg1].field_256,
                           sub_be75288d[arg1].field_512,
                           sub_be75288d[arg1].field_768,
                           sub_be75288d[arg1].field_1024,
                           sub_be75288d[arg1].field_1280,
                           sub_be75288d[arg1].field_1536,
                           ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                    revert with 0, 34
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                    else:
                        if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                else:
                    if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                        revert with 0, 34
                    if not sub_be75288d[arg1].field_1793 % 128:
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                    else:
                        if 31 >= sub_be75288d[arg1].field_1793 % 128:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
            else:
                if 31 < uint255(sub_be75288d[arg1].field_0) * 0.5:
                    mem[128] = sub_be75288d[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(sub_be75288d[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = sub_be75288d[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if bool(sub_be75288d[arg1].field_1792):
                            if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, sub_be75288d[arg1].field_1792):
                                if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                        mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                    return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                           sub_be75288d[arg1].field_256,
                                           sub_be75288d[arg1].field_512,
                                           sub_be75288d[arg1].field_768,
                                           sub_be75288d[arg1].field_1024,
                                           sub_be75288d[arg1].field_1280,
                                           sub_be75288d[arg1].field_1536,
                                           ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                                revert with 0, 34
                            if sub_be75288d[arg1].field_1793 % 128:
                                if 31 < sub_be75288d[arg1].field_1793 % 128:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                        mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                    return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                           sub_be75288d[arg1].field_256,
                                           sub_be75288d[arg1].field_512,
                                           sub_be75288d[arg1].field_768,
                                           sub_be75288d[arg1].field_1024,
                                           sub_be75288d[arg1].field_1280,
                                           sub_be75288d[arg1].field_1536,
                                           ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                               sub_be75288d[arg1].field_256,
                               sub_be75288d[arg1].field_512,
                               sub_be75288d[arg1].field_768,
                               sub_be75288d[arg1].field_1024,
                               sub_be75288d[arg1].field_1280,
                               sub_be75288d[arg1].field_1536,
                               ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                    if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                        revert with 0, 34
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                                return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], sub_be75288d[arg1].field_1793 % 128, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                    else:
                        if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                            revert with 0, 34
                        if sub_be75288d[arg1].field_1793 % 128:
                            if 31 < sub_be75288d[arg1].field_1793 % 128:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                                return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], sub_be75288d[arg1].field_1793 % 128, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                    if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                        mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                    if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                        mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                else:
                    mem[128] = 256 * Mask(248, 0, sub_be75288d[arg1].field_8)
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if bool(sub_be75288d[arg1].field_1792):
                            if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                            else:
                                if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                                else:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                                revert with 0, 34
                            if not sub_be75288d[arg1].field_1793 % 128:
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                            else:
                                if 31 >= sub_be75288d[arg1].field_1793 % 128:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                                else:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                               sub_be75288d[arg1].field_256,
                               sub_be75288d[arg1].field_512,
                               sub_be75288d[arg1].field_768,
                               sub_be75288d[arg1].field_1024,
                               sub_be75288d[arg1].field_1280,
                               sub_be75288d[arg1].field_1536,
                               ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                    if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                        revert with 0, 34
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                            if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                                mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                        else:
                            if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                            if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                                mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                    else:
                        if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                            revert with 0, 34
                        if not sub_be75288d[arg1].field_1793 % 128:
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                            if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                                mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                        else:
                            if 31 >= sub_be75288d[arg1].field_1793 % 128:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                            if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                                mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
        else:
            if bool(sub_be75288d[arg1].field_0) == sub_be75288d[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if not sub_be75288d[arg1].field_1 % 128:
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                            revert with 0, 34
                        if not sub_be75288d[arg1].field_1793 % 128:
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= sub_be75288d[arg1].field_1793 % 128:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                           sub_be75288d[arg1].field_256,
                           sub_be75288d[arg1].field_512,
                           sub_be75288d[arg1].field_768,
                           sub_be75288d[arg1].field_1024,
                           sub_be75288d[arg1].field_1280,
                           sub_be75288d[arg1].field_1536,
                           ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                    revert with 0, 34
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                    else:
                        if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                else:
                    if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                        revert with 0, 34
                    if not sub_be75288d[arg1].field_1793 % 128:
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                    else:
                        if 31 >= sub_be75288d[arg1].field_1793 % 128:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                            s = 0
                            while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
            else:
                if 31 < sub_be75288d[arg1].field_1 % 128:
                    mem[128] = sub_be75288d[arg1].field_0
                    idx = 128
                    s = 0
                    while sub_be75288d[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = sub_be75288d[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if bool(sub_be75288d[arg1].field_1792):
                            if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                                revert with 0, 34
                            if Mask(256, -1, sub_be75288d[arg1].field_1792):
                                if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                        mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                    return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                           sub_be75288d[arg1].field_256,
                                           sub_be75288d[arg1].field_512,
                                           sub_be75288d[arg1].field_768,
                                           sub_be75288d[arg1].field_1024,
                                           sub_be75288d[arg1].field_1280,
                                           sub_be75288d[arg1].field_1536,
                                           ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                                revert with 0, 34
                            if sub_be75288d[arg1].field_1793 % 128:
                                if 31 < sub_be75288d[arg1].field_1793 % 128:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                        mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                    return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                           sub_be75288d[arg1].field_256,
                                           sub_be75288d[arg1].field_512,
                                           sub_be75288d[arg1].field_768,
                                           sub_be75288d[arg1].field_1024,
                                           sub_be75288d[arg1].field_1280,
                                           sub_be75288d[arg1].field_1536,
                                           ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                               sub_be75288d[arg1].field_256,
                               sub_be75288d[arg1].field_512,
                               sub_be75288d[arg1].field_768,
                               sub_be75288d[arg1].field_1024,
                               sub_be75288d[arg1].field_1280,
                               sub_be75288d[arg1].field_1536,
                               ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                    if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                        revert with 0, 34
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                                return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], sub_be75288d[arg1].field_1793 % 128, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                    else:
                        if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                            revert with 0, 34
                        if sub_be75288d[arg1].field_1793 % 128:
                            if 31 < sub_be75288d[arg1].field_1793 % 128:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                                return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], sub_be75288d[arg1].field_1793 % 128, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                            mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                    if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                        mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                    mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                    if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                        mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                else:
                    mem[128] = 256 * Mask(248, 0, sub_be75288d[arg1].field_8)
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if bool(sub_be75288d[arg1].field_1792):
                            if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                            else:
                                if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                                else:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                                revert with 0, 34
                            if not sub_be75288d[arg1].field_1793 % 128:
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                            else:
                                if 31 >= sub_be75288d[arg1].field_1793 % 128:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                                else:
                                    mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                    idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                    s = 0
                                    while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                        mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                                if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                    mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                               sub_be75288d[arg1].field_256,
                               sub_be75288d[arg1].field_512,
                               sub_be75288d[arg1].field_768,
                               sub_be75288d[arg1].field_1024,
                               sub_be75288d[arg1].field_1280,
                               sub_be75288d[arg1].field_1536,
                               ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
                    if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                        revert with 0, 34
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                            if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                                mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                        else:
                            if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                            if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                                mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                    else:
                        if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                            revert with 0, 34
                        if not sub_be75288d[arg1].field_1793 % 128:
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                            if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                                mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                        else:
                            if 31 >= sub_be75288d[arg1].field_1793 % 128:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                            else:
                                mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160
                                s = 0
                                while ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) > uint255(sub_be75288d[arg1].field_0) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                            mem[(2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                            if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                                mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
        return Array(len=2 * Mask(256, -1, sub_be75288d[arg1].field_0), data=mem[128 len ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5)], sub_be75288d[arg1].field_1792 % 128, mem[ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]), 
               sub_be75288d[arg1].field_256,
               sub_be75288d[arg1].field_512,
               sub_be75288d[arg1].field_768,
               sub_be75288d[arg1].field_1024,
               sub_be75288d[arg1].field_1280,
               sub_be75288d[arg1].field_1536,
               ceil32(uint255(sub_be75288d[arg1].field_0) * 0.5) + 288
    if bool(sub_be75288d[arg1].field_0) == sub_be75288d[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(sub_be75288d[arg1].field_0):
        if bool(sub_be75288d[arg1].field_0) == uint255(sub_be75288d[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, sub_be75288d[arg1].field_0):
            if bool(sub_be75288d[arg1].field_1792):
                if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1 % 128) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                else:
                    if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                        revert with 0, 34
                    if not sub_be75288d[arg1].field_1793 % 128:
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if 31 >= sub_be75288d[arg1].field_1793 % 128:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1 % 128) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                       sub_be75288d[arg1].field_256,
                       sub_be75288d[arg1].field_512,
                       sub_be75288d[arg1].field_768,
                       sub_be75288d[arg1].field_1024,
                       sub_be75288d[arg1].field_1280,
                       sub_be75288d[arg1].field_1536,
                       ceil32(sub_be75288d[arg1].field_1 % 128) + 288
            if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                revert with 0, 34
            if bool(sub_be75288d[arg1].field_1792):
                if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                    if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                        mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                    if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                        mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                else:
                    if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                        mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                    else:
                        mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                        idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                        s = 0
                        while ceil32(sub_be75288d[arg1].field_1 % 128) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                            mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                        mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                    if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                        mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
            else:
                if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                    revert with 0, 34
                if not sub_be75288d[arg1].field_1793 % 128:
                    if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                        mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                    if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                        mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                else:
                    if 31 >= sub_be75288d[arg1].field_1793 % 128:
                        mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                    else:
                        mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                        idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                        s = 0
                        while ceil32(sub_be75288d[arg1].field_1 % 128) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                            mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                        mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                    if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                        mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
        else:
            if 31 < uint255(sub_be75288d[arg1].field_0) * 0.5:
                mem[128] = sub_be75288d[arg1].field_0
                idx = 128
                s = 0
                while (uint255(sub_be75288d[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = sub_be75288d[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1 % 128) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                    mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(sub_be75288d[arg1].field_1 % 128) + 288
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                    else:
                        if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                            revert with 0, 34
                        if sub_be75288d[arg1].field_1793 % 128:
                            if 31 < sub_be75288d[arg1].field_1793 % 128:
                                mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1 % 128) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                    mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(sub_be75288d[arg1].field_1 % 128) + 288
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                    if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                        mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                    if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                        mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                           sub_be75288d[arg1].field_256,
                           sub_be75288d[arg1].field_512,
                           sub_be75288d[arg1].field_768,
                           sub_be75288d[arg1].field_1024,
                           sub_be75288d[arg1].field_1280,
                           sub_be75288d[arg1].field_1536,
                           ceil32(sub_be75288d[arg1].field_1 % 128) + 288
                if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                    revert with 0, 34
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1 % 128) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                            return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], sub_be75288d[arg1].field_1793 % 128, mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]), 
                                   sub_be75288d[arg1].field_256,
                                   sub_be75288d[arg1].field_512,
                                   sub_be75288d[arg1].field_768,
                                   sub_be75288d[arg1].field_1024,
                                   sub_be75288d[arg1].field_1280,
                                   sub_be75288d[arg1].field_1536,
                                   ceil32(sub_be75288d[arg1].field_1 % 128) + 288
                        mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                else:
                    if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1793 % 128:
                        if 31 < sub_be75288d[arg1].field_1793 % 128:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1 % 128) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                            return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], sub_be75288d[arg1].field_1793 % 128, mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]), 
                                   sub_be75288d[arg1].field_256,
                                   sub_be75288d[arg1].field_512,
                                   sub_be75288d[arg1].field_768,
                                   sub_be75288d[arg1].field_1024,
                                   sub_be75288d[arg1].field_1280,
                                   sub_be75288d[arg1].field_1536,
                                   ceil32(sub_be75288d[arg1].field_1 % 128) + 288
                        mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                    mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                    mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
            else:
                mem[128] = 256 * Mask(248, 0, sub_be75288d[arg1].field_8)
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                            else:
                                mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1 % 128) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                            revert with 0, 34
                        if not sub_be75288d[arg1].field_1793 % 128:
                            if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= sub_be75288d[arg1].field_1793 % 128:
                                mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                            else:
                                mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1 % 128) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                           sub_be75288d[arg1].field_256,
                           sub_be75288d[arg1].field_512,
                           sub_be75288d[arg1].field_768,
                           sub_be75288d[arg1].field_1024,
                           sub_be75288d[arg1].field_1280,
                           sub_be75288d[arg1].field_1536,
                           ceil32(sub_be75288d[arg1].field_1 % 128) + 288
                if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                    revert with 0, 34
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                    else:
                        if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1 % 128) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                else:
                    if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                        revert with 0, 34
                    if not sub_be75288d[arg1].field_1793 % 128:
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                    else:
                        if 31 >= sub_be75288d[arg1].field_1793 % 128:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1 % 128) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
    else:
        if bool(sub_be75288d[arg1].field_0) == sub_be75288d[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if not sub_be75288d[arg1].field_1 % 128:
            if bool(sub_be75288d[arg1].field_1792):
                if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1 % 128) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                else:
                    if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                        revert with 0, 34
                    if not sub_be75288d[arg1].field_1793 % 128:
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if 31 >= sub_be75288d[arg1].field_1793 % 128:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1 % 128) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                        if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                       sub_be75288d[arg1].field_256,
                       sub_be75288d[arg1].field_512,
                       sub_be75288d[arg1].field_768,
                       sub_be75288d[arg1].field_1024,
                       sub_be75288d[arg1].field_1280,
                       sub_be75288d[arg1].field_1536,
                       ceil32(sub_be75288d[arg1].field_1 % 128) + 288
            if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                revert with 0, 34
            if bool(sub_be75288d[arg1].field_1792):
                if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                    if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                        mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                    if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                        mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                else:
                    if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                        mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                    else:
                        mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                        idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                        s = 0
                        while ceil32(sub_be75288d[arg1].field_1 % 128) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                            mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                        mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                    if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                        mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
            else:
                if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                    revert with 0, 34
                if not sub_be75288d[arg1].field_1793 % 128:
                    if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                        mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                    if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                        mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                else:
                    if 31 >= sub_be75288d[arg1].field_1793 % 128:
                        mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                    else:
                        mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                        idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                        s = 0
                        while ceil32(sub_be75288d[arg1].field_1 % 128) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                            mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                        mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                    if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                        mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
        else:
            if 31 < sub_be75288d[arg1].field_1 % 128:
                mem[128] = sub_be75288d[arg1].field_0
                idx = 128
                s = 0
                while sub_be75288d[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = sub_be75288d[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1 % 128) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                    mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(sub_be75288d[arg1].field_1 % 128) + 288
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                    else:
                        if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                            revert with 0, 34
                        if sub_be75288d[arg1].field_1793 % 128:
                            if 31 < sub_be75288d[arg1].field_1793 % 128:
                                mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1 % 128) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                    mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                                mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                                return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], uint255(sub_be75288d[arg1].field_1792) * 0.5, mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                                       sub_be75288d[arg1].field_256,
                                       sub_be75288d[arg1].field_512,
                                       sub_be75288d[arg1].field_768,
                                       sub_be75288d[arg1].field_1024,
                                       sub_be75288d[arg1].field_1280,
                                       sub_be75288d[arg1].field_1536,
                                       ceil32(sub_be75288d[arg1].field_1 % 128) + 288
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                    if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                        mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                    mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                    if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                        mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                           sub_be75288d[arg1].field_256,
                           sub_be75288d[arg1].field_512,
                           sub_be75288d[arg1].field_768,
                           sub_be75288d[arg1].field_1024,
                           sub_be75288d[arg1].field_1280,
                           sub_be75288d[arg1].field_1536,
                           ceil32(sub_be75288d[arg1].field_1 % 128) + 288
                if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                    revert with 0, 34
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if 31 < uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1 % 128) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                            return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], sub_be75288d[arg1].field_1793 % 128, mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]), 
                                   sub_be75288d[arg1].field_256,
                                   sub_be75288d[arg1].field_512,
                                   sub_be75288d[arg1].field_768,
                                   sub_be75288d[arg1].field_1024,
                                   sub_be75288d[arg1].field_1280,
                                   sub_be75288d[arg1].field_1536,
                                   ceil32(sub_be75288d[arg1].field_1 % 128) + 288
                        mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                else:
                    if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                        revert with 0, 34
                    if sub_be75288d[arg1].field_1793 % 128:
                        if 31 < sub_be75288d[arg1].field_1793 % 128:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1 % 128) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                            return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], sub_be75288d[arg1].field_1793 % 128, mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]), 
                                   sub_be75288d[arg1].field_256,
                                   sub_be75288d[arg1].field_512,
                                   sub_be75288d[arg1].field_768,
                                   sub_be75288d[arg1].field_1024,
                                   sub_be75288d[arg1].field_1280,
                                   sub_be75288d[arg1].field_1536,
                                   ceil32(sub_be75288d[arg1].field_1 % 128) + 288
                        mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                    mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                    mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
            else:
                mem[128] = 256 * Mask(248, 0, sub_be75288d[arg1].field_8)
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if bool(sub_be75288d[arg1].field_1792):
                        if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                            if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                            else:
                                mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1 % 128) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    else:
                        if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                            revert with 0, 34
                        if not sub_be75288d[arg1].field_1793 % 128:
                            if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                        else:
                            if 31 >= sub_be75288d[arg1].field_1793 % 128:
                                mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                            else:
                                mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                                idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                                s = 0
                                while ceil32(sub_be75288d[arg1].field_1 % 128) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                    mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                            if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                                mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = 0
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 448] = uint255(sub_be75288d[arg1].field_1792) * 0.5
                            mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]
                            if ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) > uint255(sub_be75288d[arg1].field_1792) * 0.5:
                                mem[(uint255(sub_be75288d[arg1].field_1792) * 0.5) + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5) + 480] = 0
                    return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], 2 * Mask(256, -1, sub_be75288d[arg1].field_1792), mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(uint255(sub_be75288d[arg1].field_1792) * 0.5)]), 
                           sub_be75288d[arg1].field_256,
                           sub_be75288d[arg1].field_512,
                           sub_be75288d[arg1].field_768,
                           sub_be75288d[arg1].field_1024,
                           sub_be75288d[arg1].field_1280,
                           sub_be75288d[arg1].field_1536,
                           ceil32(sub_be75288d[arg1].field_1 % 128) + 288
                if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                    revert with 0, 34
                if bool(sub_be75288d[arg1].field_1792):
                    if bool(sub_be75288d[arg1].field_1792) == uint255(sub_be75288d[arg1].field_1792) * 0.5 < 32:
                        revert with 0, 34
                    if not Mask(256, -1, sub_be75288d[arg1].field_1792):
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                    else:
                        if 31 >= uint255(sub_be75288d[arg1].field_1792) * 0.5:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1 % 128) + (uint255(sub_be75288d[arg1].field_1792) * 0.5) + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                else:
                    if bool(sub_be75288d[arg1].field_1792) == sub_be75288d[arg1].field_1793 % 128 < 32:
                        revert with 0, 34
                    if not sub_be75288d[arg1].field_1793 % 128:
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
                    else:
                        if 31 >= sub_be75288d[arg1].field_1793 % 128:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, sub_be75288d[arg1].field_1800)
                        else:
                            mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160] = sub_be75288d[arg1][7].field_0
                            idx = ceil32(sub_be75288d[arg1].field_1 % 128) + 160
                            s = 0
                            while ceil32(sub_be75288d[arg1].field_1 % 128) + sub_be75288d[arg1].field_1793 % 128 + 128 > idx:
                                mem[idx + 32] = sub_be75288d[arg1][s + 7].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                        if ceil32(sub_be75288d[arg1].field_1 % 128) > sub_be75288d[arg1].field_1 % 128:
                            mem[sub_be75288d[arg1].field_1 % 128 + ceil32(sub_be75288d[arg1].field_1 % 128) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = 0
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 448] = sub_be75288d[arg1].field_1793 % 128
                        mem[(2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480 len ceil32(sub_be75288d[arg1].field_1793 % 128)] = mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]
                        if ceil32(sub_be75288d[arg1].field_1793 % 128) > sub_be75288d[arg1].field_1793 % 128:
                            mem[sub_be75288d[arg1].field_1793 % 128 + (2 * ceil32(sub_be75288d[arg1].field_1 % 128)) + ceil32(sub_be75288d[arg1].field_1793 % 128) + 480] = 0
    return Array(len=sub_be75288d[arg1].field_0 % 128, data=mem[128 len ceil32(sub_be75288d[arg1].field_1 % 128)], sub_be75288d[arg1].field_1792 % 128, mem[ceil32(sub_be75288d[arg1].field_1 % 128) + 160 len ceil32(sub_be75288d[arg1].field_1793 % 128)]), 
           sub_be75288d[arg1].field_256,
           sub_be75288d[arg1].field_512,
           sub_be75288d[arg1].field_768,
           sub_be75288d[arg1].field_1024,
           sub_be75288d[arg1].field_1280,
           sub_be75288d[arg1].field_1536,
           ceil32(sub_be75288d[arg1].field_1 % 128) + 288
}



}
