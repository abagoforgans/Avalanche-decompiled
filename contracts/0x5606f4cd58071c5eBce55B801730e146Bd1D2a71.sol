contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 stor1;
mapping of struct _nft_info;

function get_nft_info(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not _nft_info[arg1].field_256:
        revert with 0, 'NFT invalid or not finalized', 0
    if _nft_info[arg1].field_256 > -86401:
        revert with 0, 17
    if block.timestamp <= _nft_info[arg1].field_256 + (24 * 3600):
        revert with 0, 'NFT invalid or not finalized', 0
    return _nft_info[arg1].field_0, 
           _nft_info[arg1].field_256,
           _nft_info[arg1].field_512,
           _nft_info[arg1].field_768,
           _nft_info[arg1].field_1024,
           _nft_info[arg1].field_1280,
           _nft_info[arg1].field_1536
}

function get_balance_from(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not _nft_info[arg1].field_256:
        revert with 0, 'NFT invalid or not finalized', 0
    if _nft_info[arg1].field_256 > -86401:
        revert with 0, 17
    if block.timestamp <= _nft_info[arg1].field_256 + (24 * 3600):
        revert with 0, 'NFT invalid or not finalized', 0
    return _nft_info[arg1][7][address(arg2)].field_0
}

function _fallback() payable {
    revert
}

function pre_mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender][arg1]:
        stor1[msg.sender][arg1] = block.timestamp
}

function update_nft_info(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not _nft_info[arg1].field_256:
        revert with 0, 'NFT invalid or not finalized', 0
    if _nft_info[arg1].field_256 > -86401:
        revert with 0, 17
    if block.timestamp <= _nft_info[arg1].field_256 + (24 * 3600):
        revert with 0, 'NFT invalid or not finalized', 0
    if _nft_info[arg1][7][msg.sender].field_0 > 500 * 10^6 != 1:
        revert with 0, '', 0
    _nft_info[arg1].field_1280 = arg2
    _nft_info[arg1].field_1536 = arg3
    emit 0xb5689735: arg3, arg1, msg.sender, arg2
}

function transfer(uint256 arg1, uint256 arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if not _nft_info[arg1].field_256:
        revert with 0, 'NFT invalid or not finalized', 0
    if _nft_info[arg1].field_256 > -86401:
        revert with 0, 17
    if block.timestamp <= _nft_info[arg1].field_256 + (24 * 3600):
        revert with 0, 'NFT invalid or not finalized', 0
    if arg2 > _nft_info[arg1][7][msg.sender].field_0:
        revert with 0, 'Insufficient funds', 0
    if arg3 == msg.sender:
        revert with 0, '', 0
    if _nft_info[arg1][7][msg.sender].field_0 < arg2:
        revert with 0, 17
    _nft_info[arg1][7][msg.sender].field_0 -= arg2
    if _nft_info[arg1][7][address(arg3)].field_0 > !arg2:
        revert with 0, 17
    _nft_info[arg1][7][address(arg3)].field_0 += arg2
    emit 0x6d7c707b: arg2, arg1, msg.sender, arg3
}

function withdraw_buy_offer(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not _nft_info[arg1].field_256:
        revert with 0, 'NFT invalid or not finalized', 0
    if _nft_info[arg1].field_256 > -86401:
        revert with 0, 17
    if block.timestamp <= _nft_info[arg1].field_256 + (24 * 3600):
        revert with 0, 'NFT invalid or not finalized', 0
    if arg2 >= 4:
        revert with 0, 'Slot unavailable', 0
    if not _nft_info[arg1][arg2].field_2816:
        revert with 0, '', 0
    if _nft_info[arg1][arg2].field_2048 != msg.sender:
        revert with 0, '', 0
    emit 0x72280bb7: _nft_info[arg1][arg2].field_2304, _nft_info[arg1][arg2].field_2560, arg1, _nft_info[arg1][arg2].field_2048, arg2
    _nft_info[arg1][arg2].field_2816 = 0
    call _nft_info[arg1][arg2].field_2048 with:
       value _nft_info[arg1][arg2].field_2560 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to tr', 0
    stor0 = 1
}

function get_next_available_buy_offer_slot(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not _nft_info[arg1].field_256:
        revert with 0, 'NFT invalid or not finalized', 0
    if _nft_info[arg1].field_256 > -86401:
        revert with 0, 17
    if block.timestamp <= _nft_info[arg1].field_256 + (24 * 3600):
        revert with 0, 'NFT invalid or not finalized', 0
    mem[64] = 160
    idx = 0
    s = 0
    while idx < 4:
        _49 = mem[64]
        mem[64] = mem[64] + 128
        mem[_49] = _nft_info[arg1][idx].field_2048
        mem[_49 + 32] = _nft_info[arg1][idx].field_2304
        mem[_49 + 64] = _nft_info[arg1][idx].field_2560
        mem[_49 + 96] = _nft_info[arg1][idx].field_2816
        if not _nft_info[arg1][idx].field_2816:
            return idx, 0
        if block.timestamp >= _nft_info[arg1][idx].field_2816:
            return idx, 0
        if s:
            if _nft_info[arg1][idx].field_2816 >= s:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _nft_info[arg1][idx].field_2816
        continue 
    return 0, s
}

function mint(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    mem[180 len 64] = msg.sender, arg1, mem[180 len 12]
    hash = sha256hash(mem[180 len 52]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not stor1[msg.sender][hash]:
        revert with 0, 'Mint and premint mismatch', 0
    if _nft_info[arg1].field_256:
        if _nft_info[arg1].field_256 > -86401:
            revert with 0, 17
        if block.timestamp > _nft_info[arg1].field_256 + (24 * 3600):
            revert with 0, '', 0
    if _nft_info[arg1].field_256:
        if stor1[msg.sender][hash] >= _nft_info[arg1].field_512:
            revert with 0, '', 0
        _nft_info[arg1][7][_nft_info[arg1].field_0].field_0 = 0
    _nft_info[arg1].field_0 = msg.sender or Mask(96, 160, _nft_info[arg1].field_0)
    _nft_info[arg1].field_256 = block.timestamp
    _nft_info[arg1].field_512 = stor1[msg.sender][hash]
    _nft_info[arg1].field_768 = arg2
    _nft_info[arg1].field_1024 = arg3
    _nft_info[arg1][7][msg.sender].field_0 = 10^9
    emit 0xb458411f: _nft_info[arg1].field_512, _nft_info[arg1].field_1024, arg1, _nft_info[arg1].field_0, _nft_info[arg1].field_768
}

function make_buy_offer(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not _nft_info[arg1].field_256:
        revert with 0, 'NFT invalid or not finalized', 0
    if _nft_info[arg1].field_256 > -86401:
        revert with 0, 17
    if block.timestamp <= _nft_info[arg1].field_256 + (24 * 3600):
        revert with 0, 'NFT invalid or not finalized', 0
    if arg3 >= 4:
        revert with 0, 'Slot unavailable', 0
    if _nft_info[arg1][arg3].field_2816 != 0:
        if _nft_info[arg1][arg3].field_2816 >= block.timestamp:
            revert with 0, 'Slot unavailable', 0
        if _nft_info[arg1][arg3].field_2816 != 0:
            if _nft_info[arg1][arg3].field_2816 < block.timestamp == 1:
                _nft_info[arg1][arg3].field_2816 = 0
                call _nft_info[arg1][arg3].field_2048 with:
                   value _nft_info[arg1][arg3].field_2560 wei
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with 0, 'Failed to tr', 0
    _nft_info[arg1][arg3].field_2048 = msg.sender or Mask(96, 160, _nft_info[arg1][arg3].field_2048)
    _nft_info[arg1][arg3].field_2304 = arg2
    _nft_info[arg1][arg3].field_2560 = msg.value
    if not arg3:
        if block.timestamp > -3601:
            revert with 0, 17
        _nft_info[arg1][arg3].field_2816 = block.timestamp + 3600
        emit 0xc6685945: _nft_info[arg1][arg3].field_2304, _nft_info[arg1][arg3].field_2560, block.timestamp + 3600, arg1, _nft_info[arg1][arg3].field_2048, arg3
    else:
        if block.timestamp > -86401:
            revert with 0, 17
        _nft_info[arg1][arg3].field_2816 = block.timestamp + (24 * 3600)
        emit 0xc6685945: _nft_info[arg1][arg3].field_2304, _nft_info[arg1][arg3].field_2560, block.timestamp + (24 * 3600), arg1, _nft_info[arg1][arg3].field_2048, arg3
    stor0 = 1
}

function accept_buy_offer(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    if not _nft_info[arg1].field_256:
        revert with 0, 'NFT invalid or not finalized', 0
    if _nft_info[arg1].field_256 > -86401:
        revert with 0, 17
    if block.timestamp <= _nft_info[arg1].field_256 + (24 * 3600):
        revert with 0, 'NFT invalid or not finalized', 0
    if arg2 >= 4:
        revert with 0, 'Slot unavailable', 0
    if 0 == _nft_info[arg1][arg2].field_2816:
        revert with 0, '', 0
    if block.timestamp >= _nft_info[arg1][arg2].field_2816:
        revert with 0, '', 0
    if _nft_info[arg1][arg2].field_2304 != arg3:
        revert with 0, 'Offer parameters mismatch', 0
    if _nft_info[arg1][arg2].field_2560 != arg4:
        revert with 0, 'Offer parameters mismatch', 0
    emit 0x9bb458cc: msg.sender, arg3, arg4, arg1, _nft_info[arg1][arg2].field_2048, arg2
    if not _nft_info[arg1].field_256:
        revert with 0, 'NFT invalid or not finalized', 0
    if _nft_info[arg1].field_256 > -86401:
        revert with 0, 17
    if block.timestamp <= _nft_info[arg1].field_256 + (24 * 3600):
        revert with 0, 'NFT invalid or not finalized', 0
    if arg3 > _nft_info[arg1][7][msg.sender].field_0:
        revert with 0, 'Insufficient funds', 0
    if _nft_info[arg1][arg2].field_2048 == msg.sender:
        revert with 0, '', 0
    if _nft_info[arg1][7][msg.sender].field_0 < arg3:
        revert with 0, 17
    _nft_info[arg1][7][msg.sender].field_0 -= arg3
    if _nft_info[arg1][7][_nft_info[arg1][arg2].field_2048].field_0 > !arg3:
        revert with 0, 17
    _nft_info[arg1][7][_nft_info[arg1][arg2].field_2048].field_0 += arg3
    emit 0x6d7c707b: arg3, arg1, msg.sender, _nft_info[arg1][arg2].field_2048
    _nft_info[arg1][arg2].field_2816 = 0
    call msg.sender with:
       value arg4 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Failed to tr', 0
    stor0 = 1
}



}
