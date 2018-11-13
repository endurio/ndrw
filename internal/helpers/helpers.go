// Copyright (c) 2016 The btcsuite developers
// Use of this source code is governed by an ISC
// license that can be found in the LICENSE file.

// Package helpers provides convenience functions to simplify wallet code.  This
// package is intended for internal wallet use only.
package helpers

import (
	"github.com/btcsuite/btcd/wire"
	"github.com/btcsuite/btcutil"
	"github.com/btcsuite/btcwallet/waddrmgr"
)

// ReceivingAccount ...
func ReceivingAccount(account uint32) uint32 {
	if account == waddrmgr.ImportedAddrAccount {
		return 0
	}
	return account
}

// GetSingleToken returns
func GetSingleToken(outputs []*wire.TxOut) (token wire.TokenIdentity, ok bool) {
	for i, txOut := range outputs {
		if i == 0 {
			token = txOut.TokenID()
		} else if token != txOut.TokenID() {
			return wire.STB, false
		}
	}
	return token, true
}

// SumOutputValues sums up the list of TxOuts and returns an Amount.
func SumOutputValues(outputs []*wire.TxOut) (totalOutput btcutil.Amount) {
	for _, txOut := range outputs {
		totalOutput += btcutil.Amount(txOut.Value)
	}
	return totalOutput
}

// SumOutputSerializeSizes sums up the serialized size of the supplied outputs.
func SumOutputSerializeSizes(outputs []*wire.TxOut) (serializeSize int) {
	for _, txOut := range outputs {
		serializeSize += txOut.SerializeSize()
	}
	return serializeSize
}
