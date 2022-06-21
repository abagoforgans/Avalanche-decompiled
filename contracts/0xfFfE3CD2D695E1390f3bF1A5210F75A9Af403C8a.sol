contract main {




// =====================  Runtime code  =====================


#
#  - tokenURI(uint256 arg1)
#
address owner;
array of uint256 name;
array of uint256 symbol;
mapping of address ownerOf;
mapping of uint256 balanceOf;
mapping of address approved;
mapping of uint8 stor6;
uint256 stor8;
mapping of uint8 stor9;
mapping of struct stor10;

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x204152433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    return approved[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not ownerOf[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x644152433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_a36cc981(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor6[address(arg1)][address(arg2)])
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

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if msg.sender == arg1:
        revert with 0, 'ARC721: approve to caller'
    stor6[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == 0x80ac58cd00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x5b5e139f00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x724f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_89ae5bde(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ('cd', 4).length > 0
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 9
        stor9[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if arg1 == ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6e4152433732313a20617070726f76616c20746f2063757272656e74206f776e65,
                    mem[197 len 31]
    if ownerOf[arg2] != msg.sender:
        if not stor6[stor3[arg2]][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        56,
                        0x734152433732313a20617070726f76652063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f76656420666f7220616c,
                        mem[220 len 8]
    approved[arg2] = arg1
    if not ownerOf[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function getTokens() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x644152433732313a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[206 len 22]
    if not balanceOf[address(msg.sender)]:
        return ''
    require balanceOf[address(msg.sender)] <= test266151307()
    if balanceOf[address(msg.sender)]:
        mem[128 len 32 * balanceOf[address(msg.sender)]] = call.data[calldata.size len 32 * balanceOf[address(msg.sender)]]
    idx = 1
    s = 0
    while idx <= stor8:
        mem[0] = idx
        mem[32] = 3
        if not ownerOf[idx]:
            revert with 0, 
                        32,
                        41,
                        0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[(32 * balanceOf[address(msg.sender)]) + 237 len 23]
        if ownerOf[idx] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        require s < balanceOf[address(msg.sender)]
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(msg.sender)]) + 192 len floor32(balanceOf[address(msg.sender)])] = mem[128 len floor32(balanceOf[address(msg.sender)])]
    return Array(len=balanceOf[address(msg.sender)], data=mem[128 len floor32(balanceOf[address(msg.sender)])], mem[(32 * balanceOf[address(msg.sender)]) + floor32(balanceOf[address(msg.sender)]) + 192 len (32 * balanceOf[address(msg.sender)]) - floor32(balanceOf[address(msg.sender)])]), 
}

function sub_34f359f9(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if not stor9[address(msg.sender)]:
        revert with 0, 'Not authorized'
    stor8++
    if not arg4:
        revert with 0, 'ARC721: mint to the zero address'
    if ownerOf[stor8]:
        revert with 0, 'ARC721: token already minted'
    balanceOf[address(arg4)]++
    ownerOf[stor8] = arg4
    emit Transfer(0, arg4, stor8);
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg3
    stor10[stor8].field_0 = msg.sender
    if arg1.length:
        stor10[stor8][1][].field_0 = Array(len=arg1.length, data=arg1[all])
    else:
        stor10[stor8].field_256 = 0
        idx = 0
        while stor10[stor8][1].length + 31 / 32 > idx:
            stor10[stor8][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    if Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        stor10[stor8][2][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    else:
        stor10[stor8].field_512 = 0
        idx = 0
        while stor10[stor8][2].length + 31 / 32 > idx:
            stor10[stor8][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    stor10[stor8].field_768 = arg3
    return stor8
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c4152433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[208 len 20]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        44,
                        0x204152433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[208 len 20]
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            49,
                            0x734152433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[213 len 15]
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe4152433732313a207472616e736665722066726f6d20696e636f7272656374206f776e65,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x734152433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[200 len 28]
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[205 len 23]
    emit Approval(ownerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
}

function sub_8bb76330(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 10
    mem[96] = stor10[arg1][1].length
    mem[128] = stor10[arg1][1].field_0
    idx = 128
    s = 0
    while stor10[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor10[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 160
    mem[ceil32(stor10[arg1][1].length) + 128] = stor10[arg1][2].length
    mem[0] = sha3(arg1, 10) + 2
    mem[ceil32(stor10[arg1][1].length) + 160] = stor10[arg1][2].field_0
    idx = ceil32(stor10[arg1][1].length) + 160
    s = 0
    while ceil32(stor10[arg1][1].length) + stor10[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor10[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 160] = stor10[arg1].field_0
    mem[ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 256] = stor10[arg1].field_768
    mem[ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 192] = 128
    mem[ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 288] = stor10[arg1][1].length
    mem[ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 320 len ceil32(stor10[arg1][1].length)] = mem[128 len ceil32(stor10[arg1][1].length)]
    mem[ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 224] = stor10[arg1][1].length + 160
    mem[stor10[arg1][1].length + ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 320] = stor10[arg1][2].length
    mem[stor10[arg1][1].length + ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 352 len ceil32(stor10[arg1][2].length)] = mem[ceil32(stor10[arg1][1].length) + 160 len ceil32(stor10[arg1][2].length)]
    if not stor10[arg1][2].length % 32:
        return stor10[arg1].field_0, 
               Array(len=stor10[arg1][1].length, data=mem[128 len ceil32(stor10[arg1][1].length)], mem[(2 * ceil32(stor10[arg1][1].length)) + ceil32(stor10[arg1][2].length) + 320 len stor10[arg1][2].length + stor10[arg1][1].length + -ceil32(stor10[arg1][1].length) + 32]),
               stor10[arg1][1].length + 160,
               stor10[arg1].field_768
    mem[floor32(stor10[arg1][2].length) + stor10[arg1][1].length + ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + 352] = mem[floor32(stor10[arg1][2].length) + stor10[arg1][1].length + ceil32(stor10[arg1][1].length) + ceil32(stor10[arg1][2].length) + -stor10[arg1][2].length % 32 + 384 len stor10[arg1][2].length % 32]
    return stor10[arg1].field_0, 
           Array(len=stor10[arg1][1].length, data=mem[128 len ceil32(stor10[arg1][1].length)], mem[(2 * ceil32(stor10[arg1][1].length)) + ceil32(stor10[arg1][2].length) + 320 len floor32(stor10[arg1][2].length) + stor10[arg1][1].length + -ceil32(stor10[arg1][1].length) + 64]),
           stor10[arg1][1].length + 160,
           stor10[arg1].field_768
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not ownerOf[arg3]:
        revert with 0, 32, 44, 0x6c4152433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 32, 44, 0x204152433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[240 len 20]
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x734152433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[245 len 15]
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0, 32, 37, 0xfe4152433732313a207472616e736665722066726f6d20696e636f7272656374206f776e65, mem[233 len 27]
    if not arg2:
        revert with 0, 32, 36, 0x734152433732313a207472616e7366657220746f20746865207a65726f20616464726573, mem[232 len 28]
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 32, 41, 0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65, mem[237 len 23]
    emit Approval(ownerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(arg2):
            mem[228] = 128
            mem[260] = 0
            mem[292 len 0] = None
            require ext_code.size(arg2)
            call arg2.0x43a13c7e with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
            if not ext_call.success:
                if not return_data.size:
                    revert with 0, 'nARC721: transfer to non ARC721Receiver implemente'
                if not return_data.size:
                    revert with 0, 
                                32,
                                50,
                                0x6e4152433732313a207472616e7366657220746f206e6f6e20415243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(return_data.size) + 247 len 14]
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x43a13c7e00000000000000000000000000000000000000000000000000000000:
                revert with 0, 'nARC721: transfer to non ARC721Receiver implemente'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    44,
                    0x6c4152433732313a206f70657261746f7220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 240 len 20]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if ownerOf[arg3] != msg.sender:
        if not ownerOf[arg3]:
            revert with 0, 
                        32,
                        44,
                        0x204152433732313a20617070726f76656420717565727920666f72206e6f6e6578697374656e7420746f6b65,
                        mem[ceil32(arg4.length) + 240 len 20]
        if approved[arg3] != msg.sender:
            if not stor6[stor3[arg3]][address(msg.sender)]:
                revert with 0, 
                            32,
                            49,
                            0x734152433732313a207472616e736665722063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                            mem[ceil32(arg4.length) + 245 len 15]
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    if ownerOf[arg3] != arg1:
        revert with 0, 
                    32,
                    37,
                    0xfe4152433732313a207472616e736665722066726f6d20696e636f7272656374206f776e65,
                    mem[ceil32(arg4.length) + 233 len 27]
    if not arg2:
        revert with 0, 
                    32,
                    36,
                    0x734152433732313a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg4.length) + 232 len 28]
    approved[arg3] = 0
    if not ownerOf[arg3]:
        revert with 0, 
                    32,
                    41,
                    0x724152433732313a206f776e657220717565727920666f72206e6f6e6578697374656e7420746f6b65,
                    mem[ceil32(arg4.length) + 237 len 23]
    emit Approval(ownerOf[arg3], 0, arg3);
    balanceOf[address(arg1)]--
    balanceOf[address(arg2)]++
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(arg2):
            mem[ceil32(arg4.length) + 128] = 0x43a13c7e00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg4.length) + 228] = 128
            mem[ceil32(arg4.length) + 260] = arg4.length
            mem[ceil32(arg4.length) + 292 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
            require ext_code.size(arg2)
            call arg2 with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                if not return_data.size:
                    if not arg4.length:
                        revert with 0, 'nARC721: transfer to non ARC721Receiver implemente'
                    revert with arg4[all]
                if not return_data.size:
                    revert with 0, 
                                32,
                                50,
                                0x6e4152433732313a207472616e7366657220746f206e6f6e20415243373231526563656976657220696d706c656d656e7465,
                                mem[ceil32(arg4.length) + ceil32(return_data.size) + 247 len 14]
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x43a13c7e00000000000000000000000000000000000000000000000000000000:
                revert with 0, 'nARC721: transfer to non ARC721Receiver implemente'
}



}
