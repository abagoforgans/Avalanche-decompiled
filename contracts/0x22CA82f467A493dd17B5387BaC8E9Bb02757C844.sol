contract main {




// =====================  Runtime code  =====================


address adminAddress;
uint256 stor0;
mapping of uint8 stor1;
address bnbContractAddress;
array of address pATH_BNB_TOKEN;
array of address pATH_TOKEN_BNB;
uint8 stor6; offset 160
address swapContractAddress;
address buyContractAddress;
address nftContractAddress;
address tokenContractAddress;

function BnbContract() {
    return bnbContractAddress
}

function admins(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function TokenContract() {
    return tokenContractAddress
}

function PATH_TOKEN_BNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pATH_TOKEN_BNB.length
    return pATH_TOKEN_BNB[arg1]
}

function BuyContract() {
    return buyContractAddress
}

function PATH_BNB_TOKEN(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pATH_BNB_TOKEN.length
    return pATH_BNB_TOKEN[arg1]
}

function SwapContract() {
    return swapContractAddress
}

function NftContract() {
    return nftContractAddress
}

function admin() {
    return address(adminAddress)
}

function _upgrade(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
}

function setBuy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(adminAddress)
    buyContractAddress = arg1
}

function govWithdrawETH() {
    require msg.sender == address(adminAddress)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(adminAddress)
    address(adminAddress) = arg1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(adminAddress)
    stor1[address(arg1)] = 1
}

function withdraw() {
    require msg.sender == address(adminAddress)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6837dc35(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == address(adminAddress)
    mem[132] = 0, mem[132 len 28]
    delegate address(arg1).mem[132 len 4] with:
         gas gas_remaining wei
        args 
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function callNftTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if address(adminAddress) != msg.sender:
        if not stor6:
            revert with 0, 'no admin'
    require ext_code.size(nftContractAddress)
    call nftContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function nftTransferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if address(adminAddress) != msg.sender:
        if not stor6:
            revert with 0, 'no admin'
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function callTransfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(adminAddress) != msg.sender:
        require stor6
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == address(adminAddress)
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 1000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function transfer(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == address(adminAddress)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function sub_cba0e287(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if address(adminAddress) != msg.sender:
        require stor6
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_76f9ce01(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == address(adminAddress)
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    call address(arg1).mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
}

function sub_1080e495(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg2.length
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == address(adminAddress)
    mem[ceil32(ceil32(arg2.length)) + 97 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(ceil32(arg2.length)) + arg2.length + 97] = 0
    call address(arg1).mem[ceil32(ceil32(arg2.length)) + 97 len 4] with:
       value arg3 wei
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg2.length)) + 101 len arg2.length - 4]
}

function sub_d671ba23(?) {
    require ext_code.size(this.address)
    staticcall this.address.0xf851a440 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not proxy admin'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1[msg.sender] = 1
    buyContractAddress = 0x7127ea7fac5f78daceb7a42f92f4c2fc754b9457
    nftContractAddress = 0x9cd2102eed7d3133608a01aebc5f0a2016272fa7
    tokenContractAddress = 0x49dd245baf1b79b46308fc9b95ed5365d6c95d27
    require ext_code.size(0x49dd245baf1b79b46308fc9b95ed5365d6c95d27)
    call 0x49dd245baf1b79b46308fc9b95ed5365d6c95d27.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x7127ea7fac5f78daceb7a42f92f4c2fc754b9457, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function random() {
    if block.number < 1:
        revert with 0, 17
    require ext_code.size(nftContractAddress)
    staticcall nftContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0xca6512d8a423f81dbe1c7973eae612193cd423a2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nftContractAddress)
    staticcall nftContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0x185ea052221f74c56ca541b3153376fbcbf7aae0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nftContractAddress)
    staticcall nftContractAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 8000 * 10^18:
        revert with 0, 17
    return sha3(tx.origin, block.hash(block.number - 1), block.timestamp, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] - 8000 * 10^18)
}

function sub_7b01a54e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.number < 1:
        revert with 0, 17
    require ext_code.size(nftContractAddress)
    staticcall nftContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0xca6512d8a423f81dbe1c7973eae612193cd423a2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nftContractAddress)
    staticcall nftContractAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0x185ea052221f74c56ca541b3153376fbcbf7aae0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nftContractAddress)
    staticcall nftContractAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenContractAddress)
    staticcall tokenContractAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 8000 * 10^18:
        revert with 0, 17
    if sha3(tx.origin, block.hash(block.number - 1), block.timestamp, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] - 8000 * 10^18) % 100 < 90:
        revert with 0, '500'
    if address(adminAddress) != msg.sender:
        revert with 0, 'admin'
    require ext_code.size(buyContractAddress)
    call buyContractAddress.0xa0712d68 with:
         gas gas_remaining wei
        args 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(nftContractAddress)
    staticcall nftContractAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nftContractAddress)
    call nftContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args this.address, address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x7ee26906(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xba45b0b8(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x97ceda15(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x7ee26906(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require msg.sender == address(adminAddress)
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x8f283970(?????):
                            if uint32(call.func_hash) >> 224 != unknown_0x9688738b(?????):
                            require not msg.value
                            return tokenContractAddress
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        require msg.sender == address(adminAddress)
                        address(adminAddress) = address(arg1)
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x97ceda15(?????):
                        if unknown_0x97eb2cfb(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 < pATH_TOKEN_BNB.length
                            return pATH_TOKEN_BNB[arg1]
                        if unknown_0xa1db46c4(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return buyContractAddress
                        if uint32(call.func_hash) >> 224 != unknown_0xacd12d04(?????):
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 < pATH_BNB_TOKEN.length
                        return pATH_BNB_TOKEN[arg1]
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    if address(adminAddress) != msg.sender:
                        if not stor6:
                            revert with 0, 'no admin'
                    require ext_code.size(nftContractAddress)
                    call nftContractAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args address(arg1), address(arg2), arg3
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if unknown_0xd671ba23(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0xba45b0b8(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        require msg.sender == address(adminAddress)
                        require ext_code.size(address(arg1))
                        staticcall address(arg1).0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_code.size(address(arg1))
                        call address(arg1).0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg2), ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if uint32(call.func_hash) >> 224 != unknown_0xbc197c81(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0xcba0e287(?????):
                            if unknown_0xd4440991(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 64
                                require arg1 == address(arg1)
                                if address(adminAddress) != msg.sender:
                                    require stor6
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args address(arg1), arg2
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if address(adminAddress) != msg.sender:
                                require stor6
                            require ext_code.size(tokenContractAddress)
                            staticcall tokenContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    require not msg.value
                    require calldata.size - 4 >= 160
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg3 <= test266151307()
                    require arg3 + 35 < calldata.size
                    require arg3.length <= test266151307()
                    require arg3 + (32 * arg3.length) + 36 <= calldata.size
                    require arg4 <= test266151307()
                    require arg4 + 35 < calldata.size
                    require arg4.length <= test266151307()
                    require arg4 + (32 * arg4.length) + 36 <= calldata.size
                    require arg5 <= test266151307()
                    require arg5 + 35 < calldata.size
                    require arg5.length <= test266151307()
                    require arg5 + arg5.length + 36 <= calldata.size
                    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
                if uint32(call.func_hash) >> 224 != unknown_0xd671ba23(?????):
                    if unknown_0xe88385cd(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return swapContractAddress
                    if unknown_0xf55a40cc(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return nftContractAddress
                    if uint32(call.func_hash) >> 224 != unknown_0xf851a440(?????):
                    require not msg.value
                    return address(adminAddress)
                require not msg.value
                require ext_code.size(this.address)
                staticcall this.address.0xf851a440 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    revert with 0, 'not proxy admin'
                uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
                stor1[msg.sender] = 1
                buyContractAddress = 0x7127ea7fac5f78daceb7a42f92f4c2fc754b9457
                nftContractAddress = 0x9cd2102eed7d3133608a01aebc5f0a2016272fa7
                tokenContractAddress = 0x49dd245baf1b79b46308fc9b95ed5365d6c95d27
                require ext_code.size(0x49dd245baf1b79b46308fc9b95ed5365d6c95d27)
                call 0x49dd245baf1b79b46308fc9b95ed5365d6c95d27.approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args 0x7127ea7fac5f78daceb7a42f92f4c2fc754b9457, -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
        else:
            if unknown_0x5e2994fe(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x30206617(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x30206617(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        require msg.sender == address(adminAddress)
                        buyContractAddress = address(arg1)
                    if unknown_0x3199ea04(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                    if unknown_0x3ccfd60b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require msg.sender == address(adminAddress)
                        call msg.sender with:
                           value eth.balance(this.address) wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if uint32(call.func_hash) >> 224 != unknown_0x429b62e5(?????):
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    return bool(stor1[arg1])
                if uint32(call.func_hash) >> 224 != unknown_0x1080e495(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x150b7a02(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x2885363d(?????):
                        require not msg.value
                        return bnbContractAddress
                    require not msg.value
                    require calldata.size - 4 >= 128
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg4 <= test266151307()
                    require arg4 + 35 < calldata.size
                    require arg4.length <= test266151307()
                    require arg4 + arg4.length + 36 <= calldata.size
                    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
                require not msg.value
                require calldata.size - 4 >= 96
                require arg1 == address(arg1)
                require arg2 <= test266151307()
                require arg2 + 35 < calldata.size
                if arg2.length > test266151307():
                    revert with 0, 65
                if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                    revert with 0, 65
                mem[128] = arg2.length
                require arg2 + arg2.length + 36 <= calldata.size
                mem[160 len arg2.length] = arg2[all]
                mem[arg2.length + 160] = 0
                require msg.sender == address(adminAddress)
                mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                if ceil32(arg2.length) > arg2.length:
                    mem[ceil32(ceil32(arg2.length)) + arg2.length + 129] = 0
                call address(arg1).mem[ceil32(ceil32(arg2.length)) + 129 len 4] with:
                   value arg3 wei
                     gas gas_remaining wei
                    args mem[ceil32(ceil32(arg2.length)) + 133 len arg2.length - 4]
            else:
                if unknown_0x70480275(?????) > uint32(call.func_hash) >> 224:
                    if unknown_0x5e2994fe(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 128
                        require arg1 == address(arg1)
                        require arg2 == address(arg2)
                        require arg3 == address(arg3)
                        if address(adminAddress) != msg.sender:
                            if not stor6:
                                revert with 0, 'no admin'
                        require ext_code.size(address(arg3))
                        call address(arg3).0x23b872dd with:
                             gas gas_remaining wei
                            args address(arg1), address(arg2), arg4
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    if uint32(call.func_hash) >> 224 != unknown_0x5ec01e4d(?????):
                        if unknown_0x6837dc35(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            require msg.sender == address(adminAddress)
                            mem[164] = 0, mem[164 len 28]
                            delegate address(arg1).mem[164 len 4] with:
                                 gas gas_remaining wei
                                args 
                    require not msg.value
                    if block.number < 1:
                        revert with 0, 17
                    require ext_code.size(nftContractAddress)
                    staticcall nftContractAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args 0xca6512d8a423f81dbe1c7973eae612193cd423a2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nftContractAddress)
                    staticcall nftContractAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args 0x185ea052221f74c56ca541b3153376fbcbf7aae0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(nftContractAddress)
                    staticcall nftContractAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(tokenContractAddress)
                    staticcall tokenContractAddress.0x18160ddd with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 8000 * 10^18:
                        revert with 0, 17
                    return sha3(tx.origin, block.hash(block.number - 1), block.timestamp, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] - 8000 * 10^18)
                if unknown_0x70480275(?????) == uint32(call.func_hash) >> 224:
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    require msg.sender == address(adminAddress)
                    stor1[address(arg1)] = 1
                else:
                    if unknown_0x76f9ce01(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require arg1 == address(arg1)
                        require arg2 <= test266151307()
                        require arg2 + 35 < calldata.size
                        if arg2.length > test266151307():
                            revert with 0, 65
                        if ceil32(ceil32(arg2.length)) + 129 < 128 or ceil32(ceil32(arg2.length)) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = arg2.length
                        require arg2 + arg2.length + 36 <= calldata.size
                        mem[160 len arg2.length] = arg2[all]
                        mem[arg2.length + 160] = 0
                        require msg.sender == address(adminAddress)
                        mem[ceil32(ceil32(arg2.length)) + 129 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 160 len ceil32(arg2.length) - arg2.length]
                        if ceil32(arg2.length) > arg2.length:
                            mem[ceil32(ceil32(arg2.length)) + arg2.length + 129] = 0
                        call address(arg1).mem[ceil32(ceil32(arg2.length)) + 129 len 4] with:
                             gas gas_remaining wei
                            args mem[ceil32(ceil32(arg2.length)) + 133 len arg2.length - 4]
                    else:
                        if uint32(call.func_hash) >> 224 != unknown_0x7b01a54e(?????):
                            if unknown_0x7e5465ba(?????) == uint32(call.func_hash) >> 224:
                                require not msg.value
                                require calldata.size - 4 >= 64
                                require arg1 == address(arg1)
                                require arg2 == address(arg2)
                                require msg.sender == address(adminAddress)
                                require ext_code.size(address(arg1))
                                call address(arg1).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), 1000000 * 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        else:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            require arg1 == address(arg1)
                            if block.number < 1:
                                revert with 0, 17
                            require ext_code.size(nftContractAddress)
                            staticcall nftContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args 0xca6512d8a423f81dbe1c7973eae612193cd423a2
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(nftContractAddress)
                            staticcall nftContractAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args 0x185ea052221f74c56ca541b3153376fbcbf7aae0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(nftContractAddress)
                            staticcall nftContractAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(tokenContractAddress)
                            staticcall tokenContractAddress.0x18160ddd with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 8000 * 10^18:
                                revert with 0, 17
                            if sha3(tx.origin, block.hash(block.number - 1), block.timestamp, ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0] - 8000 * 10^18) % 100 < 90:
                                revert with 0, '500'
                            if address(adminAddress) != msg.sender:
                                revert with 0, 'admin'
                            require ext_code.size(buyContractAddress)
                            call buyContractAddress.0xa0712d68 with:
                                 gas gas_remaining wei
                                args 1
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(nftContractAddress)
                            staticcall nftContractAddress.tokenOfOwnerByIndex(address arg1, uint256 arg2) with:
                                    gas gas_remaining wei
                                   args this.address, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_code.size(nftContractAddress)
                            call nftContractAddress.0x23b872dd with:
                                 gas gas_remaining wei
                                args this.address, address(arg1), ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
}



}
