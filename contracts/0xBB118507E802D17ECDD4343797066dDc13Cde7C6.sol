contract main {




// =====================  Runtime code  =====================


#
#  - executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5)
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const getChainId = chainid

const contractURI = Array(len=36, data=0x2968747470733a2f2f6d696e746c69742e636f6d2f636f6e74726163744d657461646174, mem[164 len 28], mem[220 len 4])

const ERC712_VERSION = '1'


mapping of uint8 stor0;
mapping of uint256 balanceOf;
mapping of uint8 stor2;
array of uint256 uri;
uint256 domainSeperator;
mapping of uint256 nonce;
uint256 tokenIds;
uint8 stor8; offset 160
uint128 stor8; offset 160
address adminAddress;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                    mem[207 len 21]
    return balanceOf[arg2][address(arg1)]
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[Mask(32, 224, arg1)])
}

function uri(uint256 arg1) {
    return uri[0 len uri.length]
}

function getDomainSeperator() {
    return domainSeperator
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    return nonce[address(arg1)]
}

function getAdmin() {
    return adminAddress
}

function tokenIds() {
    return tokenIds
}

function _fallback() payable {
    revert
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Only Admin'
    adminAddress = arg1
}

function setOpenseaProxyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'Only Admin'
    Mask(96, 0, stor8.field_160) = Mask(96, 0, arg1)
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if arg2 != 0xa5409ec958c83c3f309868babaca7c86dcb077c1:
        return bool(stor2[address(arg1)][address(arg2)])
    if bool(uint8(stor8.field_160)) != 1:
        return bool(stor2[address(arg1)][address(arg2)])
    return 1
}

function setURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if adminAddress != msg.sender:
        revert with 0, 'Only Admin'
    if arg1.length:
        uri[] = Array(len=arg1.length, data=arg1[all])
    else:
        uri.length = 0
        idx = 0
        while uri.length + 31 / 32 > idx:
            uri[idx] = 0
            idx = idx + 1
            continue 
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        if msg.sender == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x68455243313135353a2073657474696e6720617070726f76616c2073746174757320666f722073656c,
                        mem[205 len 23]
        if this.address != msg.sender:
            stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            stor2[mem[calldata.size + 108 len 20]][address(arg1)] = uint8(arg2)
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            emit ApprovalForAll(arg2, mem[ceil32(calldata.size) + calldata.size + 140 len 20], arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] == arg1:
            revert with 0, 
                        32,
                        41,
                        0x68455243313135353a2073657474696e6720617070726f76616c2073746174757320666f722073656c,
                        mem[ceil32(calldata.size) + 237 len 23]
        if this.address != msg.sender:
            stor2[address(msg.sender)][address(arg1)] = uint8(arg2)
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            stor2[mem[ceil32(calldata.size) + calldata.size + 140 len 20]][address(arg1)] = uint8(arg2)
            mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
            mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit ApprovalForAll(arg2, mem[(2 * ceil32(calldata.size)) + calldata.size + 172 len 20], arg1);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    41,
                    0x66455243313135353a206163636f756e747320616e6420696473206c656e677468206d69736d617463,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 269 len 23]
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg1.length
    if arg1.length:
        mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 
                        32,
                        43,
                        0x73455243313135353a2062616c616e636520717565727920666f7220746865207a65726f20616464726573,
                        mem[(64 * arg1.length) + (32 * arg2.length) + 303 len 21]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = sha3(mem[(32 * idx) + (32 * arg1.length) + 160], 1)
        require idx < arg1.length
        mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] = balanceOf[mem[(32 * idx) + (32 * arg1.length) + 160]][address(mem[(32 * idx) + 128])]
        idx = idx + 1
        continue 
    mem[(64 * arg1.length) + (32 * arg2.length) + 192] = 32
    mem[(64 * arg1.length) + (32 * arg2.length) + 224] = arg1.length
    mem[(64 * arg1.length) + (32 * arg2.length) + 256 len floor32(arg1.length)] = mem[(32 * arg1.length) + (32 * arg2.length) + 192 len floor32(arg1.length)]
    return memory
      from (64 * arg1.length) + (32 * arg2.length) + 192
       len (161 * arg1.length) + 64
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    tokenIds++
    if not msg.sender:
        revert with 0, 32, 33, 0x68455243313135353a206d696e7420746f20746865207a65726f20616464726573, mem[229 len 31]
    if this.address != msg.sender:
        if balanceOf[stor7][address(msg.sender)] + arg1 < balanceOf[stor7][address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor7][address(msg.sender)] += arg1
        emit TransferSingle(tokenIds, arg1, msg.sender, 0, msg.sender);
        if ext_code.size(msg.sender) > 0:
            require ext_code.size(msg.sender)
            call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, tokenIds, arg1, 160, 0
            if not ext_call.success:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            Mask(96, 0, arg1)
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg1)
    else:
        mem[128] = calldata.size
        mem[160 len calldata.size] = call.data[0 len calldata.size]
        if balanceOf[stor7][address(msg.sender)] + arg1 < balanceOf[stor7][address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[stor7][address(msg.sender)] += arg1
        emit TransferSingle(tokenIds, arg1, mem[calldata.size + 140 len 20], 0, msg.sender);
        if ext_code.size(msg.sender) > 0:
            require ext_code.size(msg.sender)
            call msg.sender.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args mem[calldata.size + 140 len 20], 0, tokenIds, arg1, 160, 0
            if not ext_call.success:
                revert with 0, 
                            32,
                            52,
                            0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                            Mask(96, 0, arg1)
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg1)
    return tokenIds
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if not arg2:
        revert with 0, 
                    32,
                    37,
                    0x52455243313135353a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[ceil32(arg5.length) + 233 len 27]
    if this.address != msg.sender:
        if arg1 == msg.sender:
            if this.address != msg.sender:
                mem[ceil32(arg5.length) + 128] = 1
                require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                if arg4 > balanceOf[arg3][address(arg1)]:
                    revert with 0, 
                                32,
                                42,
                                0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                mem[ceil32(arg5.length) + 330 len 22],
                                mem[ceil32(arg5.length) + 374 len 10]
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[arg3][address(arg2)] += arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2) > 0:
                    require ext_code.size(arg2)
                    call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    52,
                                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                    Mask(96, 0, arg4)
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
            else:
                mem[ceil32(arg5.length) + 128] = calldata.size
                mem[ceil32(arg5.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                if arg4 > balanceOf[arg3][address(arg1)]:
                    revert with 0, 
                                32,
                                42,
                                0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                mem[ceil32(arg5.length) + ceil32(calldata.size) + 362 len 22],
                                mem[ceil32(arg5.length) + ceil32(calldata.size) + 406 len 10]
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[arg3][address(arg2)] += arg4
                emit TransferSingle(arg3, arg4, mem[ceil32(arg5.length) + calldata.size + 140 len 20], arg1, arg2);
                if ext_code.size(arg2) > 0:
                    require ext_code.size(arg2)
                    call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg5.length) + calldata.size + 140 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    52,
                                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                    Mask(96, 0, arg4)
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
        else:
            if this.address != msg.sender:
                if 0xa5409ec958c83c3f309868babaca7c86dcb077c1 != msg.sender:
                    if not stor2[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x61455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                    mem[ceil32(arg5.length) + 237 len 23]
                else:
                    if bool(uint8(stor8.field_160)) != 1:
                        if not stor2[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        41,
                                        0x61455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                        mem[ceil32(arg5.length) + 237 len 23]
                if this.address != msg.sender:
                    mem[ceil32(arg5.length) + 128] = 1
                    require 0 < Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 160 len -arg5.length + ceil32(arg5.length)]
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + 330 len 22],
                                    mem[ceil32(arg5.length) + 374 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        52,
                                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                        Mask(96, 0, arg4)
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
                else:
                    mem[ceil32(arg5.length) + 128] = calldata.size
                    mem[ceil32(arg5.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 362 len 22],
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 406 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] += arg4
                    emit TransferSingle(arg3, arg4, mem[ceil32(arg5.length) + calldata.size + 140 len 20], arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg5.length) + calldata.size + 140 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        52,
                                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                        Mask(96, 0, arg4)
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
            else:
                mem[ceil32(arg5.length) + 128] = calldata.size
                mem[ceil32(arg5.length) + 160 len calldata.size] = call.data[0 len calldata.size]
                if mem[ceil32(arg5.length) + calldata.size + 140 len 20] != 0xa5409ec958c83c3f309868babaca7c86dcb077c1:
                    if not stor2[address(arg1)][address(mem[ceil32(arg5.length) + calldata.size + 128])]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x61455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 269 len 23]
                else:
                    if bool(uint8(stor8.field_160)) != 1:
                        if not stor2[address(arg1)][address(mem[ceil32(arg5.length) + calldata.size + 128])]:
                            revert with 0, 
                                        32,
                                        41,
                                        0x61455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                        mem[ceil32(arg5.length) + ceil32(calldata.size) + 269 len 23]
                if this.address != msg.sender:
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 362 len 22],
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 406 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        52,
                                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                        Mask(96, 0, arg4)
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
                else:
                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 160] = calldata.size
                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = arg3
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = 1
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = arg4
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = 42
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352 len 42] = 0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 394 len 22],
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 438 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] += arg4
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = arg3
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 448] = arg4
                    emit TransferSingle(arg3, arg4, mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20], arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20]
                        mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 612 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        52,
                                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                        Mask(96, 0, arg4)
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
    else:
        mem[ceil32(arg5.length) + 128] = calldata.size
        mem[ceil32(arg5.length) + 160 len calldata.size] = call.data[0 len calldata.size]
        if arg1 == mem[ceil32(arg5.length) + calldata.size + 140 len 20]:
            if this.address != msg.sender:
                if arg4 > balanceOf[arg3][address(arg1)]:
                    revert with 0, 
                                32,
                                42,
                                0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                mem[ceil32(arg5.length) + ceil32(calldata.size) + 362 len 22],
                                mem[ceil32(arg5.length) + ceil32(calldata.size) + 406 len 10]
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[arg3][address(arg2)] += arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2) > 0:
                    require ext_code.size(arg2)
                    call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    52,
                                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                    Mask(96, 0, arg4)
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
            else:
                mem[ceil32(arg5.length) + ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(arg5.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = arg3
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = 1
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = arg4
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = 42
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352 len 42] = 0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
                if arg4 > balanceOf[arg3][address(arg1)]:
                    revert with 0, 
                                32,
                                42,
                                0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 394 len 22],
                                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 438 len 10]
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[arg3][address(arg2)] += arg4
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = arg3
                mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 448] = arg4
                emit TransferSingle(arg3, arg4, mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20], arg1, arg2);
                if ext_code.size(arg2) > 0:
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20]
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 612 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                    require ext_code.size(arg2)
                    call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                         gas gas_remaining wei
                        args mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 
                                    32,
                                    52,
                                    0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                    Mask(96, 0, arg4)
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
        else:
            if msg.sender == this.address:
                mem[ceil32(arg5.length) + ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(arg5.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                if mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20] != 0xa5409ec958c83c3f309868babaca7c86dcb077c1:
                    if not stor2[address(arg1)][address(mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 160])]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x61455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 301 len 23]
                else:
                    if bool(uint8(stor8.field_160)) != 1:
                        if not stor2[address(arg1)][address(mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 160])]:
                            revert with 0, 
                                        32,
                                        41,
                                        0x61455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                        mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 301 len 23]
                if this.address != msg.sender:
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 394 len 22],
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 438 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        52,
                                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                        Mask(96, 0, arg4)
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
                else:
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 192] = calldata.size
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 384 len 42] = 0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 426 len 22],
                                    mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 470 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] += arg4
                    mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 448] = arg3
                    mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 480] = arg4
                    emit TransferSingle(arg3, arg4, mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 204 len 20], arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 448] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 452] = mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 204 len 20]
                        mem[ceil32(arg5.length) + (4 * ceil32(calldata.size)) + 644 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + calldata.size + 204 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        52,
                                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                        Mask(96, 0, arg4)
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
            else:
                if 0xa5409ec958c83c3f309868babaca7c86dcb077c1 != msg.sender:
                    if not stor2[address(arg1)][address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    41,
                                    0x61455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 269 len 23]
                else:
                    if bool(uint8(stor8.field_160)) != 1:
                        if not stor2[address(arg1)][address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        41,
                                        0x61455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7220617070726f7665,
                                        mem[ceil32(arg5.length) + ceil32(calldata.size) + 269 len 23]
                if this.address != msg.sender:
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 362 len 22],
                                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 406 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        52,
                                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                        Mask(96, 0, arg4)
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
                else:
                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 160] = calldata.size
                    mem[ceil32(arg5.length) + ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 224] = arg3
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 256] = 1
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 288] = arg4
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 320] = 42
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 352 len 42] = 0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665
                    if arg4 > balanceOf[arg3][address(arg1)]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x64455243313135353a20696e73756666696369656e742062616c616e636520666f72207472616e736665,
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 394 len 22],
                                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 438 len 10]
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][address(arg2)] + arg4 < balanceOf[arg3][address(arg2)]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[arg3][address(arg2)] += arg4
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = arg3
                    mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 448] = arg4
                    emit TransferSingle(arg3, arg4, mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20], arg1, arg2);
                    if ext_code.size(arg2) > 0:
                        mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 416] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 420] = mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20]
                        mem[ceil32(arg5.length) + (2 * ceil32(calldata.size)) + 612 len ceil32(arg5.length)] = arg5[all], mem[arg5.length + 128 len ceil32(arg5.length) - arg5.length]
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                             gas gas_remaining wei
                            args mem[ceil32(arg5.length) + ceil32(calldata.size) + calldata.size + 172 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        52,
                                        0xfe455243313135353a207472616e7366657220746f206e6f6e2045524331313535526563656976657220696d706c656d656e7465,
                                        Mask(96, 0, arg4)
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 32, 40, 0x72455243313135353a204552433131353552656365697665722072656a656374656420746f6b656e, Mask(192, 0, arg4)
}



}
