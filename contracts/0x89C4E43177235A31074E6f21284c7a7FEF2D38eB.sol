contract main {




// =====================  Runtime code  =====================


uint256 stor0;
array of struct sales;
mapping of struct saleData;
mapping of uint8 stor3;
address feeAddress;
address argonAtomicCollectionAddress;
uint256 feeRate;
uint256 putFeeRate;

function IDtoSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    return saleData[arg1].field_0, saleData[arg1].field_256, saleData[arg1].field_512
}

function ArgonAtomicCollection() {
    return argonAtomicCollectionAddress
}

function feeAddress() {
    return feeAddress
}

function putFeeRate() {
    return putFeeRate
}

function getSaleData(uint256 arg1) {
    require calldata.size - 4 >= 32
    return saleData[arg1].field_0, saleData[arg1].field_256, saleData[arg1].field_512
}

function feeRate() {
    return feeRate
}

function sales(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < sales.length
    return sales[arg1].field_0
}

function isOnSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function _fallback() payable {
    revert
}

function changePrice(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == saleData[arg1].field_256
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    saleData[arg1].field_512 = arg2
    stor0 = 1
}

function cancelSale(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == saleData[arg1].field_256
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require stor3[arg1]
    stor3[arg1] = 0
    require ext_code.size(argonAtomicCollectionAddress)
    call argonAtomicCollectionAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function getSales() {
    if sales.length:
        mem[128] = uint256(sales.field_0)
        idx = 128
        s = 0
        while (32 * sales.length) + 96 > idx:
            mem[idx + 32] = sales[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sales.length, data=mem[128 len 32 * sales.length])
    mem[(32 * sales.length) + 128] = 32
    mem[(32 * sales.length) + 160] = sales.length
    mem[(32 * sales.length) + 192 len 32 * sales.length] = mem[128 len 32 * sales.length]
    return memory
      from (32 * sales.length) + 128
       len (96 * sales.length) + 64
}

function putSale(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if arg2 and putFeeRate > -1 / arg2:
        revert with 0, 17
    require msg.value >= arg2 * putFeeRate / 10^6
    require not stor3[arg1]
    sales.length++
    sales[sales.length].field_0 = arg1
    stor3[arg1] = 1
    saleData[arg1].field_0 = arg1
    saleData[arg1].field_256 = msg.sender
    saleData[arg1].field_512 = arg2
    call feeAddress with:
       value arg2 * putFeeRate / 10^6 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(argonAtomicCollectionAddress)
    call argonAtomicCollectionAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if feeRate and saleData[arg1].field_512 > -1 / feeRate:
        revert with 0, 17
    require saleData[arg1].field_512 <= msg.value
    require stor3[arg1]
    stor3[arg1] = 0
    saleData[arg1].field_0 = arg1
    saleData[arg1].field_256 = msg.sender
    saleData[arg1].field_512 = 0
    call feeAddress with:
       value feeRate * saleData[arg1].field_512 / 10^6 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if saleData[arg1].field_512 > !(feeRate * saleData[arg1].field_512 / 10^6):
        revert with 0, 17
    call saleData[arg1].field_256 with:
       value saleData[arg1].field_512 + (feeRate * saleData[arg1].field_512 / 10^6) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(argonAtomicCollectionAddress)
    call argonAtomicCollectionAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
}



}
